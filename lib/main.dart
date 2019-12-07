import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Aplicativo Contador", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Home> {
  int _pessoas = 0;
  String  _infoTexto = ("Pode entrar");




  void _changepessoas (int delta){
    setState(() {
      _pessoas += delta;

      if(_pessoas < 0){
        _infoTexto = ("Ta ruim viu !");
      }else if(_pessoas > 10){
        _infoTexto = ("Agora melhorou !");
      }else{
        _infoTexto = ("Pode entrar");
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/imagesApp1Flutter.png",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoa: $_pessoas",
              style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: FlatButton(
                    child: Text("+1",
                        style: TextStyle(fontSize: 40.0, color: Colors.teal)),
                    onPressed: () {
                      _changepessoas(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: FlatButton(
                    child: Text("-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.teal)),
                    onPressed: () {
                      _changepessoas(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infoTexto,
              style: TextStyle(
                  color: Colors.teal,
                  fontStyle: FontStyle.italic,
                  fontSize: 30),
            ),
          ],
        ),
      ],
    );
  }
}
