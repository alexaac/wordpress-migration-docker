# test connection to the database
docker exec -it wp_myblog_db mysql -u$DB_USER --password=$DB_PASSWORD $DB_NAME
# backup
docker exec wp_blogmap_db /usr/bin/mysqldump -u root --password=$DB_PASSWORD $DB_NAME > backup.sql
# restore
cat backup.sql | docker exec -i wp_blogmap_db /usr/bin/mysql -u$DB_USER --password=$DB_PASSWORD $DB_NAME