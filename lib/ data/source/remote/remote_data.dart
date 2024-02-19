import 'package:dio/dio.dart';
import 'package:e_commerce_app/%20data/models/product_model.dart';
import 'package:e_commerce_app/%20data/source/remote/dio_helper.dart';

import '../../../constants/api_constants.dart';

abstract class RemoteData {
  Future<List<Product>> getProducts();
}

class GetProducts extends RemoteData{

  @override
  Future<List<Product>> getProducts() async{
    DioHelper dioHelper = DioHelper();
    return await dioHelper.getProducts(path: ApiConstants.URL);
  }

}