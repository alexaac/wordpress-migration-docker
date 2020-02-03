# stop nginx, certbot conflicts with nginx on port 80
sudo service nginx stop
# install certbot
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install certbot
# create the certificate
certbot certonly --standalone --preferred-challenges http --email admin@site1.com --noninteractive --quiet --agree-tos -d site1.com -d www.site1.com  --expand
# list the certificates
sudo certbot certificates
# test the renewal script
sudo certbot renew --dry run
# start nginx
sudo service nginx start n