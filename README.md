# 3010-proj-grp-5
Software Construction group project repository
take snapshot
apache-to install apache we followed the directions in the documentation on our web vm 
  $sudo apt install apache2
  also, installed and enabled cgi-bin using command $sudo a2enmod cgid
take snapshot
github
  git --version 
  git version showing 2.25.1
take snapshot
postgres-from the documentation in Canvas we used command :
  sudo apt update
  sudo apt install postgresql postgresql-contrib
  check version by running psql --version 
  version is 12.22
ufw - enabled
HTML -
  to provide the HTML we created the file in Notepad++ and moved the file to github in our project.  Then we created an empty html file on our webvm in Apache path /var/www/html as seng3010.html.and copied our html file into it. We needed to modify permissions and owners using chmod(755 to give rwx permission to user on the path) and chown(make it student as owner). We had to change the owner back to root for Apache to show the webpage on firefox by using the url http://localhost/seng3010.html. We edited the file we copied into seng3010.html to remove the professors so that we also had a webpage with no data in the columns.  
  
