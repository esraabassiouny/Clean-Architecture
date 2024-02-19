import 'package:e_commerce_app/%20data/models/product_model.dart';
import 'package:e_commerce_app/%20data/source/remote/remote_data.dart';
import 'package:e_commerce_app/domain/repository/base_repository.dart';

class DataRepo extends BaseRepo{
  final RemoteData remoteData ;

  DataRepo(this.remoteData);
  @override
  Future<List<Product>> getProducts() async{
    return await remoteData.getProducts();
  }

}