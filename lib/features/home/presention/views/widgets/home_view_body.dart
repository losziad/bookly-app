import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presention/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presention/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presention/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
          CustomAppBar(),
          FeaturedBooksListView(),
          const SizedBox(
            height: 50.0,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 20.0,
          ),
          BookListViewItem(),
        ],
      ),
    );
  }
}





