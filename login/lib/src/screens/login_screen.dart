import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  createState() {
      return LoginScreenState();
    }
}
class LoginScreenState extends State<LoginScreen>{
  Widget build(context){
    final formKey = GlobalKey<FormState>();

    return Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
            child: Column(children: [
                emailField(),
                passwordField(),
                Container(margin: EdgeInsets.only(top:20.0)),
                submitButton(),
              // SizedBox(height: 10),
              ]),
        ),
    );
  }

Widget emailField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'Email Address',
      hintText: 'you@example.com',
    ),
  );
}
Widget passwordField() {
  return Container(
    margin: EdgeInsets.only(bottom: 25.0),
    child: TextFormField(
    obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),),
  );
  

}
Widget submitButton() {
  return ElevatedButton(
    child: Text('Submit!'),
    onPressed: () {},
      style: ElevatedButton.styleFrom(
      primary: const Color.fromARGB(255, 202, 18, 18), // Background color
    ),

  );
}
}