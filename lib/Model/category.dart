import 'package:e_commerce2/Model/categories.dart';
import 'package:e_commerce2/Model/header.dart';
import 'package:e_commerce2/Model/home.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce2/Model/sales_item.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            HeaderPage(context, CategoriesText().twoName),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SalesItem(
                        TextUtility().aletName,
                        TextUtility().indirimValue,
                        ImageUtility().satisAlet,
                        context),
                    SalesItem(
                        TextUtility().aletName,
                        TextUtility().indirimValue,
                        ImageUtility().satisAlet,
                        context),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SalesItem(
                        TextUtility().aletName,
                        TextUtility().indirimValue,
                        ImageUtility().satisAlet,
                        context),
                    SalesItem(
                        TextUtility().aletName,
                        TextUtility().indirimValue,
                        ImageUtility().satisAlet,
                        context),
                  ],
                ),
              ],
            )
          ]))
    ])));
  }
}
