import 'package:flutter/material.dart';

Widget HeaderPage(BuildContext context, String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 29,
      ),
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.purple[900],
          size: 27,
        ),
      ),
      const SizedBox(
        height: 24,
      ),
      Text(
        title,
        style: Theme.of(context).textTheme.headline3,
      ),
      const SizedBox(
        height: 16,
      ),
    ],
  );
}
