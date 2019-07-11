sudo service mmdvmhost stop
sudo pkill MMDVMHost
cd /tmp
sudo rm usb1414.bin
#sudo rm *.*.bin.*
sudo wget http://www.taozhengbo.com/usb1414.bin
sudo chmod 664 usb1414.bin
sleep 2
sudo pkill MMDVMHost
sudo pkill mmdvmhost.service
sudo stm32flash -v -w usb1414.bin -g 0x0 -S 0x08002000 -R -i 20,-21,21:-20,21 /dev/ttyAMA0
echo "Rebooting Pi"
sleep 30
sudo reboot