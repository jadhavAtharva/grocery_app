import 'package:flutter/material.dart';
import 'package:groceryappstask/models/categories.dart';
import 'package:groceryappstask/widgets/BottomBar.dart';
import 'package:groceryappstask/widgets/DairyShopList.dart';
import 'package:groceryappstask/widgets/FilterTabbar.dart';
import 'package:groceryappstask/widgets/GroceryShopList.dart';
import 'package:groceryappstask/widgets/MedicineShopList.dart';
import 'package:groceryappstask/widgets/SearchBar.dart';
import 'package:groceryappstask/widgets/UserGreetingBar.dart';
import 'package:groceryappstask/widgets/VegetableShopList.dart';

class uiscreen extends StatefulWidget {
  @override
  _uiscreenState createState() => _uiscreenState();
}

class _uiscreenState extends State<uiscreen>
    with SingleTickerProviderStateMixin {
  Color selectedcolor;
  int selectedcategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            UserGreetingBar(),
            SearchBar(),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  )),
            ),
            Container(
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
                              print(selectedcategory);
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
            ),
            FilterTabbar(),
            if (selectedcategory == 0)
              GroceryShopList()
            else if (selectedcategory == 1)
              VegetableShopList()
            else if (selectedcategory == 2)
              DairyShopList()
            else if (selectedcategory == 3)
              MedicineShopList()
          ],
        ),
        bottomNavigationBar: BottomBar());
  }
}
