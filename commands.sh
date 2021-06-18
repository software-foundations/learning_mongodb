# create db folder
sudo mkdir /data
sudo mkdir /data/db

# start/change mongodb database folder
sudo mongod --dbpath "/data/db"

# enter in database
mongo