# 3010-proj-grp-5
Software Construction group project repository

----------

**Things that we decided to download in our vm's**
Apache 
- take a snapshot of the web vm
- open it
- type in your terminal:  sudo apt install apache2
  
then we also decided to install, enable cgi-bun so:
- in the same web vm
- type this in the terminal:  $sudo a2enmod cgid

Git installment 
- take snapshot of sql-vm
- open it
  
open terminal and type 
- sudo apt update
- sudo apt install git -y
- to verify the version: git --version
- Make sure to make at least version 2.25.1

Postgresql installment 
-go to sql vm 
-take snapshot 
- open it and open terminal
- type : sudo apt update
- then sudo apt install postgresql postgresql-contrib
- check version psql --version
- make sure you have at least version 12.22

postgresql client  installment from the configure pgsql file 
after you completed most of the configure psql file found under modules -> phase2
- go to the web vm, and take a snapshot
- open it and open the terminal
- type:sudo apt install postgresql-client
  
HTML - part of the phase 2 
- to provide the HTML we created the file in Notepad++ and moved the file to github in our project.
- Then we created an empty html file on our webvm in Apache path /var/www/html as seng3010.html.and copied our html file into it.
- We needed to modify permissions and owners using chmod(755 to give rwx permission to user on the path) and chown(make it student as owner).
-  We had to change the owner back to root for Apache to show the webpage on firefox by using the url http://localhost/seng3010.html.
-  We edited the file we copied into seng3010.html to remove the professors so that we also had a webpage with no data in the columns.  
  
