import 'package:flutter/material.dart';
import 'package:tpm_uts/trapesium.dart';
import 'package:tpm_uts/tabung.dart';

class Calculate extends StatelessWidget {
  const Calculate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculate 2D & 3D Shape'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  ElevatedButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Trapesium())
                    );
                  },
                    child: const Text("Trapezium"),
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
                  const SizedBox(height: 30),
                  ElevatedButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tabung())
                    );
                  },
                    child: const Text("Cylinder"),
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
          ],
        ),
      ),
    );
  }
}
