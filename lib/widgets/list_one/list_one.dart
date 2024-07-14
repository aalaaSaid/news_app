


import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_one/itemList1.dart';

import '../../models/item1Model.dart';

class list1 extends StatelessWidget {
  list1({super.key});
  List<item1>items=[
    item1(text: 'Business'),
    item1(text: 'Entertainment'),
    item1(text: 'Health'),
    item1(text: 'Science'),
    item1(text: 'Sports'),
    item1(text: 'Technology'),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        itemBuilder: (context,index)=>item(items: items[index]),
        separatorBuilder: (context,index)=>SizedBox(width: 20,),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
