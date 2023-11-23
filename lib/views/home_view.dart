import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/categories_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange, fontSize: 25),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child:
            CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
            child: CategoryListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          NewsListViewBuilder(
            category: 'general',
          ),
        ]),
      ),
    );
  }
}
