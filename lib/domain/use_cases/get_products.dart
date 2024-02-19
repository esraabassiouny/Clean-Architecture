
import 'package:e_commerce_app/domain/repository/base_repository.dart';
import 'package:e_commerce_app/domain/use_cases/base_case.dart';

import '../../ data/models/product_model.dart';

class GetProductsUseCase extends BaseCase{

 final BaseRepo baseRepo;

  GetProductsUseCase(this.baseRepo);


  @override
  Future<List<Product>> call() async{
   return await baseRepo.getProducts();
  }

}