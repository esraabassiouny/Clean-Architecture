

import 'package:e_commerce_app/presentation/controller/products_cubit.dart';
import 'package:get_it/get_it.dart';

import '../ data/repository/data_repository.dart';
import '../ data/source/remote/remote_data.dart';
import '../domain/repository/base_repository.dart';
import '../domain/use_cases/get_products.dart';

final getIt= GetIt.instance;

class ServicesLocator {
  void init(){

    getIt.registerFactory(() => ProductsCubit(ProductsInitial(),getIt()));

    getIt.registerLazySingleton(() => GetProductsUseCase(getIt()));
    getIt.registerLazySingleton<BaseRepo>(() => DataRepo(getIt()));

    getIt.registerLazySingleton<RemoteData>(() => GetProducts());
  }
}