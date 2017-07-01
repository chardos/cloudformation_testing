# Copy the host name into a variable, replace it in the jenkins config file
HOST_NAME="$(curl -s http://169.254.169.254/latest/meta-data/public-hostname)"
sudo sed -i "s/SERVER_NAME/${HOST_NAME}/" /etc/apache2/sites-available/jenkins.conf


sudo sed -i ’s/Server/${curl -s http://169.254.169.254/latest/meta-data/public-hostname}/‘ jenkins.conf
curl -s http://169.254.169.254/latest/meta-data/public-hostname


HOST_NAME="$(ls -1)"
echo "${OUTPUT}"
