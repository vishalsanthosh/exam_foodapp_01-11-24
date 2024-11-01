import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mini_project4/login.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late Box box;
  TextEditingController name=TextEditingController();
  TextEditingController mob=TextEditingController();
  TextEditingController pass=TextEditingController();
  TextEditingController cpass=TextEditingController();
  List<Map<String,String>>infoS=[];
  String _regMsg="";
  @override
  void initState(){
    super.initState();
    box=Hive.box('mybox');
  }
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text("CREATE A NEW ACCOUNT"),
        SizedBox(height: 20,),
        TextFormField(
          controller: name,
          decoration: InputDecoration(border: OutlineInputBorder(),
          hintText: "Enter Full Name"
          ),
        ),
         SizedBox(height: 20,),
        TextFormField(
          controller: mob,
          decoration: InputDecoration(border: OutlineInputBorder(),
          hintText: "Phone Number"
          ),
        ),
         SizedBox(height: 20,),
        TextFormField(
          controller: pass,
          decoration: InputDecoration(border: OutlineInputBorder(),
          hintText: "Enter Password"
          ),
        ),
         SizedBox(height: 20,),
        TextFormField(
          controller: cpass,
          decoration: InputDecoration(border: OutlineInputBorder(),
          hintText: "Confirm Password"
          ),
          onChanged: (value) {
            setState(() {
              _regMsg="";
            });
          },
        ),
        SizedBox(height: 20,),
        GestureDetector(
          onTap: (){
           setState(() {
                      if (
                         name.text.isEmpty ||
                            mob.text.isEmpty ||
                            pass.text.isEmpty ||
                            cpass.text.isEmpty ) {
                          _regMsg= "All fields are required.";
                          return;
                     }
                     if ( pass.text !=
                             cpass.text) {
                          _regMsg = "Passwords do not match.";
                          return;
                        }

                         infoS.add({
                          'fullname':  name.text,
                          
                          'password': pass.text,
                          'confirm':cpass.text,
                          'phone': mob.text
                        });
                         box.put(
                          'infoList',
                         infoS
                              .map((e) => Map<String, dynamic>.from(e))
                              .toList(),
                        );

                        
                           name.clear();
                           pass.clear();
                          cpass.clear();
                          mob.clear();
                           _regMsg = "Registration Successful";

                     Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));


                    });
                    print("Registered Items:$infoS");
          },
          child: Container(
            height: 40,
            width: 90,
            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(8)),
            child: Center(child: Text("Sign up",style: TextStyle(color: Colors.white),)),
          
          ),
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text("Go Back..",style: TextStyle(color: Colors.red),))
        ],
      ),
    ),
    );
  }
}