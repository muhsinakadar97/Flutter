import 'package:broto_demo/Login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget{
  const Splash({Key? key}) : super(key:key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>{
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }

@override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Image.asset('assets/dp.jpg'),),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Login()));
  }
}
