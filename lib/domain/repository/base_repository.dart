import 'package:e_commerce_app/%20data/models/product_model.dart';

abstract class BaseRepo {

   Future <List<Product>> getProducts();
}