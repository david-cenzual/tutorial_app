import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Text(
                  'MedicNotebook beHIT',
                  style: TextStyle(
                    color: Colors.blueAccent[300],
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
                SizedBox(height:20.0),
                Image.asset('assets/logo-full.png'),
                SizedBox(height:20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Entra la informació necessaria:'),
                  ],
                ),
                SizedBox(height:20.0),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height:10.0),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30.0),
                ElevatedButton(
                  child: Text('Accedir'),
                  onPressed: ()=> Navigator.pushNamed(context, 'home'),
                ),
                SizedBox(height: 30.0),
                TextButton(
                  child: Text('Crea un compte nou'),
                  onPressed: () => Navigator.pushNamed(context, 'register'),
                ),
              ],
            ),
            SizedBox(height:30.0)
          ],
        ),
      ),
    );
  }
}