
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../core/constants/api_services.dart';
import '../../core/constants/articles_model.dart';
import '../../core/utiles/text_style.dart';
import 'list_two.dart';

class List_two_build extends StatefulWidget {
  final String category ;
  const List_two_build({super.key, required this.category});


  @override
  State<List_two_build> createState() => _List_two_buildState();
}

class _List_two_buildState extends State<List_two_build> {
  var future ;
  @override
  void initState (){
    super.initState();
    future = ApiServices(Dio()).getArticles(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(future: future,
          builder: (context,snapshot){
        if(snapshot.hasData){
        //  return list_two(article:);
          return list_two(article: snapshot.data!);
        }else if (snapshot.hasError){
          return SliverToBoxAdapter(child: Text('NOT Found',
          style: getTitleStyle(
            color: Colors.amberAccent,
          ),
          ));
        }else{
          return SliverFillRemaining(
            child: Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
            ),
          );
        }
          }
    );
  }
}
