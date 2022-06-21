import 'package:flutter/material.dart';
import '../models/movie_model.dart';

class MovieItem extends StatefulWidget {
  final Movie movie;
  final double pageNumber;
  final double index;

  MovieItem(this.movie, this.pageNumber, this.index);

  @override
  State<MovieItem> createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.movie.name),
            background: Image.asset(widget.movie.image, width: double.infinity, height: 200, fit: BoxFit.cover,),
          ),
        ),
        //SliverList(),
      ],
    );
  }
}
