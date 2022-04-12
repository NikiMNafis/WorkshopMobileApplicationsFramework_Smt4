import 'package:flutter/material.dart';

// void main() {
//   runApp(new MaterialApp(
//     home: new MyGradient(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class MyGradient extends StatefulWidget {
//   @override
//   _GradientState createState() => _GradientState();
// }
//
// class _GradientState extends State<MyGradient> {
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Learn Gradient",
//           style: TextStyle(
//             fontSize: 15,
//             color: Colors.red,
//           ),
//         ),
//         backgroundColor: Colors.yellow,
//       ),
//       body: new Container(
//         decoration: new BoxDecoration(
//             gradient: new LinearGradient(
//                 begin: FractionalOffset.topCenter,
//                 end: FractionalOffset.bottomCenter,
//                 colors: [
//                   Colors.lightGreen,
//                   Colors.lightGreenAccent,
//                   Colors.green
//                 ]
//             )
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(new MaterialApp(
    home: new Start(),
  ));
}

class Start extends StatefulWidget {
  _MyState createState() => _MyState();
}

class _MyState extends State<Start> {

  List<String> agama = [
    "Islam",
    "Kristen Protestan",
    "Kristen Katolik",
    "Hindu",
    "Budha"
  ];

  String _agama = "Islam";
  String _jk = "";

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
  TextEditingController controllerVisi = new TextEditingController();

  void _pilihJk(String value) {
    setState(() {
      _jk = value;
    });
  }

  void _pilihAgama(String value) {
    setState(() {
      _agama = value;
    });
  }

