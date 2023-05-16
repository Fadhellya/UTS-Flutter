import 'package:flutter/material.dart';
import 'package:utsmuhamadfadhel/input.dart';

class MyListHardware extends StatefulWidget {
  const MyListHardware({super.key});

  @override
  State<MyListHardware> createState() => _MyListHardwareState();
}

class _MyListHardwareState extends State<MyListHardware> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("List Hardware"),
      ),
      body: Card(
        elevation: 10,
        shadowColor: Colors.black,
        margin: EdgeInsets.all(25),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text(
                "List Hardware",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber.shade900),
              )),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Image.asset('images/hub.jpg'),
                title: Text("Hub",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red.shade900),),
                subtitle: Text("Vention Indonesia Harga Rp.90.000",style: TextStyle(color: Colors.brown),),
                trailing: Icon(Icons.arrow_back_ios),
              )),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Image.asset('images/lan.jpg'),
                title: Text("Lan",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red.shade900),),
                subtitle: Text("Vention Indonesia Harga Rp.20.000 ",style: TextStyle(color: Colors.brown),),
                trailing: Icon(Icons.arrow_back_ios),
              )),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Image.asset('images/modem.jpg'),
                title: Text("Modem",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red.shade900),),
                subtitle: Text("Huawei Edge Com Harga Rp.300.000",style: TextStyle(color: Colors.brown),),
                trailing: Icon(Icons.arrow_back_ios),
              )),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Image.asset('images/repeater.jpg'),
                title: Text("Repeater",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red.shade900),),
                subtitle: Text("Xiaomi Externder Harga Rp.250.000",style: TextStyle(color: Colors.brown),),
                trailing: Icon(Icons.arrow_back_ios),
              )),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Image.asset('images/router.jpg'),
                title: Text("Router",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red.shade900),),
                subtitle: Text("TP - Link Router Harga Rp.350.000",style: TextStyle(color: Colors.brown),),
                trailing: Icon(Icons.arrow_back_ios),
              )),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Image.asset('images/switch.jpg'),
                title: Text("Switch",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red.shade900),),
                subtitle: Text("TP - Link Switch Harga Rp.400.000",style: TextStyle(color: Colors.brown),),
                trailing: Icon(Icons.arrow_back_ios),
              )),
        ]),
      ),
    );
  }
}
