import 'package:flutter/material.dart';

class Get_Started extends StatefulWidget {
  const Get_Started({Key? key}) : super(key: key);

  @override
  State<Get_Started> createState() => _Get_StartedState();
}

class _Get_StartedState extends State<Get_Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome!"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "TRAINING",
                      style: TextStyle(
                        color: Color.fromARGB(255, 50, 44, 106),
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    Image(
                      image: AssetImage("assets/greet.png"),
                      width: 293,
                      height: 300,
                    ),
                    Container(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(context, 'UL');
                          });
                          },
                        child: Text("Get Started"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 50, 44, 106)),
                          shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
