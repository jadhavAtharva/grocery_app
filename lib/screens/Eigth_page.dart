import 'package:flutter/material.dart';

class eigthpage extends StatefulWidget {
  @override
  _eigthpageState createState() => _eigthpageState();
}

class _eigthpageState extends State<eigthpage> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.45,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'images/shop.png',
                  height: MediaQuery.of(context).size.height*0.35,
                  width:double.infinity,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(250, 241, 245, 248),
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          padding: EdgeInsets.only(top: 15,bottom: 15),
                          child:Column(
                            children: <Widget>[
                              Text('Pawan Super Market',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight:FontWeight.w600,
                              ),),
                              SizedBox(height: 2,),
                              Text('Viman Nagar, Opp Hospital',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('2.3km',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 6),
                                    child: SizedBox(
                                      width: 2,
                                      child: Container(
                                        color: Colors.deepOrange,
                                        height: 10,
                                      ),
                                    ),
                                  ),
                                  Text('Free Delivery',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                    ),),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 6),
                                    child: SizedBox(
                                      width: 2,
                                      child: Container(
                                        color: Colors.deepOrange,
                                        height: 10,
                                      ),
                                    ),
                                  ),
                                  Text('Open 7.30pm',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                    ),),
                                ],
                              ),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Total = Rs.',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                  Text(' 23,400.00',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800,
                                      ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Text('Active Cards',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: <Widget>[
                        DebitCard('****7009','images/visacard.png'),
                        DebitCard('****7009','images/mastercard.png'),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color:Color.fromARGB(250, 241, 245, 248),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                padding: EdgeInsets.all(0.0),
                                height: 65,
                                width: 100,
                                child: Icon(Icons.add,size: 35,color: Colors.blueGrey,),
                              ),
                            ],
                          ),
                        ),
                      ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(250, 241, 245, 248),
              ),
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/dollar.jpg',
                    width: 30,
                    height: 25,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Cash on Delivery',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.check_circle_outline),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 20),
            child: Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromARGB(250, 241, 245, 248),
            ),
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/paytm.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Micheal',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),),
                        Text('+9199887765',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.check_circle_outline),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          onTap: null,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff52616B),
          selectedItemColor: Color(0xffF5601D),
          unselectedItemColor: Color(0xffF0F5F9),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Cart"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text("Orders"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
            ),
          ],
        ),
      ),
      );
  }
}


Padding DebitCard(String Accnum,String ImgAddress){
  return Padding(
    padding: EdgeInsets.only(top: 7,right: 10),
    child: Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(13.0),
          child: Image.asset(
            ImgAddress,
            height: 60,
            width:100,
            fit: BoxFit.fill,
          ),
        ),
        Text(Accnum,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),),
      ],
    ),
  );
}


// code for checkbox as in pdf
//
//Container(
//child: Stack(
//alignment: Alignment.bottomLeft,
//children: <Widget>[
//Container(
//child: Icon(Icons.panorama_fish_eye,size: 45,),
//),
//Icon(Icons.check,color:Colors.lightBlueAccent,size: 55,),
//],
//),
//)