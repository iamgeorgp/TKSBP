import pandas as pd
import random
import os
from datetime import datetime, timedelta
import numpy as np
from PIL import Image, ImageDraw, ImageFont
from faker import Faker
from sqlalchemy import create_engine, MetaData, Table, Column, Integer, String, Date, ForeignKey
import logging

def generate_main_dfs(num_cities: int,                    
                       num_companies: int,                 
                       max_clients_per_company: int,    
                       max_contracts_per_client: int,   
                       num_managers: int,                 
                       years: int,                        
                       max_days_start_date: int,      
                       min_work_duration: int,              
                       max_work_duration: int,              
                       max_days_payment: int            
                       ) -> tuple:
    """
    Generates various DataFrames for companies, customers, services, contracts, and managers.
    """
    fake = Faker('ru_RU')

    available_cities = [fake.city() for _ in range(num_cities)]

    df_company = pd.DataFrame({"CompanyName": [fake.company() for _ in range(num_companies)]})
    df_company['CompanyID'] = range(1, num_companies + 1)

    df_clients = pd.DataFrame({
        'ClientID': range(1, num_companies * max_clients_per_company + 1),
        'CompanyID': sorted(random.choices(range(1, num_companies + 1), k=num_companies * max_clients_per_company))
    })
    df_clients['ClientName'] = [fake.name() for _ in range(len(df_clients))]
    df_clients['City'] = random.choices(available_cities, k=len(df_clients))
    df_clients['Address'] = [fake.street_address() for _ in range(len(df_clients))]
    df_clients['ClientPhone'] = [fake.phone_number() for _ in range(len(df_clients))]

    df_type_service = pd.read_csv('data/service_type_ex.csv', sep=';')

    df_service = pd.read_csv('data/service_ex.csv', sep=';')

    df_managers = pd.DataFrame({
        'ManagerID': range(1, num_managers + 1),
        'ManagerName': [fake.name() for _ in range(num_managers)],
        'ManagerPhone': [fake.phone_number() for _ in range(num_managers)]
    })

    df_contracts = pd.DataFrame()
    for client_id in df_clients['ClientID']:
        for _ in range(random.randint(1, max_contracts_per_client)):
            contract = {
                'ClientID': client_id,
                'TypeServiceID': random.randint(1, len(df_type_service)),
                'ServiceID': random.randint(1, len(df_service)),
                'SigningDate': fake.date_time_between(start_date='-2y', end_date='now'),
                'StartDate': fake.date_time_between(start_date='now', end_date='+2y'),
                'EndDate': fake.date_time_between(start_date='now', end_date='+2y'),
                'PayDate': fake.date_time_between(start_date='now', end_date='+2y'),
                'Price': round(random.uniform(550, 10000), -1),
                'ManagerID': random.randint(1, num_managers)
            }
            df_contracts = df_contracts.append(contract, ignore_index=True)
    df_contracts['ContractID'] = range(1, len(df_contracts) + 1)

    return df_company, df_clients, df_type_service, df_service, df_managers, df_contracts

def create_database(df_company: pd.DataFrame, 
                    df_clients: pd.DataFrame, 
                    df_type_service: pd.DataFrame, 
                    df_service: pd.DataFrame, 
                    df_managers: pd.DataFrame, 
                    df_contracts: pd.DataFrame) -> None:
    """
    Creates a SQLite database and populates it with information from the passed dataframes.
    """
    try:
        engine = create_engine('sqlite:///generated_data/EGA_database.db')

        metadata = MetaData()
        company = Table('Company', metadata,
                        Column('CompanyID', Integer, primary_key=True),
                        Column('CompanyName', String)
                        )

        clients = Table('Clients', metadata,
                        Column('ClientID', Integer, primary_key=True),
                        Column('CompanyID', Integer, ForeignKey('Company.CompanyID')),
                        Column('ClientName', String),
                        Column('City', String),
                        Column('Address', String),
                        Column('ClientPhone', String)
                        )

        type_service = Table('TypeService', metadata,
                             Column('TypeServiceID', Integer, primary_key=True),
                             Column('TypeServiceName', String)
                             )

        service = Table('Service', metadata,
                        Column('ServiceID', Integer, primary_key=True),
                        Column('TypeServiceID', Integer, ForeignKey('TypeService.TypeServiceID')),
                        Column('ServiceName', String)
                        )

        managers = Table('Managers', metadata,
                         Column('ManagerID', Integer, primary_key=True),
                         Column('ManagerName', String),
                         Column('ManagerPhone', String)
                         )

        contracts = Table('Contracts', metadata,
                          Column('ContractID', Integer, primary_key=True),
                          Column('ClientID', Integer, ForeignKey('Clients.ClientID')),
                          Column('TypeServiceID', Integer, ForeignKey('TypeService.TypeServiceID')),
                          Column('ServiceID', Integer, ForeignKey('Service.ServiceID')),
                          Column('SigningDate', Date),
                          Column('StartDate', Date),
                          Column('EndDate', Date),
                          Column('PayDate', Date),
                          Column('Price', Integer),
                          Column('ManagerID', Integer, ForeignKey('Managers.ManagerID'))
                          )

        metadata.create_all(engine)

        with engine.connect() as connection:
            transaction = connection.begin()
            try:
                df_company.to_sql('Company', con=engine, if_exists='append', index=False)
                df_clients.to_sql('Clients', con=engine, if_exists='append', index=False)
                df_type_service.to_sql('TypeService', con=engine, if_exists='append', index=False)
                df_service.to_sql('Service', con=engine, if_exists='append', index=False)
                df_managers.to_sql('Managers', con=engine, if_exists='append', index=False)
                df_contracts.to_sql('Contracts', con=engine, if_exists='append', index=False)

                transaction.commit()
            except Exception as e:
                transaction.rollback()
                logging.error(f"An error occurred during database creation: {e}")
                raise
    except Exception as e:
        logging.error(f"An error occurred during database creation: {e}")
        raise

def setup_logging():
    """
    Configure logging to write logs to a file and to the console.
    """
    log_format = '%(asctime)s - %(levelname)s - %(message)s'
    logging.basicConfig(filename='app.log', level=logging.DEBUG, format=log_format)
    console_handler = logging.StreamHandler()
    console_handler.setLevel(logging.INFO)
    console_formatter = logging.Formatter(log_format)
    console_handler.setFormatter(console_formatter)
    logging.getLogger().addHandler(console_handler)
