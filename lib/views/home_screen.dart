
import 'package:flutter/material.dart';

import '../core/utiles/text_style.dart';
import '../widgets/list_one/list_one.dart';
import '../widgets/list_two_widgets/list2_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          centerTitle: true,
          title: Text(
            'NewsCloud',
            style: getTitleStyle(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: list1(),
            ),
            SliverToBoxAdapter(
              child:SizedBox(
                height: 20,
              )
            ),
            List_two_build(category: 'general'),
          ]),
        ),
      ),
    );
  }
}
