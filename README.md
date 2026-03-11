# 3010-proj-grp-5
Software Construction group project repository
Phase 3
1. We took a snapshot, called phase 3 task 1-start.
2. We discussed languages and we will be using python, pgsql, html, apache. 
3. Lori completed a pg_dumpall, not without problems that we worked through together.  When we checked our dump file we did not see our data in there. We tried a few different versions of the command.  What we learned by using sudo -u postgres pg_dump seng3010 > ~/student/3010-proj-grp-5/assignment/Phase3_temp/seng3010_backup.sql is that we got a dump of our database. After speaking with you, we are letting you know that we have two pg_dumpall files in our home/student/3010-proj-grp-5/assignment/Phase3-temp/ path:  phase3-03062026.sql is the whole database dump.  seng3010-backup.sql is only our seng3010 database dump.
4. We decided on how to split up the steps to complete for phase 3 = Oscar : 4,8,7,11 . Lori : 1,9,3,5. Justin: 12,2,6,10.
5. We already have all the data loaded from the zip file on our SQLVM. Lori created the structure for the course table and we ran the code to create the table in our 3/4 meeting. In part two, we created a temp table dept_courses_info using postgresql to hold the .csv data.  Lori created the insert into/select from statements and we realized that some of the sizes of the columns had to be altered.  We used the alter column statements to adjust the gu, active, and description columns.  We reviewed the structure of our target table by executing \d dept_courses_info. I stated that the sizes must have changed on the gu and active columns because there were spaces in the columns.  I stated that we may need to trim those columns to use the data at some point as the spaces may cause issues going forward, just so we remember.  I checked the table for duplicates using the count(*) from/group by/having>1 code and found none.  I then added the primary key to this table, course_number, in which we concatenated prefix||space||number. We reviewed the table when we were done using select * from /limit 10.
6.
7.
8.
9. Lori created the phase 3 branch in GitHub and started updating the readme file.

