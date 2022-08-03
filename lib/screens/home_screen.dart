import 'package:flutter/material.dart';
import 'package:xylophone_flutter_music/screens/splash_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: Color(0XFF07093F),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        width: 200.0,
        height: 170.0,
        decoration: BoxDecoration(
          color: Color(0xFF1F1F53),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => const XylophoneApp()))
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
