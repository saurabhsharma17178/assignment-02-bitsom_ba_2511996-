// OP1: insertMany() – insert all 3 documents
db.products.insertMany([
  {
    product_id: 1,
    name: "Laptop",
    category: "Electronics",
    price: 55000
  },
  {
    product_id: 2,
    name: "T-Shirt",
    category: "Clothing",
    price: 1200
  },
  {
    product_id: 3,
    name: "Milk",
    category: "Groceries",
    price: 60,
    expiry_date: "2024-12-01"
  }
]);

// OP2: find Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: "2025-01-01" }
});

// OP4: updateOne – add discount_percent field
db.products.updateOne(
  { product_id: 1 },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex on category
db.products.createIndex({ category: 1 });
