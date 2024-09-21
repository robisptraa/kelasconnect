import 'package:flutter/material.dart';
import 'package:firstlearnapk/pages/Register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _hide = true;

  //fungsi hide paswordl
  void _hidepw() {
    setState(() {
      _hide = !_hide;
    });
  }

  @override
  Widget build(BuildContext context) {
    //fungsi responsip
    final respon = MediaQuery.of(context).size;
    //masuk widget
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(
        children: [
          Positioned(
            top: respon.height * 0.08,
            left: respon.width * 0.25,
            child: Container(
              height: respon.height * 0.16,
              width: respon.width * 0.5,
              decoration: BoxDecoration(
                // color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/logo1.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: respon.height * 0.25,
            child: Container(
              height: respon.height * 0.70,
              width: respon.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.all(Radius.circular(respon.width * 0.08))),
              child: Column(
                children: [
                  SizedBox(height: respon.height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/3dicons.png'),
                      Image.asset('assets/logo2.png')
                    ],
                  ),
                  Text(
                    "Welcone to kelas connect",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: respon.width * 0.04),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: respon.width * 0.05,
                        vertical: respon.height * 0.055),
                    child: Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            label: Text("username"),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(respon.width * 0.05),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: respon.height * 0.02,
                        ),
                        TextField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: _hide,
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                              onPressed: _hidepw,
                              icon: Icon(_hide
                                  ? Icons.remove_red_eye
                                  : Icons.remove_red_eye_outlined),
                            ),
                            label: Text("password"),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(respon.width * 0.05),
                            ),
                          ),
                        ),
                        SizedBox(height: respon.height * 0.01),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 50),
                            backgroundColor: Colors.purple,
                          ),
                          child: Text('Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: respon.width * 0.04)),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "You dont a have account?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: respon.width * 0.03),
                  ),
                  SizedBox(height: respon.width * 0.01),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: respon.width * 0.03,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    'or sign up with',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: respon.width * 0.03),
                  ),
                  SizedBox(height: respon.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Google,i.png'),
                      Image.asset('assets/Facebook.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
