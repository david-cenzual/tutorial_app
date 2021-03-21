import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(
            child: Column(
              children: <Widget>[
                //_dia(),
                //_graus(),
                //_sugarInBlood(),
                //_pressure(),
              ],
            ), 
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }

  Widget _dia() {
  }

  Widget _sugarInBlood() {}

  Widget _graus() {}

  Widget _pressure() {}
  
}