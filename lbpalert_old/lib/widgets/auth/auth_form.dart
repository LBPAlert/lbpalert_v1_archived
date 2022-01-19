import 'package:flutter/material.dart';
import 'package:test_app/screens/tabs_screen.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();

  var _isLogin = true;

  String _userEmail = '';
  String _confirmPassword = '';
  String _userPassword = '';

  void _trySubmit() {
    //final isValid = _formKey.currentState.validate();
    //FocusScope.of(context).unfocus();
    // if (isValid) {
    //   _formKey.currentState.save();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    key: ValueKey('email'),
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      //_userName = value;
                    },
                  ),
                  TextFormField(
                    key: ValueKey('password'),
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    onSaved: (value) {
                      //_userPassword = value;
                    },
                    obscureText: true,
                  ),
                  if (!_isLogin)
                    TextFormField(
                      key: ValueKey('confirm'),
                      decoration: InputDecoration(
                        labelText: ' Confirm password',
                      ),
                      onSaved: (value) {
                        //_confirmPassword = value;
                      },
                      obscureText: true,
                    ),
                  SizedBox(
                    height: 12,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TabsScreen()));
                    },
                    child: Text(_isLogin ? 'Login' : 'Sign Up'),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        _isLogin =
                            !_isLogin; // changes form from login to sign up state
                      });
                    },
                    child: Text(_isLogin
                        ? 'Create New Account'
                        : 'Already have an account?'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
