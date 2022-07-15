# Rose-Buzz
Rose is a framework for LinuX used to develop Python apps fast. It consists of a program used to upload a Project to your drive and an App witch takes the project from drive and runs it on your phone. 
## Rose Buzz's App
It is used to run your project. 

To use it you need to connect in some way the computer to your phone

Go to your drive, upload the main, and copy the sharing link using the permissions Public and Editor.

The link will be in the form: `https://drive.google.com/file/d/  TheFileID  /view?usp=sharing`

Now get the file id and go to `https://docs.google.com/uc?export=download&id= TheFileID`

You will see a page that says that the antivirus can't scan the file. If not check if the extension is .py or add a lot of text in it to reach 20 MB.

Now in your browser go to inspect elements (Ctrl+Shift+C in Opera) and copy the link of the Continue Anyway Button

On your phone, after enabling unknown sources, download the .apk and run it.

Insert the link you gat from the passages above and press Play

## The `rosebuzz`  command
It is used to upload your project on the drive

!!! Currently Rose supports only one main.py file !!!

To install the command download the .sh file, remove the extension and run:

    sudo mv path/to/the/file ~/bin/
    sudo chmod 775 ~/bin/rosebuzz

Now run:
    rosebuzz install TheFileID
