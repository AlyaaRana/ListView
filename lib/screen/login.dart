import 'package:flutter/material.dart';
import 'package:latihan_satu/model/UI/home.dart';
import 'package:latihan_satu/screen/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget CustomTextField({
    required bool obscureText,
    required String labelText,
  }) {
    return Container(
      margin: EdgeInsets.all(15),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: labelText,
        ),
      ),
    );
  }

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
                width: 200,
                height: 200,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Sign in to continue",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 30),
              CustomTextField(obscureText: false, labelText: "username"),
              SizedBox(height: 3.0),
              CustomTextField(obscureText: true, labelText: "password"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15), // Sesuaikan margin sesuai kebutuhan
                child: Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text("Keep me logged in"),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
              SizedBox(height: 10.0),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Register",
                        style: TextStyle(
                          color: Colors.blue, // Mengatur warna teks "Register" menjadi biru
                        ),
                      ),
                    ],
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
