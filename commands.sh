# create db folder
sudo mkdir /data
sudo mkdir /data/db

# terminal 01: start/change mongodb database folder
sudo mongod --dbpath "/data/db"

# terminal 02: enter in database
mongo

# show databases
show dbs

# use database
use <db_name>

# insert one
# we can ommit "" in keys
# we must use "" for string values
# we mustn't using "" for number values
db.<collection>.insertOne({name: "<some_string>", price: <some_number>})
db.<collection>.insertOne({name: "<sthg>", details: {description: "<sthg>"})

# fild all documents in a collection
db.<collection>.find()
db.<collection>.find().pretty()