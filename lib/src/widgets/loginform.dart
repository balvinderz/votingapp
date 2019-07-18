import 'package:flutter/material.dart';
import 'package:votingapp/src/models/login.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';
class LoginForm extends StatefulWidget
{
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  Login login =Login();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(

      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
        child: Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8.0),
                child: Center(
                child: Text("LOGIN",style: TextStyle(color: Colors.blue,fontSize: 30.0),),
          ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  initialValue: "MUEL",
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter Username"
                  ),
                  onSaved: (value){
                    login.username=value;
                  },
                  validator: (value)
                  {
                    if(value.isEmpty)
                      return 'Please enter Username';
                    else
                      if(!value.startsWith("MUEL"))
                        return "Username should start with MUEL";
                      else
                        if(value.length!=7)
                          return "Invalid Username";
                      return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter Password",

                  ),
                  obscureText: true,
                  validator: (value)
                  {
                    if(value.isEmpty)
                      return 'Password cannot be empty';
                    else
                      return null;
                  },
                  onSaved: (value)
                  {
                    login.password=value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(onPressed: (){

                  if(_formKey.currentState.validate())
                      _formKey.currentState.save();
                  if(tryLoggingIn(login))
                    print("soja");
                  else
                    print("marja");
                },
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 15.0),),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
  bool tryLoggingIn(Login login)
  {
    return true;
  }
  

}