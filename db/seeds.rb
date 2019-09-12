Product.create!([
  {name: "bread", price: "3.0", description: "food", inventory: true, supplier_id: 1},
  {name: "fruit", price: "3.0", description: "peach", inventory: true, supplier_id: 1},
  {name: "fruit", price: "10.0", description: "coconut", inventory: true, supplier_id: 1},
  {name: "fruit", price: "8.0", description: "coconut", inventory: true, supplier_id: 1},
  {name: "juice", price: "10.0", description: "cranberry", inventory: true, supplier_id: 2},
  {name: "juice", price: "3.0", description: "apple", inventory: true, supplier_id: 2},
  {name: "juice", price: "6.0", description: "pear", inventory: true, supplier_id: 2},
  {name: "juice", price: "2.0", description: "pineapple", inventory: true, supplier_id: 2},
  {name: "meat", price: "9.0", description: "food", inventory: true, supplier_id: 1}
])
Supplier.create!([
  {name: "Safeway", email: "safeway@gmail.com", phone_number: "1231231"},
  {name: "Amazon", email: "amazon@gmail.com", phone_number: "3213123"}
])
User.create!([
  {name: "test", email: "test@gmail.com", password_digest: "$2a$12$fUOJ9.h9Ec5C.PGaYv2UMODtKLFrOgN2aySkaBsjmk.xChagotbIK"}
])
