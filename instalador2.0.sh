 #!/bin/bash

echo Atualizando repositórios..
if ! sudo apt-get update
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

echo "Atualizando pacotes já instalados"
if ! sudo apt-get dist-upgrade -y
then
    echo "Não foi possível atualizar pacotes."
    exit 1
fi
echo "Atualização de pacotes feita com sucesso"



sudo apt-get install gimp -y
sudo apt-get install gdebi
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb
sudo apt-get install rar -y
sudo add-apt-repository ppa:damien-moore/codeblocks-stable
sudo apt-get install codeblocks
sudo apt-get install default-jdk
wget -c http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/oxygen/2/eclipse-jee-oxygen-2-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz
sudo tar -zxvf eclipse.tar.gz -C /opt/
sudo wget https://dl2.macupdate.com/images/icons128/11662.png -O /opt/eclipse/eclipse.png
echo -e '[Desktop Entry]\n Version=1.0\n Name=eclipse\n Exec=/opt/eclipse/eclipse\n Icon=/opt/eclipse/eclipse.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/eclipse.desktop
sudo chmod +x /usr/share/applications/eclipse.desktop
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get install spotify-client
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y
sudo apt-get update
sudo apt-get install ubuntu-make -y
sudo umake ide idea-ultimate 
sudo umake ide pycharm 
sudo umake android android-studio
sudo apt-get install android-tools-adb 
sudo apt-get install android-tools-adb 
ufw enable
clear
echo Programas instalados.
echo  .########..########.########....####.##....##.########
echo  .##.....##.##..........##........##..###...##.##...... 
echo  .##.....##.##..........##........##..####..##.##......
echo  .########..######......##........##..##.##.##.######..
echo  .##........##..........##........##..##..####.##......
echo  .##........##..........##........##..##...###.##......
echo  .##........########....##.......####.##....##.##......
echo Pressione Enter para Continuar
read #pausa
exit
