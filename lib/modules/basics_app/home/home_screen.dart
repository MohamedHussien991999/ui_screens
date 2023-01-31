import 'package:flutter/material.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Stack(
            children: const [
              Image(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/ec/e4/7d/ece47d28801cc919c50bdea6ff658608.jpg")),
              Center(
                child: Text("data",
                    style: TextStyle(fontSize: 40.0, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
