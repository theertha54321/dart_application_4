class Product{
  String name;
  double price;
  int quantity;

  Product({required this.name,required this.price,required this.quantity,});
  void restock(int amount){
    quantity=quantity+amount;
    print("Stock $quantity");
  }
  void sell(int amount){
    if(quantity>=amount){
      quantity-=amount;
      print(quantity);
    }
    else{
      print("Insufficient stock");
    }
  }
}
class Store{
  List<Product> mypro = [];

  
  void addProduct(Product product){
    mypro.add(product);
    print("Added product is ${product.name}");
  }
  void checkStock(String productName){
    for(int i=0;i<mypro.length;i++){
    if(productName==mypro[i].name){
      print("$productName : ${mypro[i].quantity}");
      break;
    }
    else{
      print("no product");
    }
}
  }
}
void main(){

  Store s = Store();
  s.addProduct(Product(name: "Laptop", price: 50000, quantity: 5));
  s.addProduct(Product(name: "Headphone", price: 10000, quantity: 4));

  s.checkStock("Laptop");
}
