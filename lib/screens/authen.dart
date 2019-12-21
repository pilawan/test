import 'package:flutter/material.dart';
import 'package:jotour/screens/register.dart';
import 'package:jotour/utility/my_style.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
// Field
  Widget showlogo() {
    return Container(
        width: 120, height: 120, child: Image.asset('img/logo.png'));
  }

// Method
  Widget showAppName() {
    return Text(
      'kik tour',
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.blue),
    );
  }

  Widget signInbutton() {
    return RaisedButton(
      color: Mystyle().textcolor,
      child: Text('Sign In'),
      onPressed: () {},
    );
  }

  Widget signUpbutton() {
    return OutlineButton(
      child: Text('Sign Up'),
      onPressed: () {
        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) {  
              return Register();
            }
            );
            Navigator.of(context).push(materialPageRoute);
      },
    );
  }

  Widget userForm() {
    return Container(
      width: 250.0,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'user :',
        ),
      ),
    );
  }

  Widget passForm() {
    return Container(
      width: 250.0,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Password :',
        ),
      ),
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        signInbutton(),
        SizedBox(
          width: 5,
        ),
        signUpbutton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('img/viwe.jpg'), fit: BoxFit.cover)),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 255, 255, 255),
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    showlogo(),
                    showAppName(),
                    userForm(),
                    passForm(),
                    showButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
