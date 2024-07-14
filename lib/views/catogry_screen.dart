import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_two_widgets/list2_builder.dart';

class CatogryScreen extends StatelessWidget {
  final String category;
  const CatogryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(category),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: CustomScrollView(
            slivers: [
              List_two_build(category: category),
            ],
          ),
        ),
      ),
    );
  }
}
