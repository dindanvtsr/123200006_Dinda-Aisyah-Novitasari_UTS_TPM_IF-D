import 'package:flutter/material.dart';
import 'package:tpm_uts/calculate.dart';
import 'package:tpm_uts/calendar.dart';
import 'package:tpm_uts/login_page.dart';
import 'package:tpm_uts/profile.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route route) => route == null);
            },
          )
        ],
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
                        MaterialPageRoute(builder: (context) => Calculate())
                    );
                  },
                    child: const Text("Calculate 2D & 3D Shapes"),
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
                      MaterialPageRoute(builder: (context) => Calendar())
                    );
                  },
                    child: const Text("Calendar"),
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
                        MaterialPageRoute(builder: (context) => Profile())
                    );
                  },
                    child: const Text("Profile"),
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
      )
    );
  }
}
