part of 'products_cubit.dart';

@immutable
abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class GetProductsSuccessState extends ProductsState {}

class AddProducts extends ProductsState {}

class RemoveProducts extends ProductsState {}

class NavBarState extends ProductsState {}