import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/bottom_nav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController =TextEditingController();
  final TextEditingController _passwordController =TextEditingController();

  String username = 'admin';
  String password = '1234';
  //function to login
  void _Login(){
if (_usernameController.text == username &&
    _passwordController.text == password){
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=> BottomNav()),
      );
    }else {ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.brown,
    content:Text('Invalid Username or Password'),
    ),
    );
    }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 224, 224),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.anchor, size: 80, color: Colors.brown),
                SizedBox(height: 35),
                Text("Welcome back you've been missed!"),
                SizedBox(height: 25),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Email',                                                                                                                                                    
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,   
                  child: Text('Forgot Password?'),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: _Login,
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    color: Colors.brown,
                    child: Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
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