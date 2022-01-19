import 'package:flutter/material.dart';
import 'package:test_app/widgets/auth/auth_form.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            SizedBox(
              height: 75,
            ),
            Container(
              height: 300,
              width: 400,
              child: Text('Display Data Here'),
              color: Colors.blue,
              padding: EdgeInsets.all(20),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Container(
                  child: Text('Back score here'),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(40),
                ),
                Container(
                  child: Text('Back color here'),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(40),
                )
              ],
            )
          ],
        ));
  }
}
