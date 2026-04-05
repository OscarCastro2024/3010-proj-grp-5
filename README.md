# 3010-proj-grp-5
Software Construction group project repository
Phase 3
1. We took a snapshot, called phase 3 task 1-start.
2. We discussed languages and we will be using python, pgsql, html, apache. 
3. Lori completed a pg_dumpall, not without problems that we worked through together.  When we checked our dump file we did not see our data in there. We tried a few different versions of the command.  What we learned by using sudo -u postgres pg_dump seng3010 > ~/student/3010-proj-grp-5/assignment/Phase3_temp/seng3010_backup.sql is that we got a dump of our database. After speaking with you, we are letting you know that we have two pg_dumpall files in our home/student/3010-proj-grp-5/assignment/Phase3-temp/ path:  phase3-03062026.sql is the whole database dump.  seng3010-backup.sql is only our seng3010 database dump.
4. We decided on how to split up the steps to complete for phase 3 = Oscar : 4,8,7,11 . Lori : 1,9,3,5. Justin: 12,2,6,10.
5. We already have all the data loaded from the zip file on our SQLVM. Lori created the structure for the course table and we ran the code to create the table in our 3/4 meeting. In part two after creating a snapshot, we created a temp table dept_courses_info using postgresql to hold the .csv data.  Lori created the insert into/select from statements and we realized that some of the sizes of the columns had to be altered.  We used the alter column statements to adjust the gu, active, and description columns.  We reviewed the structure of our target table by executing \d dept_courses_info. I stated that the sizes must have changed on the gu and active columns because there were spaces in the columns.  I stated that we may need to trim those columns to use the data at some point as the spaces may cause issues going forward, just so we remember.  I checked the table for duplicates using the count(*) from/group by/having>1 code and found none.  I then added the primary key to this table, course_number, in which we concatenated prefix||space||number. We reviewed the table when we were done using select * from /limit 10.
6. We all worked together to complete this task.  We needed to add columns lname, fname, and mi to our faculty table because we originally concatenated the names based on the screen picture in our assignment. We updated the faculty table with these fields using id as the key. We reviewed the data to confirm it was correctly loaded with the matching names. We created the python script with the search ability, created object to store all the attributes of faculty and a member and the coordinating html object and were able to see the html screen correctly displayed.
7. We added the sort to the faculty tab by name and rank with its own method and display the sorted output. This is the point where we tried to test and realized we could not move the html file to the webvm/apache because the vm was broken.  Without being able to put our html on that vm, we could not test our code.  Comparing our html and python code in AI, we attempted to confirm that logically it works together. That's where we stopped.
8. Oscar added all the tabs in the screen from our phase 3 assignment even though only the faculty and courses tab for this assignment.
9. Lori created the phase 3 branch in GitHub and started updating the readme file.
10. We worked together to complete the dumpall for the project.
11. Completed copying all the web development files to main project in webpages folder.
12. Provided a link via email to GitHub repository.
    Created the tar file.

    Hopefully we can get our WEBVM fixed so that we can test and view our webpage.

POST CRASH AND RESTORE:
-----------------------
6, 7, and 8 revisited:
Monday 3/30- We all worked together to make sure all of our files had been restored and Oscar cloned the Git Hub repository to copy our new py and html file that we had been working on revising/troubleshooting while our vm was down. We executed the htm file using URL http://192.168.56.10/Table2_rev_phase3.htm in firefox.  Still experiencing issues, we spent the rest of our meeting troubleshooting and tweaking to get it to execute the methods but we kept getting internal server errors of different codes.  We felt like we were making progress but not enough forward progress to at least see our data returned.  Called it a night to review code and regroup on Tuesday.
Tuesday 3/31 - Same story.  Lori had revised the py earlier with help from AI agent (copilot) and pushed it to our GitHub repository. When we met, Oscar restored the new version to our webvm from our repository. We still could not execute correctly. Justin and Lori worked through the issues one by one using another AI agent (Claude), compared notes, and collectively made a few corrections to get it to finally execute our methods! We got in touch with Oscar to tell him the good news, did more testing, and we were all satisfied with the results.
These are the issues we discovered:
We needed to install psycopg2.
We corrected parameter orders in py.  The order was tripping us up for our displays.
We got tripped up on a column name reference and ended up changing another column name reference in the end for display purposes only - was not causing error, just not what we wanted visually.
Justin and I showed Oscar how to test the py script right from the terminal.  It made it easier for Justin and I to isolate just the py object for finding errors.  If that was mentioned somewhere we totally missed that and it was very helpful. This is also how we found out we were missing the psycopg2 install. We installed that, twice. We had a broken dependency, something had been interrupted in a previous install that we had to fix first (dpkg), pip3 install was installed in a user directory that Apache couldn't access.  
We actually did need the port=5432.  We originally added it as '80' when we were troubleshooting (grasping at straws) on Monday. Without it, it was trying to connect to a local socket instead of the network.
We ran psql -h 192.168.56.30 -U webuser1 -d seng3010 -p 5432 to test connectivity and communication to the SQLVM.
We also corrected missing double quotes in the connection parameters. Connection credentials now solid.
We found we had a column name wrong in one of the select queries (mentioned earlier) and in turn, everywhere we referenced all the table columns in queries and class defs.
We made one more change to handle columns selected with no data.  We added 'or ""' to all the html.escapes so that when there was no data for the row in that column it would replace it with a blank.

URL: http://192.168.56.10/Table2_rev_phase3.htm
please click submit query to see the list.  Then do search and sort.
Thank you for reviewing!

