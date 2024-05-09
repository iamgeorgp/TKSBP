import pandas as pd
import os
from PIL import Image, ImageDraw, ImageFont


def generator_scan_contracts(df_contracts: pd.DataFrame, df_service: pd.DataFrame) -> None:
    """
    Generates contract scans based on transferred data from dataframes.

    Arguments:
    df_contracts (pd.DataFrame): A dataframe with information about contracts.
    df_service (pd.DataFrame): DataFrame with information about the services provided.

    Return Value:
    None: The function returns no values, it generates contract scans based on the data passed in.
    """
    # --- Main Paths ---
    script_directory = os.path.dirname(os.path.abspath(__file__)) # Script path
    data_directory = os.path.join(os.path.dirname(script_directory), "data")    # data folder path
    gen_data_directory = os.path.join(os.path.dirname(script_directory), "generated_data\scan_contract")  # generated_data folder path
    def create_contract(fields, index):
        # Loading a contract template
        contract_template = Image.open(f'{data_directory}\\default.jpg')  

        font = ImageFont.truetype('arial.ttf', size=10) 

        # Create an ImageDraw object for image editing
        draw = ImageDraw.Draw(contract_template)

        # Set the position and text for each field
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

        # Add the text of specified fields to the image
        for field, position in text_positions.items():
            if field in fields:
                draw.text(position, f"{field}: {fields[field]}", font=font, fill='black')

        # Saving the modified image to a file with a unique name for each line
        # Compression with quality parameter added
        contract_template.save(f'{gen_data_directory}\contract_{fields["Contract ID"]}.jpg', quality=80)  

    merged_df = pd.merge(df_contracts, df_service, on=['ServiceID', 'TypeServiceID'], how='inner')
    
    for index, row in merged_df.iterrows():
        # Create a dictionary for each line of the dataframe, which is passed to the create_contract function
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
            'Price': str(row['Price']) + '$'
        }
        create_contract(contract_fields, index)
