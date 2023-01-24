import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'home.dart';

class OnlyProduct extends StatefulWidget {
  const OnlyProduct({Key? key}) : super(key: key);

  @override
  State<OnlyProduct> createState() => _OnlyProductState();
}

class _OnlyProductState extends State<OnlyProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const _AppBarProduct(),
            Stack(
              children: [
                ImageUtility().satisAlet,
                const _Likebutton(),
              ],
            ),
            const _ColorButton(),
            const _Descraption(),
            const _AddCard(),
          ],
        ),
      ),
    );
  }
}

class _AppBarProduct extends StatelessWidget {
  const _AppBarProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Icon(Icons.arrow_back_outlined),
          _ProductNameBar(),
          Icon(Icons.card_travel_outlined),
        ],
      ),
    );
  }
}

class _AddCard extends StatelessWidget {
  const _AddCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.shopify_outlined),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Add Cart',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}

class _ProductNameBar extends StatelessWidget {
  const _ProductNameBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            TextUtility().product_up_category,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Color(0xFF2F2F3E)),
          ),
          Text(
            TextUtility().product_name,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2F2F3E)),
          ),
        ],
      ),
    );
  }
}

class _Likebutton extends StatelessWidget {
  const _Likebutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        bottom: 0,
        right: 0,
        child: LikeButton(
          mainAxisAlignment: MainAxisAlignment.start,
          circleColor: CircleColor(start: Colors.purple, end: Colors.red),
          size: 50,
        ));
  }
}

class _ColorButton extends StatelessWidget {
  const _ColorButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.circle),
          color: Colors.red,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.circle),
          color: Colors.yellow,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.circle),
          color: Colors.purple,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.circle),
          color: Colors.green,
        ),
      ],
    );
  }
}

class _Descraption extends StatelessWidget {
  const _Descraption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        TextUtility().product_decrption,
        style: const TextStyle(
            color: Colors.blueAccent, fontWeight: FontWeight.bold),
      ),
    );
  }
}
