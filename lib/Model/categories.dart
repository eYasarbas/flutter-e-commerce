import 'package:e_commerce2/Model/bottom_navigation.dart';
import 'package:e_commerce2/Model/category_product_page.dart';
import 'package:e_commerce2/Model/header.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderPage(context, CategoriesText().categoriess),
            Expanded(
              child: ListView(
                children: [
                  CategoriesButton(
                    context,
                    CategoriesText().oneName,
                  ),
                  CategoriesButton(
                    context,
                    CategoriesText().twoName,
                  ),
                  CategoriesButton(
                    context,
                    CategoriesText().threeName,
                  ),
                  CategoriesButton(
                    context,
                    CategoriesText().fourName,
                  ),
                  CategoriesButton(
                    context,
                    CategoriesText().fiveName,
                  ),
                  CategoriesButton(
                    context,
                    CategoriesText().sixName,
                  ),
                  CategoriesButton(
                    context,
                    CategoriesText().fiveName,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const ButtomNavigation()
    ])));
  }
}

Widget CategoriesButton(BuildContext context, String categoryName) {
  return GestureDetector(
    onDoubleTap: () {
      Navigator.push(context, MaterialPageRoute(builder: ((context) {
        return const CategoryProduct();
      })));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(24),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 4))
            ]),
        child: Text(
          categoryName,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Colors.purple[900]),
        ),
      ),
    ),
  );
}

class CategoriesText {
  final List<String> categories = [];
  final oneName = "All";
  final twoName = "Elektrikli El Aletleri";
  final threeName = "Dijital Ölçme Aletleri";
  final fourName = "El Aletleri";
  final fiveName = "Oto Bakım Aletleri";
  final sixName = "Aydınlatma Aletleri";
  final categoriess = "Categories";
}
