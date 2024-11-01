import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mini_project4/list.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Box box;
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  String _logIn="";
  void initState(){
    super.initState();
    box=Hive.box('mybox');
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Welcome...",style: TextStyle(color: Colors.red),),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: username,
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Enter Username"),
              onChanged: (text) {
                setState(() {
                  _logIn="";
                });
              },
            ),
            SizedBox(height: 15,),
            TextFormField(
              controller: password,
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Enter Password"),
              onChanged: (text) {
                setState(() {
                  _logIn="";
                });
              },
            ),
            SizedBox(height: 20,),
            Container(
              height: 40,
              width: 90,
              decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(6)),
              child: Center(child: GestureDetector(
                onTap: () {
                  List<dynamic>userDynamic=box.get('infoList',defaultValue:[]);
                  List<Map<String,String>>userList=userDynamic.map((e)=>Map<String,String>.from(e as Map)).toList();
                  bool userError=false;
                  bool passError=false;
                    for(var user in userList){
                  if(
                    user['fullname']==username.text
                  ){
                    userError=true; 
                  if
                  (user['password']==password.text
                  ){
                    passError=true;
                    break;
                    
                  }}
                }
                if(userError&&passError){
                  setState(() {
                    _logIn="LOGGED IN";
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreenList()));
                  username.clear();
                  password.clear();
                }
                else if (userError){
                  setState(() {
                    _logIn="Incorrect password";

                  });
                  
                }else{
                  setState(() {
                    _logIn="User not found";
                  });
                }
                },
                child: Text("Sign In",style: TextStyle(color: Colors.white),))),
            )
          ],
        ),
      ),
    );
  }
}