import 'package:flutter/material.dart';
import 'package:groceryappstask/models/shops.dart';
import 'package:groceryappstask/screens/Shopscreen.dart';

class MedicineShopList extends StatefulWidget {
  @override
  _MedicineShopListState createState() => _MedicineShopListState();
}

class _MedicineShopListState extends State<MedicineShopList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: shoplist.length,
          itemBuilder: (BuildContext context, int shopindex) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Shopscreen()));
              },
              child: Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        colorBlendMode: BlendMode.screen,
                        image: AssetImage(medicineshoplist[shopindex].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 155, 25, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      color: Color(0xffF0F5F9),
                      child: ListTile(
                          title: Text(medicineshoplist[shopindex].name,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey[600])),
                          subtitle: Text(
                              "📍" + medicineshoplist[shopindex].address,
                              style: TextStyle(color: Colors.blueGrey[600])),
                          trailing: Icon(
                            (Icons.chevron_right),
                            color: Color(0xffF26016),
                            size: 40,
                          )),
                    ),
                  ),
                )
              ]),
            );
          }),
    );
  }
}
