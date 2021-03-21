import 'package:flutter/material.dart';
import 'package:tutorial_app/src/model/user.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {

    User user = User();
    
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
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
                    Text('Proporciona la informació necessaria:'),
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
                  child: Text('Registrar'),
                  onPressed: (){
                    user.email = _emailController.toString();
                    user.password = _passwordController.toString();
                  },
                ),
                SizedBox(height: 30.0),
                TextButton(
                  child: Text('Torna a la pagina d\'accés'),
                  onPressed: () => Navigator.pop(context),
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