import 'package:flutter/material.dart';
import 'package:tutorial_app/src/model/data.dart';


class DataPage extends StatefulWidget {
  const DataPage({Key key}) : super(key: key);

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {

  Information _information = Information();
  List<String> _bloodType = ['O−','O+','A−','A+','B−','B+','AB−','AB+'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              children: <Widget>[
                _weight(),
                SizedBox(height: 20.0),
                _sugarInBlood(),
                SizedBox(height: 20.0),
                _temperatura(),
                SizedBox(height: 20.0),
                _dropdown(),
                SizedBox(height: 20.0),
                _comments(),
                ElevatedButton(
                  child: Text('Guardar dades'),
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _weight() {
    return TextFormField(
      initialValue: _information.weight.toString(),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left:20.0),
        labelText: 'Pes actual'
      ),
      // onSaved(){}
    );
  }

  Widget _sugarInBlood() {
    return TextFormField(
      initialValue: _information.sugar.toString(),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left:20.0),
        labelText: 'Sucre en sang'
      ),
      // onSaved(){}
    );
  }

  Widget _temperatura() {
    return TextFormField(
      initialValue: _information.temperature.toString(),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left:20.0),
        labelText: 'Temperatura'
      ),
      // onSaved(){}
    );
  }

  Widget _comments() {
    return TextFormField(
      initialValue: _information.comment.toString(),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left:20.0),
        labelText: 'Comentaris adicionals',
      ),
      minLines: 1,
      maxLines: 6,
      maxLength: 280,
      onSaved: (value) => null,
      // validator(){}
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {

    List<DropdownMenuItem<String>> list = [];

    _bloodType.forEach( (blood){
      list.add( DropdownMenuItem(
        child: Text(blood),
        value: blood,
      ));
    });

    return list;
  }

  Widget _dropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.healing),
        SizedBox(width: 30.0),   
        Expanded(
          child: DropdownButton(
            value: _information.bloodType,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() {
                _information.bloodType = opt;
              });
            },
          ),
        ),
      ],
    );
  }
}