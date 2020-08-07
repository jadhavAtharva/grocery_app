import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFF0F5F9),
            border: Border.all(width: 1, color: Color(0xFFd3dbd5)),
            borderRadius: BorderRadius.circular(15)),
        child: ListTile(
            trailing: IconButton(
                onPressed: () {
                  print("Search Pressed");
                },
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.blueGrey,
                )),
            title: TextField(
                cursorColor: Color(0xffF26016),
                decoration: InputDecoration(
                    hintText: "Search Shops",
                    hintStyle:
                        TextStyle(color: Colors.blueGrey, letterSpacing: 0.5),
                    border: InputBorder.none))),
      ),
    );
  }
}
