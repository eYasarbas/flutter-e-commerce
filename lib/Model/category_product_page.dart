import 'package:e_commerce2/Model/bottom_navigation.dart';
import 'package:e_commerce2/Model/header.dart';
import 'package:flutter/material.dart';

class CategoryProduct extends StatefulWidget {
  const CategoryProduct({Key? key}) : super(key: key);

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  late final List<CollectionImage> _items;

  @override
  void initState() {
    super.initState();

    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderPage(context, "My App"),
                  Expanded(
                    child: ListView.builder(
                        padding: PaddingUtility().peddingHorizatonal,
                        itemCount: _items.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CategoryCard(model: _items[index]),
                                  CategoryCard(model: _items[index]),
                                ],
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
            const ButtomNavigation()
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required CollectionImage model,
  })  : _model = model,
        super(key: key);

  final CollectionImage _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              Expanded(
                  child: Image.network(
                _model.imagePath,
                fit: BoxFit.fill,
              )),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Column(
                  children: [
                    Text(_model.title),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber[600],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber[600],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber[600],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber[600],
                            ),
                          ],
                        ),
                        Text(_model.comments)
                      ],
                    ),
                    Text("${_model.price}"),
                    Container(
                      color: Colors.grey[200],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(Icons.transfer_within_a_station),
                              Text("Kargo\n Berdava")
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionImage {
  final String imagePath;
  final String title;
  final double price;
  final String comments;
  final int? raitng;

  CollectionImage({
    required this.imagePath,
    required this.price,
    required this.title,
    required this.comments,
    required this.raitng,
  });
}

class CollectionItems {
  late final List<CollectionImage> items;

  CollectionItems() {
    items = [
      CollectionImage(
          imagePath: "https://picsum.photos/200/300",
          price: 3.4,
          title: "Abstract Art",
          comments: "Yorum sayısı",
          raitng: 5),
      CollectionImage(
          imagePath: "https://picsum.photos/200/300",
          price: 3.4,
          title: "Abstract Art",
          comments: "Yorum sayısı",
          raitng: 4),
      CollectionImage(
          imagePath: "https://picsum.photos/200/300",
          price: 3.4,
          title: "Abstract Art",
          comments: "Yorum sayısı",
          raitng: 5),
      CollectionImage(
          imagePath: "https://picsum.photos/200/300",
          price: 3.4,
          title: "Abstract Art",
          comments: "Yorum sayısı",
          raitng: 4),
      CollectionImage(
          imagePath: "https://picsum.photos/200/300",
          price: 3.4,
          title: "Abstract Art",
          comments: "Yorum sayısı",
          raitng: 4)
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 15);
  final paddingBottom =
      const EdgeInsets.only(bottom: 20).copyWith(left: 10, right: 10);
  final peddingGenel = const EdgeInsets.all(20.0);
  final peddingHorizatonal = const EdgeInsets.symmetric(horizontal: 10);
}
