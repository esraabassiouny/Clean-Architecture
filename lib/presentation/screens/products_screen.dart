import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/product_item.dart';
import '../controller/products_cubit.dart';

class ProductsScreen extends StatelessWidget {
  int index = 0;

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
              return ProductItem(product: cubit.products[index],cubit: cubit,screen: 0,);
            },
            itemCount: cubit.products.length,
        );
      }, listener: (BuildContext context, ProductsState state) {},
    );
  }
}
