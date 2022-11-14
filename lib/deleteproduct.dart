import 'package:admin_panel/main.dart';
import 'package:flutter/material.dart';

class deleteproduct extends StatefulWidget {
  const deleteproduct({Key? key}) : super(key: key);

  @override
  State<deleteproduct> createState() => _deleteproductState();
}

class _deleteproductState extends State<deleteproduct> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Delete Product', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.orange.shade100,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ));
              },
            )
          ],
        ),
        body:  Container(
          padding: EdgeInsets.only(top:200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Center(
                child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 330,
                        child: ElevatedButton(onPressed: (){}, child: Text('Delete Product'),
                        style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                        )
                        ),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}