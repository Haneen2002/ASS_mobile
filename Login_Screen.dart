import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _nameController.text.trim();
    String password = _passwordController.text.trim();

    // Perform validation
    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter username and password')),
      );
      return;
    }

    
    print('Username: $username, Password: $password');

    // Clear text fields after login
    _nameController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Screen APP',
          style: TextStyle(color: Colors.white), 
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white, 
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Codeplayon',
                style: TextStyle(
                  color: Colors.blue, 
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
                fillColor: Colors.white, 
                filled: true,
              ),
            ),
            SizedBox(height: 10), 
            TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                fillColor: Colors.white, 
                filled: true,
              ),
            ),
            SizedBox(height: 20), 
            TextButton(
              onPressed: () {
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(height: 10), 
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
              ),
              child: Text('Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Does not have an account?',
                  style: TextStyle(color: Colors.black), 
                ),
                TextButton(
                  onPressed: () {
                    // Implement sign up logic
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 16, color: Colors.blue), 
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
