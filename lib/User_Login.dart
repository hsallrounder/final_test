import 'package:final_test/Training_Completion.dart';
import 'package:flutter/material.dart';

class User_Login extends StatefulWidget {
  const User_Login({Key? key}) : super(key: key);

  @override
  State<User_Login> createState() => _User_LoginState();
}

class _User_LoginState extends State<User_Login> {
  TextEditingController _name= TextEditingController();
  TextEditingController _email=TextEditingController();
  String? _name_error,_email_error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 83, 225),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("LOGIN", style: TextStyle(color: Color.fromARGB(
                      255, 18, 40, 138), fontSize: 35, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(Icons.person),
                    SizedBox(
                      width: 5,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      controller: _name,
                      decoration: InputDecoration(
                        hintText: "Student Name",
                        errorText: _name_error,
                      ),
                    ),
                SizedBox(
                  height: 30,
                ),
                Icon(Icons.alternate_email),
                SizedBox(
                  width: 5,
                ),
                TextField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email ID",
                    errorText:_email_error,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isEnable() ? Navigator.push(context, MaterialPageRoute(
                            builder: (c) {
                              return Training_Completion(name: _name.text);
                            })) : {
                          if(_name.text.isEmpty) _name_error='Name Can\'t Be Empty',
                          if(_email.text.isEmpty) _email_error='Email ID Can\'t Be Empty'
                        };
                        }); },
                    child: Text("Login"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
                          255, 19, 72, 246)),
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

  bool isEnable() {
    return _name.text.isNotEmpty && _email.text.isNotEmpty;
  }
}
