import 'package:flutter/material.dart';
import 'package:mini_project4/database.dart';
import 'package:mini_project4/description.dart';

class MainScreenList extends StatefulWidget {
  const MainScreenList({super.key});

  @override
  State<MainScreenList> createState() => _MainScreenListState();
}

class _MainScreenListState extends State<MainScreenList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.list)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              foregroundImage: AssetImage("assets/images/dp.jpeg"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Delicious food ready to\ndelivered for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(height: 8),
            Container(
              decoration:BoxDecoration
              (color: Colors.white,borderRadius: BorderRadius.circular(6),boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 211, 205, 205),spreadRadius: 5,blurRadius: 7,offset: Offset(0, 3)
                )
              ]),
              height: 48,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.search,color: const Color.fromARGB(255, 80, 77, 77),),
                    SizedBox(width: 5,),
                    Text("search...",style: TextStyle(color: const Color.fromARGB(255, 80, 77, 77)),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 18,),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(3),boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 223, 217, 217),spreadRadius: 5,blurRadius: 7,offset: Offset(0, 3)
                )
              ]),
                  height: 30,
                  width: 90,
                  child: Center(child: Text("Burger",style: TextStyle(color: Colors.white),)),
                ),
              Spacer(),
                 Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(3),boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 219, 214, 214),spreadRadius: 5,blurRadius: 7,offset: Offset(0, 3)
                )
              ]),
                  height: 30,
                  width: 90,
                  child: Center(child: Text("Pizza",style: TextStyle(color: const Color.fromARGB(255, 73, 71, 71)),)),
                ),
                Spacer(),
                 Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(3),boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 218, 212, 212),spreadRadius: 5,blurRadius: 7,offset: Offset(0, 3)
                )
              ]),
                  height: 30,
                  width: 90,
                  child: Center(child: Text("Soups",style: TextStyle(color: const Color.fromARGB(255, 71, 70, 70)),)),
                ),
                
              ],
            ),
            SizedBox(height: 20,),
            Text("Most Popular",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
            Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 26,
            crossAxisSpacing: 16,),itemCount:4 , itemBuilder: (context,index){
              return Container(
                
                decoration: BoxDecoration
              (color: Colors.white,borderRadius: BorderRadius.circular(6),boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 211, 205, 205),spreadRadius: 5,blurRadius: 7,offset: Offset(0, 3)
                )
              ]),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionScreen(imagepath: Database.myList[index]["img"],
                       name: Database.myList[index]["n1"],
                  
                         price: Database.myList[index]["price"])));
                    }
                    ,child: Image.asset(Database.myList[index]["img"],height: 75,width: double.infinity,)),
                  
                  Text(Database.myList[index]["n1"],style: TextStyle(fontSize: 14),),
                
                  Text(Database.myList[index]["n2"],style: TextStyle(color: Colors.grey,fontSize: 12),),
                  
                  Row(
                    children: [
                    
                      Text("   \$ ${Database.myList[index]["price"]}",style: TextStyle(color: Colors.red,fontSize: 16),),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.red,size: 16,))
                    ],
                  )
                ],
              ),
              );
              
            }))
          ],
        
        ),
        
      ),
    );
  }
}