# on the Linode instance, create the folder and its parents, if they don't exist
mkdir -pv /var/www/site1.com/src
mkdir -pv /var/www/site1.com/database/data
mkdir -pv /var/www/site1.com/database/initdb.d
# from the local computer, copy the zip file and database.sql to the Linode instance
scp local/site1.com/database.sql your_username@192.0.2.0:/var/www/site1.com/database/initdb.d
scp local/site1.com/site.zip your_username@192.0.2.0:/var/www/site1.com
# on the Linode instance, decompress the file
cd /var/www/site1.com/
apt-install unzip
unzip site.zip -d src/
rm site.zip