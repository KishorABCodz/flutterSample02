import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Gloal fitness')),
        drawer: MenuDrawer(),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assests/bg.jpg'), fit: BoxFit.cover)),
          child: Center(
              child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(136, 121, 105, 192),
            ),
            child: Text('commit to the fitness and make your like beay',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  shadows: [
                    Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2.0,
                        color: Colors.grey),
                  ],
                )),
          )),
        ));
  }
}
