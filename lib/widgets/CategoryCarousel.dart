import 'package:flutter/material.dart';
import 'package:groceryappstask/models/categories.dart';

class CategoryCarousel extends StatefulWidget {
  @override
  _CategoryCarouselState createState() => _CategoryCarouselState();
}

class _CategoryCarouselState extends State<CategoryCarousel> {
  int selectedcategory = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorylist.length,
          itemBuilder: (BuildContext context, int categoryindex) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      selectedcategory = categoryindex;
                      setState(() {});
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                          color: selectedcategory == categoryindex
                              ? Color(0xffFFD6BC)
                              : Color(0xffF0F5F9),
                          height: 70,
                          width: 70,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
                            child: Image(
                              image: AssetImage(
                                  categorylist[categoryindex].imageUrl),
                            ),
                          )),
                    ),
                  ),
                  Text(categorylist[categoryindex].name)
                ],
              ),
            );
          }),
    );
  }
}
