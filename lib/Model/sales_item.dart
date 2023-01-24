import 'package:e_commerce2/Model/product_page.dart';
import 'package:flutter/material.dart';

Widget SalesItem(
    String aletName, int indirimValue, Image image, BuildContext context) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: const Color(0xFFE0ECF8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductPage(),
                          ));
                    },
                    child: Text(
                      indirimValue.toString(),
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: const Color(0xFF1F53E4),
                          ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22, bottom: 22),
            child: image,
          ),
          Text(
            aletName,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.deepPurpleAccent[400]),
          )
        ],
      ),
    ),
  );
}
