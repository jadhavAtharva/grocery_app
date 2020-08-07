import 'package:flutter/material.dart';
import 'Sixth_page.dart';

class Fifthpage extends StatefulWidget {
  @override
  _FifthpageState createState() => _FifthpageState();
}

class _FifthpageState extends State<Fifthpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 241, 245, 248),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius:BorderRadius.circular(20.0),
            child: Image.asset(
              'images/shop.png',
              height: MediaQuery.of(context).size.height*0.52,
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:7.0),
                  child: Text('Pawan Super Market',style:TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 7,),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on,size: 30,),
                    Text('Viman Nagar , Opp Hospital',style: TextStyle(
                      fontSize: 17,
                    ),),
                  ],
                ),
                SizedBox(height: 7,),
                Padding(
                  padding: const EdgeInsets.only(left:7.0),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'images/phone.png',
                        color: Colors.black,
                        height: 25,
                        width: 25,
                        fit: BoxFit.contain,
                      ),
                      Text(' +91 9988776655',style: TextStyle(
                        fontSize: 17,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:7.0),
                  child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitred diam nonumy eirmod tempor invidunt ut labore etdolore magna aliquyam erat, sed diam voluptua. At veroeos et accusam et justo duo dolores et ea rebum. Stetclita kasd gubergren, no sea takimata sanctus est Loremipsum dolor sit amet. Lorem ipsum dolor sit amet,consetetur sadipscing elitr, sed diam nonumy eirmodtempor .',
                  style: TextStyle(
                    fontSize: 16,
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(0.0),
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(13.0),topLeft:Radius.circular(13.0)),
            color: Color(0xff52616B),
          ),
          child: Padding(
            padding: EdgeInsets.only(right: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Shop Now',style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),),
                IconButton(icon:Icon(Icons.chevron_right,size: 40),color: Colors.deepOrange,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sixthpage()));
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}