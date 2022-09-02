//Constant Variables

// ignore_for_file: non_constant_identifier_names, duplicate_ignore, prefer_const_constructors

// ignore: non_constant_identifier_names
import 'package:task/models/category.dart';
import 'package:task/models/product.dart';
import 'package:task/utilities/localization.dart';

var COUNT_VALUE = 2;

var ASPECTWIDTH = 167;

var ASPECTHEIGHT = 260;

//Home Screen Horizontal List View Items
List<Category> listItems = [
  Category('Ten', 'assets/pizza-slice.png'),
  Category('Nine', 'assets/coffee-cup.png'),
  Category('Eight', 'assets/hamburger.png'),
  Category('Seven', 'assets/pizza-slice.png'),
  Category('Six', 'assets/coffee-cup.png'),
  Category('Five', 'assets/hamburger.png'),
  Category('Four', 'assets/pizza-slice.png'),
  Category('Three', 'assets/coffee-cup.png'),
  Category('Two', 'assets/hamburger.png'),
  Category('One', 'assets/pizza-slice.png'),
];
// Home Screen Vertical Grid View Items
List<Product> gridItems = [
  Product(NAME, 'assets/images/products/4598025_apple-j.png', QUANTITY, PRICE),
  Product(NAME, 'assets/images/products/4777488_cheddar.png', QUANTITY, PRICE),
  Product(NAME, 'assets/images/products/3750754_cookies.png', QUANTITY, PRICE),
  Product(NAME, 'assets/images/products/3474585_ice-cre.png', QUANTITY, PRICE),
  Product(NAME, 'assets/images/products/2957433_breakfa.png', QUANTITY, PRICE),
  Product(NAME, 'assets/images/products/561924_ice-crea.png', QUANTITY, PRICE),
  Product(NAME, 'assets/images/products/4598025_apple-j.png', QUANTITY, PRICE),
  Product(NAME, 'assets/images/products/4777488_cheddar.png', QUANTITY, PRICE),
  Product(NAME, 'assets/images/products/3750754_cookies.png', QUANTITY, PRICE),
  Product(NAME, 'assets/images/products/3474585_ice-cre.png', QUANTITY, PRICE),
  Product(NAME, 'assets/images/products/2957433_breakfa.png', QUANTITY, PRICE),
  Product(NAME, 'assets/images/products/561924_ice-crea.png', QUANTITY, PRICE),
];
