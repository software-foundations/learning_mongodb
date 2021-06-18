show dbs

use shop

# we can ommin "" in key, but cannot in value when it should be string
# db refers to shop
# products refers to a collection

db.products.insertOne({name: "A Book", price: 12.99})


# search for all documents in products collection
db.products.find()
db.products.find().pretty()

db.products.insertOne({name: "A T-Shirt", price: 29.99})