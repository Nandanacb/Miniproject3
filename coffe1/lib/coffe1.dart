import 'package:coffe1/database.dart';
import 'package:flutter/material.dart';

class Coffe1Example extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      backgroundColor: Colors.black,
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
        children: [
        
            Center(
              child: Text("Cart",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color:  Colors.white)),
              ),
              SizedBox(height: 20),
          
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index){
              return SizedBox(height: 25);
            },
            itemCount:3,
            itemBuilder:(context,index){
              return Container(
                height: 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.grey),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                     Container(
                        height: 125,
                        width: 110,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage( Database.mycoffie[index]["image"]),
                        fit: BoxFit.cover),
                        color: Colors.red),
                        
                      ),
                      SizedBox(width: 10),
                    
                    
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                       SizedBox(height: 5),
                        Text(Database.mycoffie[index]["name"],
                        style: TextStyle(fontSize: 10,
                        fontWeight:FontWeight.bold,
                        color: Colors.white
                        ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(height: 35),
                        
                        
                        Row(
                          children: [
                            Icon(Icons.currency_rupee,color: Colors.white),
                            Text(Database.mycoffie[index]["price"],style: TextStyle(fontSize: 15,color: Colors.white),),
                          ],
                        ),
                        ],
                                            
                      ),
                      SizedBox(width: 8),    
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                         
                          children: [
                            Container(
                              height: 50,
                              width: 120,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                              color: Colors.green,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                    child: Center(
                                      child: Text('-',style: TextStyle(fontSize: 20),),
                                    ),
                                  ),
                                  Text('1',style: TextStyle(fontSize: 20,color: Colors.white),),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Text('+',style: TextStyle(fontSize: 20),),
                                    ),
                                  ),
                                ],
                              ),
                              
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
                            
                            Text("2" ,style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                          
                  
                    ],
                  ),
                ),
              );
            
            }),
        ],
      ),
    );
  }
}