import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({super.key});

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView>
    with SingleTickerProviderStateMixin {
  final bool _iskargoController = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarOpacity: 1,
        actions: const [PDetailAppBar()],
      ),
      bottomNavigationBar: const BottomProductBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              children: [
                _iskargoController ? const KargoBox() : const SizedBox.shrink(),
                ProductImage(size: size),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.symmetric(horizontal: 140),
              alignment: Alignment.center,
              child: const ImageButtonBar(),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                UrunName(),
                TumOzelliklerButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    RateText(),
                    RateIcon(
                      color: Colors.amber,
                    ),
                    RateIcon(
                      color: Colors.amber,
                    ),
                    RateIcon(
                      color: Colors.amber,
                    ),
                    RateIcon(
                      color: Colors.grey,
                    ),
                  ],
                ),
                const CommentButton(),
                const LikeAccount()
              ],
            ),
            const Divider(),
            const ColorBar(),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ColorSelectImage(),
                ColorSelectImage(),
                ColorSelectImage(),
                ColorSelectImage(),
              ],
            ),
            const ImageButtonBar(),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.plus_one_outlined))
          ],
        ),
      )),
    );
  }
}

class ImageButtonBar extends StatelessWidget {
  const ImageButtonBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ProductImagePassButton(),
        ProductImagePassButton(),
        ProductImagePassButton(),
        ProductImagePassButton(),
        ProductImagePassButton(),
      ],
    );
  }
}

class ColorSelectImage extends StatelessWidget {
  const ColorSelectImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: 100,
        child: Image.network(
          "https://picsum.photos/200/300",
          fit: BoxFit.cover,
        ));
  }
}

class ColorBar extends StatelessWidget {
  const ColorBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Renk",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(" Farklı renk"),
        ],
      ),
    );
  }
}

class LikeAccount extends StatelessWidget {
  const LikeAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        LikeButton(),
        Text("Like Sayısı"),
      ],
    );
  }
}

class CommentButton extends StatelessWidget {
  const CommentButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text("Yorum Sayısı", style: TextStyle(color: Colors.black)),
    );
  }
}

class RateIcon extends StatelessWidget {
  const RateIcon({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: color,
      size: 30,
    );
  }
}

class RateText extends StatelessWidget {
  const RateText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Rate",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class UrunName extends StatelessWidget {
  const UrunName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Marka ".toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text(
            "Urun adı",
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}

class TumOzelliklerButton extends StatelessWidget {
  const TumOzelliklerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.orange[100]),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          maximumSize: MaterialStateProperty.all(const Size(200, 40)),
          alignment: Alignment.center,
        ),
        onPressed: () {},
        child: const Text("Tüm Özellikler",
            style: TextStyle(fontSize: 18, color: Colors.deepPurple)));
  }
}

class ProductImagePassButton extends StatelessWidget {
  const ProductImagePassButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
      width: 20,
      height: 20,
    );
  }
}

class KargoBox extends StatelessWidget {
  const KargoBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 180,
      height: 40,
      margin: const EdgeInsets.only(top: 40),
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          "Kargo bedeva".toUpperCase(),
          style: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        height: size.height * 0.5,
        width: size.width,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: ImageUtility().productImg,
      ),
    );
  }
}

class BottomProductBar extends StatelessWidget {
  const BottomProductBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Price",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              child: SizedBox(
                  width: size.width * 0.60,
                  child: const Text(
                    "Add to Card",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class PDetailAppBar extends StatelessWidget {
  const PDetailAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
              child: Icon(Icons.arrow_back_ios_new_outlined, size: 40)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: LikeButton(),
                ),
                Icon(Icons.share_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ImageUtility {
  final Image productImg = Image.asset(
    "assets/OIP.jpg",
    //network( "https://picsum.photos/200/300",
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center,
  );
}
