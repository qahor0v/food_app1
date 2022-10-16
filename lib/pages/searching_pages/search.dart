import 'package:flutter/material.dart';
import 'package:food_app1/colors.dart';
import 'package:food_app1/models/food_model.dart';
import 'package:food_app1/services/food_data.dart';
import 'package:food_app1/services/masalliqlar_parsing.dart';
import 'package:cached_network_image/cached_network_image.dart';

//https://img.youtube.com/vi/ypuLQKbGgyI/maxresdefault.jpg
class SearchPage extends StatefulWidget {
  static const String id = 'jfkdfjgkthgogfkbgkh0';
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.pageTheme(
        AppTheme.darkMode(),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.77,
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.03,
                        right: MediaQuery.of(context).size.width * 0.01,
                        top: 4,
                        bottom: 12,
                      ),
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 6,
                        top: 2,
                        bottom: 2,
                      ),
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        color: AppTheme.searchBarColor(
                          AppTheme.darkMode(),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.amber,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          controller: searchController,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: " Qidirish uchun kiriting",
                              hintStyle: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.bold,
                              ),
                              suffixIcon: Icon(
                                Icons.camera_alt,
                                color: Colors.amberAccent,
                              )),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.01,
                        right: MediaQuery.of(context).size.width * 0.03,
                        top: 4,
                        bottom: 12,
                      ),
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppTheme.searchBarColor(
                          AppTheme.darkMode(),
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.amberAccent,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 12,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 100),
            )
          ],
        ),
      ),
    );
  }
}
