#!/usr/bin/python3

import cgi

form = cgi.FieldStorage()

user_input = form.getvalue('input1')

if form.getvalue('sort_asc'):
  sortasc = "ON"
else:
  sortasc = "OFF"

print("Content-Type: text/html<br>\n")

print("Sort option:" + sortasc)

if (len(user_input) > 1):
  print("User input: " + user_input)
else:
  print("You must enter more than 1 character")
