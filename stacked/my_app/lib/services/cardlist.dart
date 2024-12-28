class Cards {
  var productdata = [
    {"namre": "shoes", "price": "123"},
    {"namre": "Tshirt", "price": "123"},
    {"namre": "Pant", "price": "123"},
    {"namre": "Bald", "price": "123"},
    {"namre": "Cap", "price": "123"},
    {"namre": "Sliper", "price": "123"}
  ];
  add(index) {
    productdata.add(productdata[index]);
  }
   remove(index) {
    productdata.remove(productdata[index]);
  }
}
