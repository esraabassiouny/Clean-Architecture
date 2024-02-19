import 'package:dio/dio.dart';
import 'package:e_commerce_app/%20data/models/product_model.dart';

class DioHelper {
  Dio dio = Dio();

 Future<List<Product>> getProducts({required String path}) async{
    Response response = await Dio().get(path);
   return List<Product>.from((response.data["products"] as List)
       .map((e) => Product.fromJson(e)));
  }

}