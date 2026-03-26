#!/usr/bin/python3

import cgi
import cgitb
import psycopg2
import html

#enables debugging in the html
cgitb.enable()

print('Content-Type: text/html<br>\n\n')

#Read form data-this is what comes back in the URL when the person enters a name and hits submit
form = cgi.FieldStorage()
lname = form.getvalue('lname') 

#connect to database

conn = psycopg2.connect(
  "dbname=seng3010, user=webuser1,password=student,host=192.168.56.10")
cursor = conn.cursor()

#Class(object)
class Faculty:
    def __init__(self,name,rank,email,phone,office,research_interest,remarks):
        self.name = name
        self.rank = rank
        self.email = email
        self.phone = phone
        self.office = office
        self.research_interest = research_interest
        self.remarks = remarks
class FacultyDirectory:
   def to_html_table(self,faculty_list):
       html = "<table> ... </table>"
       return html  
#Method
    def faculty_list(self):
        return {key: value for key, value in self.__dict__.items()}
    def faculty_sort(self,sort=""):
        cur = self.conn.cursor()
    def list_to_html(faculty_members):
        return "".join(f.to_html_row() for f in faculty_members)

    allowed_sorts = {
       "name": "lname",
       "rank": "rank"}

#cgi input
form = cgi.FieldStorage()

#fname = form.getvalue('fname')
lname = form.getvalue('lname')

#Create object
faculty = Faculty(name, rank, email, phone, office, research_interest, remarks)

#Output
print("<html><body>")
cursor.execute("select * from faculty where lname = %s", (lname,))
for key, value in self.faculty_list().items():
    print(f"{key}: {value}")
if sort in allowed_sorts:
query += f" ORDER BY {allowed_sorts[sort]}"
print(Faculty.list_to_html(faculty_members))
#print( fname + " " + mi "." + lname + "," + rank + " " + email + " " + phone + " " + office + " " + research_interest + " " + remarks)
print("</body></html>")
cursor.close()
conn.close


