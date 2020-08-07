import 'package:flutter/material.dart';
import 'Seventh_page.dart';

class Sixthpage extends StatefulWidget {
  @override
  _SixthpageState createState() => _SixthpageState();
}

class _SixthpageState extends State<Sixthpage>{

  var _quantites = ['10Kg','20Kg','30Kg'];
  var _currentItemSelected='10Kg';

  ListView Atta(){
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        ListView.builder(
          itemCount: 30,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context,index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                  margin: const EdgeInsets.only(bottom: 10,left: 3,right: 3), //Same as `blurRadius` i guess
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                      BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 2.0,
                        ),
                    ],
                  ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex:2,
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0)),
                              color:Colors.deepOrange,
                            ),
                            width: 25,
                            alignment: Alignment.topLeft,
                            child:Text(' 10%',
                            style: TextStyle(
                              fontSize: 9,
                              color: Colors.white,
                            ),)
                          ),
                          Padding(
                            padding:EdgeInsets.only(left:8.0),
                            child: Image.asset('images/atta.png',height: 60,width: 50,),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Rs. 298',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                          Text('Vedaka Atta',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                          Text('Chakki Fresh atta',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w300),),
                          Container(
                            height: 20,
                              padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Colors.deepOrange,
                                  style: BorderStyle.solid,width: 1.2),
                            ),
                            child: DropdownButton<String>(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.deepOrange,
                                size: 15,
                              ),
                              items: _quantites.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem,style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 10,
                                  ),),
                                );
                              }).toList(),
                              onChanged: (String newvalueSelected){
                                setState(() {
                                  this._currentItemSelected = newvalueSelected;
                                });
                              },
                              value: _currentItemSelected,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueGrey[50],
                            ),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.add,color: Colors.green,size: 28,),
                                Text('3',style: TextStyle(fontSize: 16),),
                                Icon(Icons.remove,color: Colors.red,size: 28,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  ListView Besan(){
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        ListView.builder(
          itemCount: 30,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context,index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                margin: const EdgeInsets.only(bottom: 10,left: 3,right: 3), //Same as `blurRadius` i guess
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex:2,
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0)),
                                color:Colors.deepOrange,
                              ),
                              width: 25,
                              alignment: Alignment.topLeft,
                              child:Text(' 10%',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                ),)
                          ),
                          Padding(
                            padding:EdgeInsets.only(left:8.0),
                            child: Image.asset('images/atta.png',height: 60,width: 50,),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Rs. 298',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                          Text('Vedaka Atta',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                          Text('Chakki Fresh atta',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w300),),
                          Container(
                            height: 20,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Colors.deepOrange,
                                  style: BorderStyle.solid,width: 1.2),
                            ),
                            child: DropdownButton<String>(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.deepOrange,
                                size: 15,
                              ),
                              items: _quantites.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem,style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 10,
                                  ),),
                                );
                              }).toList(),
                              onChanged: (String newvalueSelected){
                                setState(() {
                                  this._currentItemSelected = newvalueSelected;
                                });
                              },
                              value: _currentItemSelected,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueGrey[50],
                            ),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.add,color: Colors.green,size: 28,),
                                Text('3',style: TextStyle(fontSize: 16),),
                                Icon(Icons.remove,color: Colors.red,size: 28,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  ListView Rice(){
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        ListView.builder(
          itemCount: 30,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context,index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                margin: const EdgeInsets.only(bottom: 10,left: 3,right: 3), //Same as `blurRadius` i guess
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex:2,
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0)),
                                color:Colors.deepOrange,
                              ),
                              width: 25,
                              alignment: Alignment.topLeft,
                              child:Text(' 10%',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                ),)
                          ),
                          Padding(
                            padding:EdgeInsets.only(left:8.0),
                            child: Image.asset('images/atta.png',height: 60,width: 50,),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Rs. 298',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                          Text('Vedaka Atta',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                          Text('Chakki Fresh atta',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w300),),
                          Container(
                            height: 20,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Colors.deepOrange,
                                  style: BorderStyle.solid,width: 1.2),
                            ),
                            child: DropdownButton<String>(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.deepOrange,
                                size: 15,
                              ),
                              items: _quantites.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem,style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 10,
                                  ),),
                                );
                              }).toList(),
                              onChanged: (String newvalueSelected){
                                setState(() {
                                  this._currentItemSelected = newvalueSelected;
                                });
                              },
                              value: _currentItemSelected,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueGrey[50],
                            ),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.add,color: Colors.green,size: 28,),
                                Text('3',style: TextStyle(fontSize: 16),),
                                Icon(Icons.remove,color: Colors.red,size: 28,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  ListView Soda(){
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        ListView.builder(
          itemCount: 30,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context,index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                margin: const EdgeInsets.only(bottom: 10,left: 3,right: 3), //Same as `blurRadius` i guess
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex:2,
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0)),
                                color:Colors.deepOrange,
                              ),
                              width: 25,
                              alignment: Alignment.topLeft,
                              child:Text(' 10%',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                ),)
                          ),
                          Padding(
                            padding:EdgeInsets.only(left:8.0),
                            child: Image.asset('images/atta.png',height: 60,width: 50,),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Rs. 298',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                          Text('Vedaka Atta',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                          Text('Chakki Fresh atta',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w300),),
                          Container(
                            height: 20,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Colors.deepOrange,
                                  style: BorderStyle.solid,width: 1.2),
                            ),
                            child: DropdownButton<String>(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.deepOrange,
                                size: 15,
                              ),
                              items: _quantites.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem,style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 10,
                                  ),),
                                );
                              }).toList(),
                              onChanged: (String newvalueSelected){
                                setState(() {
                                  this._currentItemSelected = newvalueSelected;
                                });
                              },
                              value: _currentItemSelected,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueGrey[50],
                            ),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.add,color: Colors.green,size: 28,),
                                Text('3',style: TextStyle(fontSize: 16),),
                                Icon(Icons.remove,color: Colors.red,size: 28,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  ListView Spices(){
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        ListView.builder(
          itemCount: 30,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context,index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                margin: const EdgeInsets.only(bottom: 10,left: 3,right: 3), //Same as `blurRadius` i guess
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex:2,
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0)),
                                color:Colors.deepOrange,
                              ),
                              width: 25,
                              alignment: Alignment.topLeft,
                              child:Text(' 10%',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                ),)
                          ),
                          Padding(
                            padding:EdgeInsets.only(left:8.0),
                            child: Image.asset('images/atta.png',height: 60,width: 50,),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Rs. 298',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                          Text('Vedaka Atta',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                          Text('Chakki Fresh atta',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w300),),
                          Container(
                            height: 20,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Colors.deepOrange,
                                  style: BorderStyle.solid,width: 1.2),
                            ),
                            child: DropdownButton<String>(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.deepOrange,
                                size: 15,
                              ),
                              items: _quantites.map((String dropDownStringItem){
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem,style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 10,
                                  ),),
                                );
                              }).toList(),
                              onChanged: (String newvalueSelected){
                                setState(() {
                                  this._currentItemSelected = newvalueSelected;
                                });
                              },
                              value: _currentItemSelected,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueGrey[50],
                            ),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.add,color: Colors.green,size: 28,),
                                Text('3',style: TextStyle(fontSize: 16),),
                                Icon(Icons.remove,color: Colors.red,size: 28,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Container Searchbar(){
    return Container(
        height: 40.0,
        decoration: new BoxDecoration(
            color: Color.fromARGB(250, 241, 245, 248),
            borderRadius: new BorderRadius.all(new Radius.circular(10))
        ),
        child: TextField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            contentPadding:EdgeInsets.only(left: 8.0,top: 4.0),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            focusedBorder:UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(10),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(10),
            ),
            hintText:'Search Shop',
            suffixIcon: Icon(Icons.search,color:Colors.blueGrey,),
          ),
          cursorColor: Colors.white,
          style: TextStyle(
            color: Colors.white,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left:30.0,right: 30.0,top: 20.0),
          child: Column(
            children: <Widget>[
                Searchbar(),
                SizedBox(height: 20,),
                ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    child: Image.asset('images/sale.png'),
                ),
                SizedBox(height: 20,),
                Container(
                  color: Colors.white,
                  child: TabBar(
                    indicator: ShapeDecoration(shape: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange,
                      width: 6.0),
                    ),),
                  isScrollable: true,
                  labelColor: Colors.black,
                  tabs: <Widget>[
                    Tab(text: 'Atta',),
                    Tab(text:'Besan'),
                    Tab(text: 'Spices',),
                    Tab(text:'Rice'),
                    Tab(text: 'Soda',),
                  ],
                ),
              ),
            Expanded(
              flex: 3,
              child: TabBarView(
                children: <Widget>[
                  Atta(),
                  Besan(),
                  Spices(),
                  Rice(),
                  Soda(),
                ],
              ),
            ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(13.0),topLeft:Radius.circular(13.0)),
            color: Color(0xff52616B),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Rs.',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),),
                  Text('1,233.00',style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight:FontWeight.bold,
                  ),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    child: Icon(Icons.add_shopping_cart,color: Colors.deepOrange[500],size: 20,),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>seventhpage()));
                    },
                  ),
                  SizedBox(height: 5,),
                  Text('Go to Cart',style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//Icon(Icons.add_shopping_cart,color: Colors.deepOrange[500],size: 20,),
//onPressed: (){
//Navigator.push(context,MaterialPageRoute(builder: (context)=>seventhpage()));
//},

//new TextField(
//style: new TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
//decoration: new InputDecoration(
//suffixIcon: Icon(Icons.search,color: Color(0xFFbdc6cf),),
//fillColor: Colors.grey,
//hintText: 'Search Shop',
//hintStyle: TextStyle(
//fontSize: 15,
//),
//contentPadding: const EdgeInsets.only(
//left: 14.0, bottom: 8.0, top: 8.0),
//focusedBorder: OutlineInputBorder(
//borderSide: new BorderSide(color: Colors.white),
//borderRadius: new BorderRadius.circular(15),
//),
//enabledBorder: UnderlineInputBorder(
//borderSide: new BorderSide(color: Colors.white),
//borderRadius: new BorderRadius.circular(15),
//),
//),
//)

//Padding(
//padding: const EdgeInsets.only(left: 20,top:10,bottom: 10,right: 20),
//child: TextField(
//textAlign: TextAlign.start,
//decoration: InputDecoration(
//contentPadding:EdgeInsets.only(left: 8.0),
//border: OutlineInputBorder(
//borderRadius: BorderRadius.all(Radius.circular(10.0)),
//),
//focusedBorder:UnderlineInputBorder(
//borderSide: BorderSide(color: Colors.blueGrey),
//),
//hintText:'Search Shop',
//suffixIcon: Icon(Icons.search,color: Colors.white,),
//),
//cursorColor: Colors.grey,
//style: TextStyle(),
//),
//),