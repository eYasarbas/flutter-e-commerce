import 'package:e_commerce2/Model/bottom_navigation.dart';
import 'package:e_commerce2/Model/categories.dart';
import 'package:e_commerce2/Model/sales_item.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Padding(
                  padding: PaddingUtility().genelHorizontal,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Başlık
                        const buildTitle(),
                        //Banner
                        const buildBanner(),
                        //Buttonlar
                        Padding(
                          padding: PaddingUtility().buttonsTop,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildNavigation(
                                  text: TextUtility().categories,
                                  icon: Icons.menu,
                                  context: context,
                                  widget: const CategoriesPage()),
                              buildNavigation(
                                  text: TextUtility().favorites,
                                  icon: Icons.favorite,
                                  context: context,
                                  widget: widget),
                              buildNavigation(
                                  text: TextUtility().gifts,
                                  icon: Icons.attach_money_outlined,
                                  context: context,
                                  widget: widget),
                              buildNavigation(
                                  text: TextUtility().bestSelling,
                                  icon: Icons.people_outlined,
                                  context: context,
                                  widget: widget),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 40,
                        ),
                        //Sales Title
                        Center(
                          child: Text(
                            TextUtility().sales,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),

                        //Sales Items
                        const SizedBox(
                          height: 16,
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
                      ]),
                ),
              ],
            ),
            //BOTTOM NAVIGATION BAR
            const ButtomNavigation(),
          ],
        ),
      ),
    );
  }

  Widget buildNavigation(
      {required String text,
      required IconData icon,
      required Widget widget,
      required BuildContext context}) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return widget;
        })));
      },
      child: Column(
        children: [
          Container(
            padding: PaddingUtility().cardinsidePadding,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFE0ECF8),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF0001FC),
              size: 18,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Color(0xFF1F53E4),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

class buildBanner extends StatelessWidget {
  const buildBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingUtility().titletopBar,
      child: Container(
        width: double.infinity,
        padding: PaddingUtility().cardinsidePadding,
        decoration: BoxDecoration(
            color: const Color(0xFF0001FC),
            borderRadius: BorderRadius.circular(6)),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TextUtility().homeContainer,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    TextUtility().homeContainerSub,
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              ImageUtility().boseSpeaker
            ],
          ),
        ),
      ),
    );
  }
}

class buildTitle extends StatelessWidget {
  const buildTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingUtility().titletopBar,
      child: Text(
        TextUtility().homeTitle,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}

class TextUtility {
  final String homeTitle = "Home";
  final String homeContainer = "Bose Home Speaker";
  final String homeContainerSub = "USD 279";
  final String categories = "Categories";
  final String favorites = "Favorites";
  final String gifts = "Gifts";
  final String bestSelling = "Best Sellling";
  final String sales = "Sales";
  final int indirimValue = 50;
  final String aletName = "Birinci alet";
  final String product_name = "Product Name";
  final String product_up_category = "Product Up Category";
  final String product_decrption =
      "Bir stil ikonu, günümüzün en iyi trend belirleyicilerinden birinden biraz sevgi görüyor. Pharrell Williams , sevgili Stan Smith'in tüm temiz, klasik ayrıntılarına sahip bu ayakkabılarda yaratıcılığını ortaya koyuyor .";
}

class PaddingUtility {
  final titletopBar = const EdgeInsets.only(top: 24.0);
  final genelHorizontal = const EdgeInsets.symmetric(horizontal: 16.0);
  final cardinsidePadding = const EdgeInsets.all(15);
  final buttonsTop = const EdgeInsets.only(top: 48);
  final categories = const EdgeInsets.symmetric(horizontal: 19, vertical: 22);
}

class ImageUtility {
  final boseSpeaker = Image.network(
    "https://picsum.photos/200/300",
    height: 78,
    width: 57,
    fit: BoxFit.fitWidth,
  );
  final satisAlet = Image.network(
    "https://picsum.photos/200/300",
  );
  final product_icon = Image.network(
    "https://picsum.photos/200/300",
  );
}

class ImageSatup {}
