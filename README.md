# java-json-to-mysql

1x2network - interview task 

 

Overview: 

Create a Java Web Application that can insert data into a mysql database from a JSON file containing betting summary data. Create a page to search and filter the data presented using JSP, React or Angular if you prefer. 
You can use any Java Application Server you want to do this ie. GlassFish, Tomcat and Resin. 

 
Steps Required: 

Install mySQL on your local machine and a Java app server of your choice. 
Create a database table to store the data from the JSON data. Please index fields you think will need indexing to optimise select queries if this table was to grow into the millions of records. 
Write either a .jsp or Java class to read the JSON file and insert it into the database table you created in the previous step. 
Write a page that allows you to search this table with filters based on the following fields; game,clientid,date. 