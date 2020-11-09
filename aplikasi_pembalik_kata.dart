import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pembalik Kata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String name = '';
  String text = '';

  void onPressed() {
    setState(() {
      this.text = "";
      int jumlahkata = name.length;
      List<String> pembalik = new List();
      pembalik = name.split('');
      for (int i = (jumlahkata - 1); i >= 0; i--) {
        this.text += pembalik[i];
      }
    });
  }

  void onChanged(String value) {
    setState(() {
      this.name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Pembalik Kata :v'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (String value) {
              onChanged(value);
            },
            decoration: InputDecoration(
                hintText: 'Ketik kata yang ingin di balik disini',
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                )),
          ),
          RaisedButton(
            child: Text('Balik kata :v'),
            onPressed: () {
              onPressed();
            },
          ),
          Container(
            height: 15.0,
          ),
          Text(this.text),
        ],
      ),
    );
  }
}