  void kirimData() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 250.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama Lengkap : ${controllerNama.text}"),
            new Text("Password : ${controllerPass.text}"),
            new Text("Visi Hidup : ${controllerVisi.text}"),
            new Text("Jenis Kelamin : ${_jk}"),
            new Text("Agama : ${_agama}"),
            new RaisedButton(
                child: new Text("OK"),
                onPressed: () => Navigator.pop(context),
                color: Colors.teal,
            )
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Data Diri"),
        backgroundColor: Colors.blueGrey,
      ),
      body: new ListView(
        children: [
          new Container(
            padding: new EdgeInsets.all(15.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerNama,
                  decoration: new InputDecoration(
                    hintText: "Nama Lengkap",
                    labelText: "Nama Lengkap",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0)
                    )
                  ),
                ),
                new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextField(
                  controller: controllerPass,
                  obscureText: true,
                  decoration: new InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0)
                    )
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextField(
                  controller: controllerVisi,
                  maxLines: 3,
                  decoration: new InputDecoration(
                      hintText: "Visi Hidup",
                      labelText: "Visi Hidup",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0)
                      )
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
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
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new Row(
                  children: <Widget>[
                    new Text(
                      "Agama ",
                      style: new TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 15.0),
                    ),
                    new DropdownButton(
                      onChanged: (String? value) {
                        _pilihAgama(value!);
                      },
                      value: _agama,
                      items: agama.map((String value) {
                        return new DropdownMenuItem(
                            value: value,
                            child: new Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
                new RaisedButton(
                    child: new Text("OK"),
                    color: Colors.blue,
                    onPressed: (){
                      kirimData();
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// void main() {
//   runApp(MaterialApp(
//     title: "Belajar Form Flutter",
//     home: BelajarForm(),
//   ));
// }
//
// class BelajarForm extends StatefulWidget {
//   @override
//   _BelajarFormState createState() => _BelajarFormState();
// }
//
// class _BelajarFormState extends State<BelajarForm> {
//   final _formKey = GlobalKey<FormState>();
//
//   double nilaiSlider = 1;
//   bool nilaiCheckBox = false;
//   bool nilaiSwitch = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("minggu 7/1"),
//       ),
//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.all(20.0),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     decoration: new InputDecoration(
//                       hintText: "contoh: Asif Mahardika Ramadan",
//                       labelText: "Username",
//                       icon: Icon(Icons.people),
//                       border: OutlineInputBorder(
//                           borderRadius: new BorderRadius.circular(5.0)),
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Nama tidak boleh kosong';
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     obscureText: true,
//                     decoration: new InputDecoration(
//                       labelText: "Password",
//                       icon: Icon(Icons.security),
//                       border: OutlineInputBorder(
//                           borderRadius: new BorderRadius.circular(5.0)),
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Password tidak boleh kosong';
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//                 CheckboxListTile(
//                   title: Text('Kelompok 3'),
//                   subtitle: Text('Nafis, Ali, Asif, Reza, Kiki'),
//                   value: nilaiCheckBox,
//                   activeColor: Colors.deepPurpleAccent,
//                   onChanged: (value) {
//                     setState(() {
//                       nilaiCheckBox = value!;
//                     });
//                   },
//                 ),
//                 SwitchListTile(
//                   title: Text('Kelompok 3'),
//                   subtitle: Text('Nafis, Ali, Asif, Reza, Kiki'),
//                   value: nilaiSwitch,
//                   activeTrackColor: Colors.pink[100],
//                   activeColor: Colors.red,
//                   onChanged: (value) {
//                     setState(() {
//                       nilaiSwitch = value;
//                     });
//                   },
//                 ),
//                 Slider(
//                   value: nilaiSlider,
//                   min: 0,
//                   max: 100,
//                   onChanged: (value) {
//                     setState(() {
//                       nilaiSlider = value;
//                     });
//                   },
//                 ),
//                 RaisedButton(
//                   child: Text(
//                     "Submit",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   color: Colors.blue,
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {}
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// void main() {
//   runApp(myApp());
// }
//
// class myApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home : Scaffold(
//         appBar: AppBar(
//           title: Text("Text Field"),
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(15),
//             child: TextField(
//               autocorrect: false,
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20,
//               ),
//             ),
//           ),
//         ),
//       )
//     );
//   }
// }

// void main() => runApp(MyApp());
// void main() {
//   runApp(MaterialApp(
//     initialRoute: '/',
//     routes: <String, WidgetBuilder>{
//       // '/': (context) => MyApp(),
//       '/': (context) => DashboardPage(),
//       '/profile': (context) => ProfilePage(),
//       '/list': (context) => ListPage(),
//     },
//   ));
// }
//
//
// class DashboardPage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dasboard'),
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/profile');
//               },
//               child: Text('Go to Profile'),
//             ),
//             SizedBox(height: 8.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/list');
//               },
//               // icon: Icon(Icons.add, size: 18),
//               child: Text("Go to list item"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Back'),
//         ),
//       ),
//     );
//   }
// }
//
// class ListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('List Item'),
//         backgroundColor: Colors.yellow,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Back'),
//         ),
//       ),
//     );
//   }
// }
//

// class MyApp extends StatelessWidget {
//   @override
//
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.dashboard),
//           title: Text("Belajar MaterialApp Scaffold"),
//           actions: <Widget>[
//             Icon(Icons.search),
//           ],
//           actionsIconTheme: IconThemeData(color: Colors.deepOrange),
//           backgroundColor: Colors.blueGrey,
//           bottom: PreferredSize(
//               child: Container(
//                 color: Colors.black,
//                 height: 4.0,
//               ),
//               preferredSize: Size.fromHeight(4.0)
//           ),
//           centerTitle: true,
//         ),
//
//         //NEW UPDATE
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.pinkAccent,
//           child: Text('+'),
//           onPressed: () {},
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: <Widget>[
//             Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.black,
//                 shape: BoxShape.circle),),
//             Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.blueGrey,
//                 shape: BoxShape.circle),),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(width: 50, height: 50, decoration: BoxDecoration(color:
//                 Colors.blueAccent, shape: BoxShape.circle),),
//                 Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.redAccent,
//                     shape: BoxShape.circle),),
//               ],
//             )
//           ],
//         ),
//         //NEW UPDATE
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//
//
//   }
// }