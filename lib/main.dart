   import 'package:admin_panel/drawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Admin panel';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      debugShowCheckedModeBanner: false,
      
    
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin panel', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
      backgroundColor: Colors.orange.shade100,
      ),
      
      drawer: drawer(),
    body:  Center(  
          child: GridView.extent(  
            primary: false,  
            padding: const EdgeInsets.all(16),  
            crossAxisSpacing: 10,  
            mainAxisSpacing: 10,  
            maxCrossAxisExtent: 200.0,  
            children: <Widget>[  
              Container(  
                padding: const EdgeInsets.all(8),   
                color: Colors.orangeAccent, 
                child: Column(
               children:[

                  //make Icon Clickable
                  InkWell(
                    child: Icon(Icons.add,size: 60,),
                    onTap: (){
                       
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Add Product', style: TextStyle(fontSize: 20)),
            ]),
                
              ),  

              Container(  
                padding: const EdgeInsets.all(8),    
                color: Colors.orangeAccent,  
                child: Column(
               children:[

                  //make Icon Clickable
                  InkWell(
                    child: Icon(Icons.delete , size: 60,),
                    onTap: (){
                       
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Delete Product', style: TextStyle(fontSize: 20)),
            ]),
              ),  
              Container(  
                padding: const EdgeInsets.all(8),    
                color: Colors.orangeAccent,  
                child: Column(
               children:[

                  //make Icon Clickable
                  InkWell(
                    child: Icon(Icons.person ,size: 60,),
                    onTap: (){
                       
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Customer Details', style: TextStyle(fontSize: 20)),
            ]),
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                color: Colors.orangeAccent, 
                child: Column(
               children:[

                  //make Icon Clickable
                  InkWell(
                    child: Icon(Icons.sell , size: 60,),
                    onTap: (){
                       
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Sold Product Details', style: TextStyle(fontSize: 20)),
            ]), 
              ),  
              Container(  
                padding: const EdgeInsets.all(8),   
                color: Colors.orangeAccent,  
                child: Column(
               children:[

                  //make Icon Clickable
                  InkWell(
                    child: Icon(Icons.select_all,size: 60,),
                    onTap: (){
                       
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Order Details', style: TextStyle(fontSize: 20)),
            ]),
              ),  
              Container(  
                padding: const EdgeInsets.all(8),    
                color: Colors.orangeAccent,  
                child: Column(
               children:[

                  //make Icon Clickable
                  InkWell(
                    child: Icon(Icons.payment , size: 60,),
                    onTap: (){
                       
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Payment Details', style: TextStyle(fontSize: 20)),
            ]),
              ),  
            ],  
          )),  

  );
  }
} 