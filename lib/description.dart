import 'package:flutter/material.dart';

class DescriptionScreen extends StatefulWidget {
   final String imagepath;

  final String name;

  

  final String price;
  const DescriptionScreen({super.key, required this.imagepath,required this.name,required this.price});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Details"),centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,))
        ],
      ),
      body: Padding(
        
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          
          child: Column(
            
            children: [
              Container(
                
                height: 300,
                width: double.infinity,
              child: Image.asset(widget.imagepath),
              ),
              SizedBox(height:5 ,),
              Row(
                children: [
                  Text(widget.name,style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text("\$${widget.price}",style: TextStyle(color: Colors.red,fontSize: 26),)
                  
                ],
                
              ),
              SizedBox(height: 2,),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,size: 15,),
                  SizedBox(width: 3,),
                   Icon(Icons.star,color: Colors.yellow,size: 15,),
                  SizedBox(width: 3,),
                   Icon(Icons.star,color: Colors.yellow,size: 15,),
                  SizedBox(width: 3,),
                   Icon(Icons.star,color: Colors.yellow,size: 15,),
                  SizedBox(width: 3,),
                   Icon(Icons.star,color: Colors.yellow,size: 15,),
                  
                  
          
                ],
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Ingredients",style: TextStyle(fontSize: 18),),
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                          child: Image.asset("assets/images/ccartoon.jpg"),
                          
                        ),
                        Spacer(),
                                            Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                          child: Image.asset("assets/images/steak.jpeg"),
                          
                        ),
                        Spacer(),                    Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                          child: Image.asset("assets/images/onion.jpg"),
                          
                        ),
                        Spacer(),                    Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                          child: Image.asset("assets/images/tomato.png"),
                          
                        ),
                        
                        
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Descriptions",style: TextStyle(fontSize: 18),),
              SizedBox(height: 8,),
              Text('''This beef burger uses 100% quality beef with
              sliced tomatoes,cucumbers,vegtables and onions...''',maxLines:3 ,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey),),
                          Text("Read more",style: TextStyle(color: Colors.red),),

                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration
                                          (color: Colors.white,borderRadius: BorderRadius.circular(6),boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(255, 211, 205, 205),spreadRadius: 5,blurRadius: 7,offset: Offset(0, 3)
                                            )
                                          ]),
                                           child: Row(
                                            children: [
                                              IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                                              Spacer(),
                                              Text("1"),
                                              Spacer(),
                                              IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.red,))
                                            ],
                                           )
                                           
                                ),
                                Spacer(),
                                Container(
                                  decoration:  BoxDecoration
                                          (color: Colors.red,borderRadius: BorderRadius.circular(6),boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(255, 211, 205, 205),spreadRadius: 5,blurRadius: 7,offset: Offset(0, 3)
                                            )
                                          ]),
                                  height:40,
                                  width: 150,
                                  child: Center(child: Text("Add to cart",style: TextStyle(color: Colors.white),)),
                                )
                              ],
                            ),
                          )
          
            ],
          ),
        ),
      ),
    );
  }
}