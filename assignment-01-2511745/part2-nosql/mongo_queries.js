
// OP1: insertMany
db.products.insertMany([
{name:"iPhone 15",category:"Electronics",price:80000},
{name:"Nike Running Shoes",category:"Clothing",price:5000},
{name:"Organic Milk",category:"Groceries",price:60,expiry_date:new Date("2024-12-30")}
]);

// OP2
db.products.find({
category:"Electronics",
price:{$gt:20000}
});

// OP3
db.products.find({
category:"Groceries",
expiry_date:{$lt:new Date("2025-01-01")}
});

// OP4
db.products.updateOne(
{name:"iPhone 15"},
{$set:{discount_percent:10}}
);

// OP5
db.products.createIndex({category:1});
// OP1: insertMany
db.products.insertMany([
{name:"iPhone 15",category:"Electronics",price:80000},
{name:"Nike Running Shoes",category:"Clothing",price:5000},
{name:"Organic Milk",category:"Groceries",price:60,expiry_date:new Date("2024-12-30")}
]);

// OP2
db.products.find({
category:"Electronics",
price:{$gt:20000}
});

// OP3
db.products.find({
category:"Groceries",
expiry_date:{$lt:new Date("2025-01-01")}
});

// OP4
db.products.updateOne(
{name:"iPhone 15"},
{$set:{discount_percent:10}}
);

// OP5
db.products.createIndex({category:1});