import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testapp/service/TransactionService.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
//import 'package:testapp/service/TransactionService.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  CodeJson? _dataFromApi;

  String url = '';
  String apiUrl =
      'https://script.google.com/macros/s/AKfycbyGhrdb8evsVpy5fmgMOnTJvSDCHqt02ii4-U7xJWSLDCJvbEhDLKTCKdb2xyHypEaG/exec?code=';

  final TextEditingController _bodyMaterial = TextEditingController();

  String _group = "";
  double _result150 = 0;
  double _result300 = 0;
  double _result600 = 0;
  double _result900 = 0;
  double _result1500 = 0;
  double _result2500 = 0;

  double _LTresult150 = 0;
  double _LTresult300 = 0;
  double _LTresult600 = 0;
  double _LTresult900 = 0;
  double _LTresult1500 = 0;
  double _LTresult2500 = 0;

  double _STresult150 = 0;
  double _STresult300 = 0;
  double _STresult600 = 0;
  double _STresult900 = 0;
  double _STresult1500 = 0;
  double _STresult2500 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Standard Test Valve',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20),
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/SB.png',
                  height: 220,
                  width: 350,
                ),
                SizedBox(height: 25),
                Text(
                  "Body Material(Code)",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w900),
                ),
                TextField(
                  controller: _bodyMaterial,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'กรอก Code ที่นี่',
                    icon: Icon(Icons.support_agent),
                  ),
                ),
                SizedBox(height: 30),
                Wrap(children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Class",
                        style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontSize: 19.4,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "",
                        style: TextStyle(
                          fontSize: 19.4,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "150#",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "300#",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "600#",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "900#",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "1500#",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "2500#",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        // ignore: unnecessary_null_comparison
                        _group == null ? "Enter Value:" : "Group ${_group} ",
                        style: TextStyle(
                          fontSize: 19.4,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "",
                        style: TextStyle(
                          fontSize: 19.4,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_result150.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_result300.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_result600.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_result900.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_result1500.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_result2500.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Leak Test",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 19.4,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "(BarG)",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 19.4,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_LTresult150.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_LTresult300.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_LTresult600.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_LTresult900.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_LTresult1500.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_LTresult2500.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Shell Test",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 19.4,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "(BarG)",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 19.4,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_STresult150.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_STresult300.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_STresult600.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_STresult900.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_STresult1500.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_STresult2500.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ]),
                SizedBox(height: 30),
                RaisedButton(
                  color: Colors.blueAccent,
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: standardtest,
                ),
                SizedBox(height: 15),
                Text(
                  "Referent : API 598 & ASME B16.34",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<CodeJson?> getData(codeSB) async {
    var response = await http.get(Uri.parse(apiUrl + codeSB));
    print(response.body);
    _dataFromApi = codeJsonFromJson(response.body);
    print(_dataFromApi);
    String group = _dataFromApi!.group;
    double result150 = _dataFromApi!.data150;
    double result300 = _dataFromApi!.data300;
    double result600 = _dataFromApi!.data600;
    double result900 = _dataFromApi!.data900;
    double result1500 = _dataFromApi!.data1500;
    double result2500 = _dataFromApi!.data2500;
    if (group == '0') {
      AlertDialog(title: Text("omk"), content: Text("jh"));
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('ไม่พบ Code'),
          content: const Text('กรุณากรอก Code ใหม่'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }

    _group = group;
    _result150 = result150;
    _result300 = result300;
    _result600 = result600;
    _result900 = result900;
    _result1500 = result1500;
    _result2500 = result2500;

    _LTresult150 = result150 * 1.1;
    _LTresult300 = result300 * 1.1;
    _LTresult600 = result600 * 1.1;
    _LTresult900 = result900 * 1.1;
    _LTresult1500 = result1500 * 1.1;
    _LTresult2500 = result2500 * 1.1;

    _STresult150 = result150 * 1.5;
    _STresult300 = result300 * 1.5;
    _STresult600 = result600 * 1.5;
    _STresult900 = result900 * 1.5;
    _STresult1500 = result1500 * 1.5;
    _STresult2500 = result2500 * 1.5;
    print(_STresult2500);
    setState(() {});
  }

  void standardtest() {
    String codeSB = _bodyMaterial.text.toLowerCase();
    getData(codeSB);

// else {
//       group = "0";
//       result150 = 0;
//       result300 = 0;
//       result600 = 0;
//       result900 = 0;
//       result1500 = 0;
//       result2500 = 0;
//       AlertDialog(title: Text("omk"), content: Text("jh"));
//       showDialog<String>(
//         context: context,
//         builder: (BuildContext context) => AlertDialog(
//           title: const Text('ไม่พบ Code'),
//           content: const Text('กรุณากรอก Code ใหม่'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () => Navigator.pop(context, 'Cancel'),
//               child: const Text('OK'),
//             ),
//           ],
//         ),
//       );
//     }

    // switch (codeSB) {
    //   case "WCB":
    //     group = "1.1";
    //     result150 = 19.6;
    //     result300 = 51.1;
    //     result600 = 102.1;
    //     result900 = 153.2;
    //     result1500 = 255.3;
    //     result2500 = 425.5;
    //     break;
    //   case "LC2":
    //     group = "1.2";
    //     result150 = 19.8;
    //     result300 = 51.7;
    //     result600 = 103.4;
    //     result900 = 155.1;
    //     result1500 = 258.6;
    //     result2500 = 430.9;
    //     break;
    //   case "WC1":
    //     group = "1.3";
    //     result150 = 18.4;
    //     result300 = 48;
    //     result600 = 96;
    //     result900 = 144.1;
    //     result1500 = 140.1;
    //     result2500 = 400.1;
    //     break;
    // }
  }
}
