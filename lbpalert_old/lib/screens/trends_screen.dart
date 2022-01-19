import 'package:flutter/material.dart';
import 'package:test_app/widgets/auth/auth_form.dart';

class TrendsScreen extends StatefulWidget {
  @override
  _TrendsScreenState createState() => _TrendsScreenState();
}

class _TrendsScreenState extends State<TrendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.nordic_walking),
                title: Text("Daily Average"),
                trailing: Text('4.00'), // Daily average goes here
              ),
              elevation: 8,
              shadowColor: Colors.green,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.nordic_walking),
                title: Text("Weekly Average"),
                trailing: Text('2.29'), // Weekly average goes here
              ),
              elevation: 8,
              shadowColor: Colors.green,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.nordic_walking),
                title: Text("Monthly Average"),
                trailing: Text('3.55'), // Monthly average goes here
              ),
              elevation: 8,
              shadowColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
