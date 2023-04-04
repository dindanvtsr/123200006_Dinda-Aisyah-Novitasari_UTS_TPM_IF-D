import 'package:flutter/material.dart';

class Tabung extends StatefulWidget {
  @override
  _TabungState createState() => _TabungState();
}

class _TabungState extends State<Tabung> {
  final _formKey = GlobalKey<FormState>();
  final _radiusController = TextEditingController();
  final _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate Cylinder"),
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
                    controller: _radiusController,
                    decoration: InputDecoration(
                      labelText: 'Radius',
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
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        double radius = double.parse(_radiusController.text);
                        double height = double.parse(_heightController.text);
                        double volume = 3.14 * radius * radius * height;
                        double rt = radius + height;
                        double keliling = 2 * 3.14 * radius * rt;
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Cylinder Calculation Results'),
                            content: Text('Volume : $volume\nKeliling : $keliling'),
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
          ),
        ),
      ),
    );
  }
}