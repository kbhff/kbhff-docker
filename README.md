# KBHFF-DEV

This is a repo for the KBHFF development environment which allows you to run a containerised version of the production environment for you convenient local development.

For ease of use, Apache will output log files to a logs folder, which will be created when the container receives the first request. The database will be running on the data already included in the db folder.


In order to use this setup please follow these steps:


1: Enable host networking in your Docker.desktop
You can find this option under Settings -> Resources -> Network


2: Clone the KBHFF repos from Github to your local computer. You will find it here:
https://github.com/kbhff/kbhff_dk


3: Copy the dummy connect_db.php file from ./conf into kbhff_dk/theme/config/

It contains database login info that matches the credentials in the docker setup and allows you to run directly off of the data already included in this repos.

For testing all features, including mail sending and payments, contact it@kbhff.dk to obtain test credentials for mails and payments, and copy the connect_mail.php and connect_payment.php files to kbhff_dk/theme/config/ as well. Then update the credentials in those files with the valid test credentials.


4: Then use the following command to start container stack:
PROJECT_PATH=/#PATH-TO-CLONED-REPOS#/kbhff_dk docker compose up -d


5: When the container has started, you should be able to connect to the database on 127.0.0.1:3306 using a standard database tool/viewer. Create a kbhff_dk database and import the dataset you find in conf/kbhff_dk.

This gives you a base dataset to start with, including a dummy user with valid login credentials:
dev@kbhff.dk / localpass


6: Go to http://kbhff.local in your browser and have fun contributing to something meaningful :-)

