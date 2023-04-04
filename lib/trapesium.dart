import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  @override
  _TrapesiumState createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  final _formKey = GlobalKey<FormState>();
  final _baseAController = TextEditingController();
  final _baseBController = TextEditingController();
  final _heightController = TextEditingController();
  final _sisiMiringController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate Trapezium"),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _baseAController,
                    decoration: InputDecoration(
                      labelText: 'Base A',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill out this field!';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _baseBController,
                    decoration: InputDecoration(
                      labelText: 'Base B',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill out this field!';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _heightController,
                    decoration: InputDecoration(
                      labelText: 'Height',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill out this field!';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _sisiMiringController,
                    decoration: InputDecoration(
                      labelText: 'Sisi Miring',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill out this field!';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        double baseA = double.parse(_baseAController.text);
                        double baseB = double.parse(_baseBController.text);
                        double height = double.parse(_heightController.text);
                        double sisiMiring = double.parse(_sisiMiringController.text);
                        double miring = sisiMiring * 2;
                        double keliling = baseA + baseB + miring;
                        double jumlahBase = baseA + baseB;
                        double luas = 0.5 * jumlahBase * height;
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Trapezium Calculation Results'),
                            content: Text('Luas : $luas\nKeliling : $keliling'),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: Text('Calculate'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300, 60),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins-SemiBold'
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)
                      ),
                    ),
                  ),
                ],
              ),
            )
          )
        )
      ),
    );
  }
}