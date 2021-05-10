echo "package master - update"
sudo apt-get update && sudo apt-get upgrade -y
echo "start downloading tools"
sudo apt-get install git php python ngrok snapd
sudo snap install ngrok
