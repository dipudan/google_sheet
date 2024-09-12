import httplib2
import os

from apiclient import discovery
from google.oauth2 import service_account

try:
    scopes = ["https://www.googleapis.com/auth/drive", "https://www.googleapis.com/auth/drive.file",
              "https://www.googleapis.com/auth/spreadsheets"]
    secret_file = os.path.join(os.getcwd(), 'output.json')

    spreadsheet_id = '1fD6TDLS0h91pX88oPd9WsutLgqC_J8OpAPCfmSb4cW0'
    range_name = 'Sheet1!A:A'

    credentials = service_account.Credentials.from_service_account_file(secret_file, scopes=scopes)
    service = discovery.build('sheets', 'v4', credentials=credentials)

    values = [['Dev_Fetch', 'PROD', '0.304929', '2024-08-27']]
    data = {'values': values}

    service.spreadsheets().values().append(spreadsheetId=spreadsheet_id, body=data, range=range_name,
                                           valueInputOption='USER_ENTERED').execute()

except OSError as e:
    print(e)