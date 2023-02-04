import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presention/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 15.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
          CustomSearchTextField(),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle16,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Expanded(
              child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index){
        return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BookListViewItem(),
        );
        },
    );
  }
}
