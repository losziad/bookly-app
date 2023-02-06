import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presention/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presention/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presention/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presention/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
               CustomAppBar(),
               FeaturedBooksListView(),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 50),
                child:  Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: BestSellerListView(),
        )
      ],
    );
  }
}





