import 'package:flutter/material.dart';

class Persegi extends StatefulWidget {
  @override
  _PersegiState createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  var sisi = 0, hasil = 0;
  double hasilL = 0;

  final TextEditingController s = new TextEditingController();

  void keliling() {
    setState(() {
      sisi = int.parse(s.text);
      hasil = 4 * sisi;
    });
  }

  void luas() {
    setState(() {
      sisi = int.parse(s.text);
      hasil = sisi * sisi;
    });
  }

  void hapus() {
    setState(() {
      s.text = "";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Persegi"),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(30.0),
            child: new Column(
              children: <Widget>[
                new Text("Persegi",
                    style: new TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold)),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
                  child: new Text("2. Rumus Persegi",
                      style: new TextStyle(fontSize: 23.0)),
                ),
                new Text("Keliling : 4 * S \nb. Luas : S x S",
                    style: new TextStyle(fontSize: 18.0)),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, bottom: 20.0),
                  child: new Text("Keterangan :  \ns = Sisi",
                      style: new TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                new Text(
                  "1. Menghitung Keliling",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                      fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                new TextField(
                  controller: s,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      hintText: "Masukan sisi",
                      labelText: "Sisi :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new Row(
                  children: <Widget>[
                    new MaterialButton(
                      onPressed: keliling,
                      child: new Text("Hitung"),
                      color: Colors.blue,
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(right: 20.0),
                    ),
                    new MaterialButton(
                      onPressed: hapus,
                      child: new Text("Hapus"),
                      color: Colors.red,
                    )
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new Text(
                  "Hasil Keliling : $hasil",
                  style: new TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 30.0),
                ),
                new Text("2. Menghitung Luas",
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.bold)),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextField(
                  controller: s,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      hintText: "Masukan Sisi :",
                      labelText: "Sisi :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new Row(
                  children: <Widget>[
                    new MaterialButton(
                      onPressed: luas,
                      child: new Text("hitung"),
                      color: Colors.blue,
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(right: 20.0),
                    ),
                    new MaterialButton(
                      onPressed: hapus,
                      child: new Text("Hapus"),
                      color: Colors.red,
                    )
                  ],
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Text(
                  "Hasil : $hasilL",
                  style: new TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}