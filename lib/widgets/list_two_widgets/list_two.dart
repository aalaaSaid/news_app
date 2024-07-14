


import 'package:flutter/material.dart';

import '../../core/constants/articles_model.dart';
import 'itemList2.dart';

class list_two extends StatelessWidget {
final List<ArticlesModel> article ;
  const list_two({super.key, required this.article});

  @override
  Widget build(BuildContext context) {

    return SliverList(
        delegate:SliverChildBuilderDelegate(
          childCount: article.length,
              (context,index)=>item2(articles: article[index],) ,
        ));
  }
}
