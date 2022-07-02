import 'package:flutter/material.dart';

class Training_Completion extends StatelessWidget {
  String? name;
  Training_Completion({Key? key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hi, ${name}!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
            ),
            SizedBox(
              height: 30,
            ),
            Image(
              image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/002/349/754/original/modern-elegant-certificate-template-free-vector.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                  "You have sucessfully completed Hybrid Mobile App Development Course."),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "INSTRUCTOR NAME",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Pankaj Kapoor",
                      style: TextStyle(color: Colors.deepPurpleAccent),
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: Text(
                "Date: ${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
