

import 'package:flutter/material.dart';
import 'package:news_app/views/catogry_screen.dart';

import '../../../core/utiles/text_style.dart';
import '../../../models/item1Model.dart';

class item extends StatelessWidget {
   item({super.key, required this.items});
   final item1 items ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>CatogryScreen(category: items.text!) ,

        ),);
      },
      child: Container(
        height: 85,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey
        ),
        child: Center(
          child: Text(items.text!,
            style: getTitleStyle(
            ),
          ),
        ),
      ),
    );
  }
}
