git submodule init
git submodule update

cd executor
sh build-docker-image.sh
cd ..

cd controller
sh build_image.sh
cd ..

cd setup/load-balancer
sh build_image.sh
cd ../..

cd setup
sudo docker-compose down
sudo docker-compose up -d
cd ..