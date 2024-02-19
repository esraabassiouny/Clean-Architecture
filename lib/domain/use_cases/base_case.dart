import '../../ data/models/product_model.dart';

abstract class BaseCase {
   Future<List<Product>> call();
}