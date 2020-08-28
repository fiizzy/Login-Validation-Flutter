import 'package:flutter/material.dart';
import 'package:login_validation/gradient.dart';

class LoginApp extends StatefulWidget {
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Login App'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              // decoration: gradient,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (!value.contains('@')) {
                            return 'Enter a valid email address';
                          } else
                            return '';
                        },
                        decoration: InputDecoration(
                            labelText: 'Email Address',
                            hintText: 'Enter email address',
                            border: const OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.numberWithOptions(),
                        obscureText: true,
                        validator: (value) {
                          if (value.length < 8) {
                            return 'Password must be at least 8 Characters';
                          } else
                            return '';
                        },
                        decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter Password',
                            border: const OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                        color: Colors.blueAccent,
                        child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(child: Text('LOGIN BUTTON'))),
                        onPressed: () {
                          formKey.currentState.validate();
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
