import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  Login({Key? key}) : super(key:key);

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child:
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        border : OutlineInputBorder(),
                        hintText: 'Username'
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border : OutlineInputBorder(),
                      hintText: 'Password'
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                        checkLogin(context);
                    },
                    icon: const Icon(Icons.check),
                    label: const Text("Login"),
                    )
            ]),
          ),
          )
    );
  }
  void checkLogin(BuildContext ctx){
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if(_username == _password){
      // Go to Home
    }
    else{
      final _errorMessage = "Username password doesnot match";
      // Snack Bar
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(10), 
          content: Text(_errorMessage),
          duration: Duration(seconds: 3),
          )
      );
  
      showDialog(context: ctx, builder: (ctx1){
          return AlertDialog(
            title: Text("Error"),
            content: Text(_errorMessage),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx1).pop();
                }, 
                child: Text("Close"),)
            ],
          );
      });
    }
  }
}