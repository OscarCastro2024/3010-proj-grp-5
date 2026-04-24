# 3010-proj-grp-5 - Phase4 PartB
Please note:  This is a reminder that based on what you discussed with Oscar in class, 4/22/26, we did the auto postgresql start in part B and that we could get points back for Part A.
Please use link:  http://192.168.56.10/Table2_rev_phase3.htm.  You can click on FACULTY tab or FTE tab to see the contents.
8.Add the FTE: Lori created the FTE functions to do the calculation for each category and modified our original faculty.py file. Justin helped create the FTE class within the existing faculty.py program from Phase 3.  Oscar modified the Table2_rev_phase3.htm from Phase 3 to work with the faculty.py program from phase 3.  We worked together to tweak both objects to show the required tab for FTE in the correct format per assignment. We went one step extra and provided each section as a screen with a search box you can use for faculty name, year, and semester.
9. Docker container created using "Dockerfile" - created container and without reference to any other containers, installed and auto start postgreSQL. 
UPDATED:  to run the container initially, we used the Command  sudo docker run -it --entrypoint /bin/bash grp5-proj4:latest.  This ignores our ENTRYPOINT /bin/sleep 180 to start up postgresql.  Once you run this command, you only need to run sudo docker start pgsql_container command.
Command to run within our container:  to execute running container, we used sudo docker exec -it pgsql_container /bin/bash
10. pg restore of DB: (Oscar)
    -make sure PSQL is connected
    -give permission to webuser1
    -create the database in the container using a directory we created called workspace
    -import latest pg_dumpall file into that database
11. Check to make sure everything up to Phase 3 (Faculty Sort and Search) continues to work with the new FTE code.
    We used link http://192.168.56.10/Table2_rev_phase3.htm.  We clicked on FACULTY tab (did search and sort) and FTE tab to see the contents.  Faculty        search and sort still works along with the new tabs.
12. Lori created this branch in Part A, added the new faculty_calc.py and the new Table2_rev_phase3.htm to this folder. All team members updated these two     objects while we were working to get the FTE tab to work.
13. Oscar exported the DB structure and data using pg_dumpall (db config file we changed, new python object and new html object).
    Using the command 
14. webpages - updated this folder with new faculty.py and Table2_rev_phase3.htm objects.
15. All files pushed from our webvm project directory to the phase 4 branch of your Github project page and shared the link via email to instructor.

# 3010-proj-grp-5 - Phase4 PartA
Software Construction group project repository
1. Oscar completed this step during the meeting with Lori and Justin.  Shut down, snapshot.
2. Discussed what columns of what tables we need for the formula for FTE later in the project.
3. Oscar and Lori completed pgdump in our meeting. 
4. Oscar, Justin and Lori discussed who will do which parts and make sure that we all understood how to do all the parts of Part A.  Lori typed in the commands to install docker and ran the docker run hello-world command to make sure docker was installed correctly.
5,6,7: Lori created the Basic version of the Dockerfile using the example from class and class lecture notes. Friday night, Oscar and Lori worked with the Dockerfile to add the apache and postgresql install commands in the Dockerfile.  Our Dockerfile is located in our webpages folder under phase4.  We used the entrypoint /bin/sleep180 like in the example.  We built our image using the sudo docker build -t grp5-prj4 .  We checked that the image was created using the command sudo docker image ls.  Then we ran our container using command sudo run -d grp5-prj4 but we had an error to correct.  AI directed us to run the command sudo docker run --rm -it --entrypoint /bin/bash grp5-proj4:latest.  This command will run and remove container when finished, interactively like a terminal, and adding the --entrypoint bypasses our sleep 180 that we had coded in the Dockerfile so we didn't have to wait.  We were looking for the root@ to confirm that we had postgresql running automatically and we got that, also  verified with command psl --version and we got psql (PostgreSQL) 16.13 (Ubuntu16.13-0ubuntu0.24.04.1).
Oscar checked to make sure our webpage still worked, and we were able to display the page and sort/search like before, so 'nothing broken'.
Lori updated readme while Oscar copied Dockerfile in the webpages folder and loaded the pgdump file to folder Phase4_dumpalls.
Tarfile-webvm under home/student/3010-proj-grp-5/assignment zip folder.
Dockerfile-webvm under home/student/3010-proj-grp-5/assignment/webpages.
4/17/26-Lori updated the sqlvm IP address to postgres to use with container in github only.
dumpall - sqlvm under home/student/3010-proj-grp-5/assignment/phase4_dumpalls.
NOTE: Since we weren't sure about what should be in the tar file for this part of the assignment.  We didn't do much on the webvm except create the Dockerfile, so when we did the tar file we moved the Dockerfile to our SQLVM and then tarred that.  When we do the final tar, to be sure, should we be including the webvm or the sqlvm again?
Thank you!
