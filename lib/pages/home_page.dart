import 'package:flutter/material.dart';
import 'package:food_app1/pages/nav_bar_pages/home.dart';
import 'package:food_app1/pages/nav_bar_pages/my_kitchen.dart';
import 'package:food_app1/pages/nav_bar_pages/search.dart';
import 'package:food_app1/pages/searching_pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController();
  int thisPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: const [
          HomeScreen(),
          SearchScreen(),
          KitchenScreen(),
        ],
        onPageChanged: (page) {
          controller.jumpToPage(page);
        },
      ),
      floatingActionButton: navBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget navBar() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.15,
        right: MediaQuery.of(context).size.width * 0.15,
        top: 4,
      ),
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 8,
        bottom: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: thisPage == 0 ? Colors.white : Colors.amberAccent,
              borderRadius: BorderRadius.circular(60),
            ),
            alignment: Alignment.center,
            child: Center(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    thisPage = 0;
                  });
                  controller.jumpToPage(0);
                },
                icon: Icon(
                  Icons.home,
                  color: thisPage == 0 ? Colors.black : Colors.black54,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: thisPage == 1 ? Colors.white : Colors.amberAccent,
              borderRadius: BorderRadius.circular(60),
            ),
            alignment: Alignment.center,
            child: Center(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    thisPage = 1;
                  });
                  controller.jumpToPage(1);
                },
                icon: Icon(
                  Icons.search,
                  color: thisPage == 1 ? Colors.black : Colors.black54,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: thisPage == 2 ? Colors.white : Colors.amberAccent,
              borderRadius: BorderRadius.circular(60),
            ),
            alignment: Alignment.center,
            child: Center(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    thisPage = 2;
                  });
                  controller.jumpToPage(2);
                },
                icon: Icon(
                  Icons.soup_kitchen_sharp,
                  color: thisPage == 2 ? Colors.black : Colors.black54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
