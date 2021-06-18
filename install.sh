###
# Official guide to ubuntu 20.04 LTS focal
# https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
###

###
# Step 01: instalation
###

# -> way 01
sudo apt install mongodb

# -> way 02
# https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-20-04-pt

# importing public key of the most recent estable version of MongoDB and adding it to the
# apt-key list (confiable list keys)
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

# check the confiavle list keys
apt-key list

# adding to to the APT
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

# update the packages local index of the server to APT find mongodb-org package
sudo apt update

# installing MongoDB
sudo apt install mongodb-org

###
# Step 2: Initializing the MongoDB server and testing
###

# -> way 01
# https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-20-04-pt

# initializing the mongoDB daemon server. The systemctl commands are to manage the daemon
sudo systemctl start mongod.service

# check mongoDB daemon status
sudo systemctl status mongod

# enable MongoDB in the initialization
sudo systemctl enable mongod

# testing if the database is operating
# connecting to the database server
mongo --eval 'db.runCommand({ connectionStatus: 1 })'

###
# Step 3: Manage MongoDB service
###

# -> way 1
# # https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-20-04-pt

# verifying the status server
sudo systemctl status mongod

# stop server
sudo systemctl stop mongod

# start server
sudo systemctl start mongod

# restart server
sudo systemctl restart mongod

# start(enable) server in initialization
sudo systemctl enable mongod

# stop(disable) server in initialization
sudo systemctl disable mongod
