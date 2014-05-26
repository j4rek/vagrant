echo "configurando vagrant..."
vagrant init "ewok_dev"

echo "generando directorio de trabajo ./www"
mkdir www

echo "Aplicando archivo de configuración..."
rm -f ./Vagrantfile
cp ./install/Vagrantfile_dev ./Vagrantfile
cp ./install/init_services.sh ./
cp ./install/index.php ./www/

vi Vagrantfile

echo "iniciando servicio vagrant..."
vagrant --provision up

