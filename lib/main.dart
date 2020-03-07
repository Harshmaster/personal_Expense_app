import 'package:flutter/material.dart';
import 'package:personalexpense/widgets/user_transactions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
              color: Colors.white,
            ),
          ],
          title: Container(
            child: Text(
              'Expense Manager',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            width: double.infinity,
          ),
          backgroundColor: Colors.purple,
        ),
        body:SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Container(
                child: Card(
                  color: Colors.blue,
                  child: Text('CHART!'),
                  elevation: 5,
                ),
                width: double.infinity,
              ),
              UserTransactions(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
          backgroundColor: Colors.purple,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'PEROSNLAPP',
    );
  }
}
