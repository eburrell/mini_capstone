User.create!([
  {name: "test", email: "test@gmail.com", password_digest: "$2a$12$fUOJ9.h9Ec5C.PGaYv2UMODtKLFrOgN2aySkaBsjmk.xChagotbIK", admin: false},
  {name: "Michael", email: "michaeleburrell@gmail.com", password_digest: "$2a$12$uc8UgCdocJR4XWjC/GIc1eHmsn6ZkQaV1NklgncxYLluWaQ1OUDne", admin: true}
])
CartedProduct.create!([
  {user_id: 1, product_id: 1, quantity: 3, status: "carted", order_id: nil}
])
Category.create!([
  {name: "fruit"},
  {name: "beverage"}
])
Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "3.0", tax: "0.27", total: "3.27"},
  {user_id: 1, subtotal: "3.0", tax: "0.27", total: "3.27"},
  {user_id: 1, subtotal: "3.0", tax: "0.27", total: "3.27"}
])
Product.create!([
  {name: "coconut", price: "8.0", description: "fruit", inventory: true, supplier_id: 1},
  {name: "apple juice", price: "3.0", description: "beverage", inventory: true, supplier_id: 2},
  {name: "pear juice", price: "6.0", description: "beverage", inventory: true, supplier_id: 2},
  {name: "pineapple juice", price: "2.0", description: "beverage", inventory: true, supplier_id: 2},
  {name: "peach", price: "3.0", description: "fruit", inventory: true, supplier_id: 1},
  {name: "beef", price: "9.0", description: "meat", inventory: true, supplier_id: 1},
  {name: "mango", price: "10.0", description: "fruit", inventory: true, supplier_id: 1},
  {name: "cranberry juice", price: "10.0", description: "beverage", inventory: true, supplier_id: 2},
  {name: "wheat", price: "5.0", description: "bread", inventory: true, supplier_id: 1},
  {name: "sourdough", price: "5.0", description: "bread", inventory: true, supplier_id: 2}
])
ProductCategory.create!([
  {product_id: 2, category_id: 1},
  {product_id: 6, category_id: 1}
])
Supplier.create!([
  {name: "Safeway", email: "safeway@gmail.com", phone_number: "1231231"},
  {name: "Amazon", email: "amazon@gmail.com", phone_number: "3213123"}
])

