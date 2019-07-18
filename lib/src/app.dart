import 'package:flutter/material.dart';

import 'widgets/loginform.dart';
class App extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login',style: TextStyle(color: Colors.black),),
          leading: Image.asset("assets/images/logo.jpg"),
          backgroundColor: Colors.white,

        ),
        body: ListView(
          children: <Widget>[
            Center(child: Image.asset("assets/images/logo.jpg",width: 150,height: 150,)),

            Padding(
              padding: EdgeInsets.only(top: 10.0),
                child: Center(child: Text("University of Mumbai"),)),
            Center(
              child: LoginForm(

              ),
            )
          ],
        ),
      ),
    );
  }
}
