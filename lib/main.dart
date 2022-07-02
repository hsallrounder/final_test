import 'package:final_test/Get_Started.dart';
import 'package:final_test/Training_Completion.dart';
import 'package:final_test/User_Login.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: Get_Started(),
        routes: {
          'GS': (context) => Get_Started(),
          'UL': (context) => User_Login(),
        },
      )
  );
}