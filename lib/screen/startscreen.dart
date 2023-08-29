import 'package:flutter/material.dart';
import 'package:latihan_satu/model/UI/home.dart';
import 'package:latihan_satu/screen/login.dart';
import 'package:latihan_satu/screen/register.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: Container(
        color: Color(0xFFFDEFF4),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/crown.png', // Replace with your crown image path
                width: 300,
                height: 300,
              ),
              Text(
                "Hello!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Best place to write your favourite movie and share your journey in list view",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 74),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 14),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFDEFF4), // Background color of the button (white)
                  onPrimary: Colors.pinkAccent, // Color of the button when pressed (pink)
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 140),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.pinkAccent), // Add a pink border
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
