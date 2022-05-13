
import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';


class MoviesList extends StatelessWidget {
  const MoviesList({Key? key,required  this.movies}) : super(key: key);
  final List movies;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index){
          return  Padding(
            padding: const EdgeInsets.only(
              right: 8,
            ),
            child:Image.asset(
              'assets/images/movies/${movies[index]}',
              height: getProportionateScreenHeight(130),
              width: getProportionateScreenWidth(80),
              fit: BoxFit.contain,
            ),
          );
        });
  }
}
