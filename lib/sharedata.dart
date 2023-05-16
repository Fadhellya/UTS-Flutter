import 'package:flutter/material.dart';
import 'package:utsmuhamadfadhel/input.dart';

class MyShareData extends StatelessWidget {
  String namahardware;
  String jenis;
  String harga;
  String produsen;
  String deskripsi;
  MyShareData(
      {required this.namahardware,
      required this.jenis,
      required this.harga,
      required this.produsen,
      required this.deskripsi});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _namahardware =
        TextEditingController(text: namahardware);
    final TextEditingController _jenis = TextEditingController(text: jenis);
    final TextEditingController _harga = TextEditingController(text: harga);
    final TextEditingController _produsen =
        TextEditingController(text: produsen);
    final TextEditingController _deskripsi =
        TextEditingController(text: deskripsi);
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
          title: Text(
        "Share Data",
      )),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          Text(
            "Share Data",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber.shade900),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: TextField(
              readOnly: true,
              controller: _namahardware,
              decoration: InputDecoration(
                  labelText: "Nama Hardware",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              readOnly: true,
              controller: _jenis,
              decoration: InputDecoration(
                  labelText: "Jenis Hardware",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              readOnly: true,
              controller: _harga,
              decoration: InputDecoration(
                  labelText: "Harga Hardware",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              readOnly: true,
              controller: _produsen,
              decoration: InputDecoration(
                  labelText: "Produsen ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              readOnly: true,
              controller: _deskripsi,
              maxLines: 3,
              decoration: InputDecoration(
                  labelText: "Deskripsi Hardware",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.of(context)
                  .pop(MaterialPageRoute(builder: ((context) => MyInput())));
            },
            child: Text("Kembali Ke Form Pengisian"),
          )
        ]),
      )),
    );
  }
}
