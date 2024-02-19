import 'package:e_commerce_app/presentation/controller/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constants/services_locator.dart';

void main() {
  ServicesLocator().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>getIt<ProductsCubit>()..getProducts(),
      child: BlocConsumer<ProductsCubit, ProductsState>(
        builder: (context, state) {
          var cubit = ProductsCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(   bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.ChangeNavBar(index);
                },
                items: cubit.NavBarItems),
              appBar: AppBar(backgroundColor: Colors.white,
              title: Center(child: Text("E-Commerce App")),titleTextStyle:TextStyle
                    (
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              backgroundColor: Colors.white,
              body: cubit.Screens[cubit.currentIndex],
            ),
          );
        }, listener: (BuildContext context, ProductsState state) {  },
      ),
    );
  }
}
