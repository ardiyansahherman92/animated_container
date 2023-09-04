import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool toogle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animater Container"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
            toogle = !toogle;
            print(toogle);
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            curve: Curves.elasticOut,
            height: toogle ? 100 : 200,
            width: toogle ? 100 : 200,
            color: toogle ? Colors.black : Colors.blue,
          ),
        ),
      ),
    );
  }
}
