


apt install figlet -y
clear

figlet "3rr0r-404"

echo -e -n "\033[0;34m installing assetfinder.... "
apt install assetfinder -y

echo -e -n "\033[0;34m installing sublist3r.... "
apt install sublist3r -y

echo -e -n "\033[0;34m installing subfinder.... "
apt install subfinder -y

echo -e -n "\033[0;34m installing knockpy.... "
apt install knockpy -y 

echo -e -n "\033[0;34m installing dnsrecon.... "
apt install dnsrecon -y

echo -e -n "\033[0;34m installing amass.... "
apt install amass -y

echo -e -n "\033[0;34m installing httprobe.... "
apt install httprobe -y 

cd /bin
wget https://raw.githubusercontent.com/3rr0r-4O4/tamu/main/tamu

chmod +x tamu

tamu -h

wget https://raw.githubusercontent.com/3rr0r-4O4/d2ip/main/d2ip
chmod +x d2ip

figlet " installing done"
