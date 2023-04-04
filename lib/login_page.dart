import 'package:flutter/material.dart';
import 'package:tpm_uts/landing_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = true;
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const SizedBox(height: 80),
                Image(image: AssetImage("img/hijab.png"), height: size.height * 0.2),
                const Text(
                  "Welcome Back,",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.brown,
                  ),
                ),
                const Text(
                  "Calculate, See Profile, and See Calendar now!",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54
                  ),
                ),

                Form(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children : [
                        TextFormField(
                          onChanged: (value) {
                            username = value;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_outlined),
                              labelText: "Username",
                              hintText: "Username",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                              )
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: passToggle,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            labelText: "Password",
                            hintText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  passToggle = !passToggle;
                                });
                              },
                              child: Icon(
                                  passToggle ? Icons.visibility : Icons.visibility_off
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 35),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.brown,
                              minimumSize: const Size(330, 50),
                              textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins-SemiBold'
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)
                              ),
                            ),
                            onPressed: () {
                              String text = "";
                              if (username == "123200006" && password == "Dinda") {
                                setState(() {
                                  text = "Login Success";
                                  isLoginSuccess = true;
                                });
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                      return LandingPage();
                                    }));
                              } else {
                                setState(() {
                                  text = "Login Failed";
                                  isLoginSuccess = false;
                                });
                              }
                              SnackBar snackBar = SnackBar(content: Text(text));
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            },
                            child: const Text("Login"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}