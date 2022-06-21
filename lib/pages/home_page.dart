import 'package:flutter/material.dart';
import 'package:movies/temp_db/db.dart';
import 'package:movies/widgets/movie_item.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;
  double pageNumber = 0.0;
  @override
  void initState(){
    pageController = PageController(
          initialPage: 0,
          viewportFraction: 1
    );
    pageController.addListener(() {
       setState((){
         pageNumber = pageController.page!;
       });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Image.asset('images/tranparent.jpg', width: double.infinity, fit: BoxFit.cover,),
            PageView.builder(
              controller: pageController,
                itemBuilder:(context, index) => MovieItem(movies[index], pageNumber, index.toDouble()),
                itemCount: movies.length,
            ),
          ],
        ),
      ),
    );
  }
}
