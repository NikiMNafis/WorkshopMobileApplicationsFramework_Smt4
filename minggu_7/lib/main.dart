import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new learnForm(),
  ));
}

class learnForm extends StatefulWidget {
  _MyState createState() => _MyState();
}

class _MyState extends State<learnForm> {

  String _jk = "";

  void _pilihJk(String value) {
    setState(() {
      _jk = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // body: new ListView(
      //   children: [
      //     new Container(
      //       padding: new EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0),
      //       child: new Column(
      //         children: <Widget>[
      //           new TextField(
      //             decoration: new InputDecoration(
      //                 hintText: "Nama Lengkap",
      //                 labelText: "Nama Lengkap",
      //                 border: new OutlineInputBorder(
      //                     borderRadius: new BorderRadius.circular(15.0)
      //                 )
      //             ),
      //           ),
      //           new Padding(
      //             padding: new EdgeInsets.only(top: 20.0),
      //           ),
      //           new TextField(
      //             obscureText: true,
      //             decoration: new InputDecoration(
      //                 hintText: "Password",
      //                 labelText: "Password",
      //                 border: new OutlineInputBorder(
      //                     borderRadius: new BorderRadius.circular(15.0)
      //                 )
      //             ),
      //           ),
      //         ],
      //       ),
      //     )
      //   ],
      // ),

      // body: new ListView(
      //   children: [
      //     new Container(
      //       padding: new EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0),
      //       child: new Column(
      //         children: <Widget>[
      //           new CheckboxListTile(
      //               title: Text("Learn Check Box"),
      //               value: true,
      //               onChanged: (value) {}
      //           ),
      //           new Padding(
      //             padding: new EdgeInsets.only(top: 20.0),
      //           ),
      //           new SwitchListTile(
      //               title: Text("Learn Switch"),
      //               value: true,
      //               activeColor: Colors.red,
      //               activeTrackColor: Colors.blue,
      //               onChanged: (value) {}
      //           ),
      //         ],
      //       ),
      //     )
      //   ],
      // ),

      body: new ListView(
        children: [
          new Container(
            padding: new EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0),
            child: new Column(
              children: <Widget>[
                new RadioListTile(
                  value: "laki-laki",
                  title: new Text("Laki-laki"),
                  groupValue: _jk,
                  onChanged: (String? value){
                    _pilihJk(value!);
                  },
                  activeColor: Colors.blue,
                  subtitle: new Text("Pilih ini jika anda Laki-laki"),
                ),
                new RadioListTile(
                  value: "perempuan",
                  title: new Text("Perempuan"),
                  groupValue: _jk,
                  onChanged: (String? value){
                    _pilihJk(value!);
                  },
                  activeColor: Colors.blue,
                  subtitle: new Text("Pilih ini jika anda Perempuan"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
