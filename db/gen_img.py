import pandas as pd
import os
from PIL import Image, ImageDraw, ImageFont

def generate_contract_scans(contracts_df: pd.DataFrame, services_df: pd.DataFrame) -> None:
    """
    Generates contract scans based on data from DataFrames.

    Arguments:
    contracts_df (pd.DataFrame): DataFrame with contract information.
    services_df (pd.DataFrame): DataFrame with service information.

    Return Value:
    None: Generates contract scans based on the provided data.
    """
    # Main Paths
    script_directory = os.path.dirname(os.path.abspath(__file__)) 
    data_directory = os.path.join(os.path.dirname(script_directory), "data")
    gen_data_directory = os.path.join(os.path.dirname(script_directory), "generated_data", "scan_contract")

    def create_contract(fields, contract_id):
        # Load contract template
        contract_template = Image.open(os.path.join(data_directory, "default.jpg"))
        font = ImageFont.truetype('arial.ttf', size=10)
        draw = ImageDraw.Draw(contract_template)

        # Define text positions
        text_positions = {
            'Signing date': (400, 100),
            'Contract ID': (270, 130),
            'Service': (20, 300),
            'Company name': (20, 320),
            'Client name': (320, 400),
            'Phone number': (320, 420),
            'Start date': (320, 440),
            'End date': (320, 460),
            'Pay date': (320, 480),
            'Price': (320, 500)
        }

        # Add text to image
        for field, position in text_positions.items():
            if field in fields:
                draw.text(position, f"{field}: {fields[field]}", font=font, fill='black')

        # Save modified image
        contract_template.save(os.path.join(gen_data_directory, f"contract_{contract_id}.jpg"), quality=80)

    # Merge contract and service data
    merged_df = pd.merge(contracts_df, services_df, on=['ServiceID', 'TypeServiceID'], how='inner')
    
    # Iterate through merged data and generate contracts
    for index, row in merged_df.iterrows():
        contract_fields = {
            'Signing date': row['SigningDate'],
            'Contract ID': row['ContractID'],
            'Service': row['Service'],
            'Company name': row['CompanyName'],
            'Client name': row['ClientName'],
            'Phone number': row['ClientPhone'],
            'Start date': row['StartDate'],
            'End date': row['EndDate'],
            'Pay date': row['PayDate'],
            'Price': f"{row['Price']}$"
        }
        create_contract(contract_fields, row['ContractID'])
