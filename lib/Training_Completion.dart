import 'package:flutter/material.dart';


class Training_Completion extends StatelessWidget {
  String name;
  Training_Completion({required Key key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("HI, $name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),),
            SizedBox(
              height: 10,
            ),
            Image(image: NetworkImage("https://static.vecteezy.com/system/resources/previews/002/349/754/original/modern-elegant-certificate-template-free-vector.jpg"),),
            SizedBox(
              height: 20,
            ),
            Text("You have sucessfully completed Hybrid Mobile App Development Course."),
            SizedBox(
              height: 20,
            ),
            Text("INSTRUCTOR NAME"),
            Text("Pankaj Kapoor", style: TextStyle(color: Colors.deepPurpleAccent),),

            Container(
              alignment: Alignment.bottomRight,
              child: Text("Date: ${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}", style: TextStyle(fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
