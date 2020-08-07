import 'package:flutter/material.dart';

class UserGreetingBar extends StatefulWidget {
  @override
  _UserGreetingBarState createState() => _UserGreetingBarState();
}

class _UserGreetingBarState extends State<UserGreetingBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/User.jpg"),
          ),
          title: Text("Good Morning"),
          subtitle: Text(
            "Michael",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          trailing: IconButton(
            onPressed: () {
              print("Location Pressed");
            },
            icon: Icon(
              Icons.location_on,
              size: 30,
            ),
            color: Color(0xffF26016),
          )),
    );
  }
}
