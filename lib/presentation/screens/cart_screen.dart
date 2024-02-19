import 'package:e_commerce_app/presentation/controller/products_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants/services_locator.dart';
import '../components/product_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsState>(
      builder: (context, state) {
        var cubit = ProductsCubit.get(context);
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 300,
          ),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return ProductItem(
              product: cubit.Cartproducts[index], screen: 1,);
          },
          itemCount: cubit.Cartproducts.length,
        );
      }, listener: (BuildContext context, ProductsState state) {},
    );
  }
}
