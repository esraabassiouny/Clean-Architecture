import 'package:e_commerce_app/presentation/controller/products_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../ data/models/product_model.dart';

class ProductItem extends StatelessWidget {

  Product product;
   var cubit;
  int screen;
  ProductItem({super.key, required this.product,this.cubit,required this.screen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.withOpacity(0.3),
        ),
        child: Expanded(
          child: Column(
            children: [
              Container(
                child: Image(image: NetworkImage("${product.thumbnail}",)
                ),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                margin: EdgeInsets.only(left: 8),
                alignment: Alignment.centerLeft,
                child: Text('${product.title}', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                alignment: Alignment.centerLeft,
                child: Text('${product.description}', style: TextStyle(
                  fontSize: 15,
                ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Text('\$${product.price}', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      if(screen==0)
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: IconButton(
                          onPressed: () {
                            cubit.AddProduct(product);
                          },
                          icon: Icon(Icons.add_shopping_cart_rounded),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
