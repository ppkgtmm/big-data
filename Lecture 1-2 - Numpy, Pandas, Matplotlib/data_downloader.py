'''
    data file downloader from gdrive
    assumptions
        - gdown, python-dotenv package installed
'''
import os
import gdown
from dotenv import load_dotenv

load_dotenv()

def get_gdrive_url(file_id):
    template_url = 'https://drive.google.com/uc?id='
    return f"{template_url}{file_id}"
    

flights_src = os.getenv('FLIGHTS_SRC')
flights_des = os.getenv('FLIGHTS_OUT', 'flights.csv')

air_src = os.getenv('AIRLINES_SRC')
air_des = os.getenv('AIRLINES_OUT', 'airlines.csv')

if(not flights_src or not air_src):
    raise Exception('GDrive file id for both airlines and flights data must be provided')

gdown.download(get_gdrive_url(flights_src), flights_des, quiet=False)
gdown.download(get_gdrive_url(air_src), air_des, quiet=False)
