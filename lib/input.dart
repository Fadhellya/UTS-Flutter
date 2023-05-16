import 'package:flutter/material.dart';
import 'package:utsmuhamadfadhel/listhardware.dart';
import 'package:utsmuhamadfadhel/sharedata.dart';

class MyInput extends StatefulWidget {
  const MyInput({super.key});

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  final TextEditingController _namahardware = TextEditingController();
  final TextEditingController _jenis = TextEditingController();
  final TextEditingController _harga = TextEditingController();
  final TextEditingController _produsen = TextEditingController();
  final TextEditingController _deskripsi = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(title: Text("Form Input")),
      body: Center(
          child: Form(
              child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          Text(
            "Form Input",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber.shade900),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: TextField(
              controller: _namahardware,
              decoration: InputDecoration(
                helperText: "Isikan Nama Hardware",
                  filled: true,
                  fillColor: Colors.blueGrey.shade100,
                  labelText: "Nama Hardware",
                  hintText: "masukkan nama hardware",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3)),
                  prefixIcon: Align(
                    heightFactor: 1.0,
                    widthFactor: 1.0,
                    child: Icon(Icons.hardware_outlined),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              controller: _jenis,
              decoration: InputDecoration(
                helperText: "Isikan Jenis Hardware",
                  filled: true,
                  fillColor: Colors.blueGrey.shade100,
                  labelText: "Jenis Hardware",
                  hintText: "masukkan jenis hardware",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3)),
                  prefixIcon: Align(
                    heightFactor: 1.0,
                    widthFactor: 1.0,
                    child: Icon(Icons.add),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              controller: _harga,
              decoration: InputDecoration(
                helperText: "Isikan Harga Hardware",
                  filled: true,
                  fillColor: Colors.blueGrey.shade100,
                  labelText: "Harga Hardware",
                  hintText: "masukkan harga hardware",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3)),
                  prefixIcon: Align(
                    heightFactor: 1.0,
                    widthFactor: 1.0,
                    child: Icon(Icons.money),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              controller: _produsen,
              decoration: InputDecoration(
                helperText: "Isikan Produsen Hardware",
                  filled: true,
                  fillColor: Colors.blueGrey.shade100,
                  labelText: "Produsen ",
                  hintText: "masukkan produsen",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3)),
                  prefixIcon: Align(
                    heightFactor: 1.0,
                    widthFactor: 1.0,
                    child: Icon(Icons.production_quantity_limits_outlined),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              controller: _deskripsi,
              maxLines: 2,
              maxLength: 100,
              decoration: InputDecoration(
                helperText: "Isikan Deskripsi Hardware",
                  filled: true,
                  fillColor: Colors.blueGrey.shade100,
                  labelText: "Deskripsi Hardware",
                  hintText: "masukkan deskripsi hardware",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3)),
                  prefixIcon: Align(
                    heightFactor: 1.0,
                    widthFactor: 1.0,
                    child: Icon(Icons.description),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => MyShareData(
                        namahardware: _namahardware.text,
                        jenis: _jenis.text,
                        harga: _harga.text,
                        produsen: _produsen.text,
                        deskripsi: _deskripsi.text,
                      ))));
            },
            child: Text("SUBMIT"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => MyListHardware())));
            },
            child: Text("Lihat List Hardware"),
          )
        ]),
      ))),
    );
  }
}
