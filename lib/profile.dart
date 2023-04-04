import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image(image: AssetImage('img/dinda.jpeg'), width: 225,),
                  ),
                  const SizedBox(height: 20),
                  const Text('NIM : 123200006', style: TextStyle(fontSize: 16, color: Colors.brown)),
                  const Text('Name  : Dinda Aisyah Novitasari', style: TextStyle(fontSize: 16, color: Colors.brown)),
                  const Text('Class : IF-D', style: TextStyle(fontSize: 16, color: Colors.brown)),
                  const Text('Place, DOB : Sleman, 1 November 2001', style: TextStyle(fontSize: 16, color: Colors.brown)),
                  const Text('Goal : Have a stable job and income', style: TextStyle(fontSize: 16, color: Colors.brown)),
                ],
              )
            )
          ],
        ),
      )
    );
  }
}
