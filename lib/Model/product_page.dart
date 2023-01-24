import 'package:e_commerce2/Model/header.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtility().bacgrouncolor,
      body: Column(
        children: [
          HeaderPage(context, "Ürün Name"),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  color: ColorUtility().bacgrouncolor,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                ),
                Column(
                  children: const [Text("data")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorUtility {
  final bacgrouncolor = Colors.blue[400];
}
