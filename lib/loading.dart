import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              
              
              child: Image.asset("assets/images/frnt.jpg"),
            ),
            
          ),
          Text("The Fastest Food\nDelivery App in Town",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text("Pick your desired food items from the menu\nThere are more than 200 items",style: TextStyle(color: Colors.grey,fontSize: 15),),
         SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(6)),
              height: 60,
              width: double.infinity,
              child: Center(child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 20),)),
            ),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              SizedBox(width: 5,),
              Text("Sign Up",style: TextStyle(color: Colors.red),)
            ],
          )
        ],
      ),
    );
  }
}