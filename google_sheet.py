import httplib2
import os

from apiclient import discovery
from google.oauth2 import service_account
from jsondiff import diff
import json

try:
    scopes = ["https://www.googleapis.com/auth/drive", "https://www.googleapis.com/auth/drive.file",
              "https://www.googleapis.com/auth/spreadsheets"]
    secret_file = os.path.join(os.getcwd(), 'output.json')

    spreadsheet_id = os.environ.get('GOOGLE_SHEET_ID')
    sheet_content = os.environ.get("GOOGLE_SHEET_TOKEN")
    
    range_name = 'Sheet1!A:A'
    
    credentials = service_account.Credentials.from_service_account_file(secret_file, scopes=scopes)
    service = discovery.build('sheets', 'v4', credentials=credentials)
    
    values = [['Dev_Fetch', 'PROD', '0.304929', '2024-08-27']]
    data = {'values': values}
    
    service.spreadsheets().values().append(spreadsheetId=spreadsheet_id, body=data, range=range_name,
                                           valueInputOption='USER_ENTERED').execute()

except OSError as e:
    print(e)
    
