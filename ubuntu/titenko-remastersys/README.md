### Hi there 👋

The Titenko-Linux ISOs are created using Titenko-Remastersys. Titenko-Remastersys is also pre-installed in Titenko-Linux so that anyone can use it to create their own customized Titenko-Linux ISO.

In order to create your own custom ISO, you can follow these steps:

1.  ## Install Titenko-Linux
    
    It is preferable to do this on a “clean test machine” designated for this process.
    
2.  ## Copy all of your customizations to the “default user profile”
    
    In order to have the customizations you have made for the current user act as the defaults for new users, you need to copy the current user’s files to the “new user profile template folder” located at /etc/skel.
    
    To copy all the configuration and settings you can use the `titenko-remastersys-skelcopy` Terminal ***** command. You need to provide the username that you want to serve as the basis for the “default user profile”:
    
    -   _**Terminal * command:**_
    
    ```
    sudo titenko-remastersys-skelcopy <username>
    ```
    
    If you need additional items from a user’s home directory (such as training materials or other resources) copied to the default user profile folder, you will need to copy them manually.
    
    You can confirm the default profile is set correctly by creating a new user onyour computer and then logging in as that new user. Everything should be correct (including all settings such as default user background, etc.). If not, you need to adjust the default user profile more and try again.
    
3.  ## Configure Titenko-Remastersys
    
    The Remastersys configuration settings are stored in the following file:
    
    ```
    /etc/titenko-remastersys/titenko-remastersys.conf
    ```
    
    Notable things you may want to edit in this file include:
    
    -   **LIVECDLABEL=** Here you list the CD Label Name for the ISO.
    -   **CUSTOMISO=** This is the created ISO filename.
    -   **INCLUDES=** Here you can specify any additional folder you want to include in the remastered ISO. An example would be /home/data.
    
4.  ## Run Titenko-Remastersys
    
    Once you are ready, run this command from the Terminal ***** to start Titenko-Remastersys:
    
    -   _**Terminal command:**_
    
    ```
    sudo titenko-remastersys dist
    ```
    
5.  ## Finished
    
    After the above command completes, your ISO (and a md5 checksum for it) will be ready in the `/home/titenko-remastersys/titenko-remastersys` folder. Install it on a USB drive and give it a test!
