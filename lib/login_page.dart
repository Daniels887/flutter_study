import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_study/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (text) {
                    email = text;
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                    onPressed: (){
                      if(email == "daniel" && password == "123") {
                       Navigator.of(context).pushReplacementNamed('/home');
                      }
                    }, 
                    child: Text('Entrar')
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}
