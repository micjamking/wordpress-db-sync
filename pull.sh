# Comment out lines 2-3 if not using git to sync database.
echo 'Getting latest updates from git...'; 
git pull

# Update lines 7-8 with your database name, user name, and password
echo 'Updating our MySQL database...';
mysql --user='user' --password='password' db_name < ./db/data.sql
mysql --user='user' --password='password' db_name < ./db/update.sql

echo 'Update complete!';
