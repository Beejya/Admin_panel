import 'package:admin_panel/main.dart';
import 'package:flutter/material.dart';

class addproduct extends StatefulWidget {
  const addproduct({Key? key}) : super(key: key);

  @override
  State<addproduct> createState() => _addproductState();
}

class _addproductState extends State<addproduct> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Add Product',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
        body: Form(
          key: _formKey,
          child: Column(
          children: [
          Container(
            margin: EdgeInsets.all(24),
            child: TextFormField(
               
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Product Name',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(24),
            child: TextFormField(
               
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter  Product Price',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(24),
            child: TextFormField(
               
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Product Descriptions',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(24),
            child: TextFormField(
               
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Product Category',
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
                width: 330,
                child: ElevatedButton(onPressed: (){}, child: Text('Upoad Photo'),
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue.shade500),
              ),
                )
                ),
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SizedBox(
              height: 50,
                width: 330,
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Add Product'),
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
            ),
          ),
          )]
        )
        ),
      ),
    );
  }
}
