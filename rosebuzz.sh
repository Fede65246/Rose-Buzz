#!/usr/bin/env python3

from pydrive2.auth import GoogleAuth
from pydrive2.drive import GoogleDrive
from sys import argv

gauth = GoogleAuth()

if len(argv)>1:
    if argv[1]=='install':
        print('Connecting to drive')
        gauth.LocalWebserverAuth()
        print('Saving credentials for later use')
        gauth.SaveCredentialsFile("mycreds.json")
        drive = GoogleDrive(gauth)
        print('Writing script')
        file1 = drive.CreateFile({'title': 'RoseBuzz.py'})
        file1.Upload() 
        fileID=file1['id']
        open('fileID', 'w').write(fileID)
    elif argv[1]=='help':
         print('''
         Usage: python3 rosebuzz.py [install/help/location]

Commands:
  install       Sets up the framework. See documentation
  help          Displays this information
  location      Used to specify the location of the script
  [None]        Uploads the script main.py in the current directory
  ''')
    else:
        print('Connecting to drive')
        gauth.LoadCredentialsFile("mycreds.json")
        drive = GoogleDrive(gauth)
        print('Writing script')
        file1 = drive.CreateFile({'id': open('fileID','r').read()})
        file1.SetContentString(open(argv[1],'r').read())
        file1.Upload() 
else:
    print('Connecting to drive')
    gauth.LoadCredentialsFile("mycreds.json")
    drive = GoogleDrive(gauth)
    print('Writing script')
    file1 = drive.CreateFile({'id': open('fileID','r').read()})
    file1.SetContentString(open('main.py','r').read())
    file1.Upload() 

print('Done')
