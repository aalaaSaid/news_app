
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/constants/articles_model.dart';

import '../../../core/utiles/text_style.dart';

class item2 extends StatelessWidget {
final ArticlesModel articles ;
  const item2({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: articles.image != null && articles.image!.isNotEmpty
              ? Image.network(articles.image!)
              : Container(
            color: Colors.black,
            height: 200,
            width: double.infinity,
          ), // Placeholder for null or empty image
        ),
        Text( articles.title,
          style: getTitleStyle(),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          articles.subTitle != null && articles.subTitle!.isNotEmpty ?
          articles.subTitle! : '',
          style: getBodyStyle(
            color: Colors.grey,
            frontSize: 12,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Container(
          color: Colors.transparent,
          height: 30,
          width: double.infinity,
        ),
      ],
    );
  }
}
