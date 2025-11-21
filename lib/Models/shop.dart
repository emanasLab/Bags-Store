import 'product.dart';
////////shop structure

//home products list
final List<Product> _shop = [
  Product(
    name: 'Polene Bag',
    description:
        'description description description description description description description',
    price: 250.0,
    // image: "lib/Photos/Cymemini.jpeg"
  ),
  Product(
    name: 'Cymemini Bag',
    description:
        'description description description description description description description',
    price: 300.0,
    // image: "lib/Photos/Cymemini.jpeg"
  ),
  Product(
    name: 'Celine Bag',
    description:
        'description description description description description description description',
    price: 400.0,
    // image: "lib/Photos/Celine.jpeg"
  ),
];
//cart
List<Product> _cart = []; //empty
//get product
List<Product> get shoprod => _shop;
//get cart
List<Product> get cart => _cart;
//add product to cart
void addToCart(Product p) {
  _cart.add(p);
}

//remove item from cart
