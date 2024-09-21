import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _hide = true;

  void _hidepw() {
    setState(() {
      _hide = !_hide;
    });
  }

  @override
  Widget build(BuildContext context) {
    final respon = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple,
              Colors.pinkAccent,
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: respon.height * 0.08,
              left: respon.width * 0.25,
              child: Container(
                height: respon.height * 0.16,
                width: respon.width * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo1.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: respon.height * 0.25,
              child: Container(
                width: respon.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(respon.width * 0.08),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: respon.width * 0.05,
                        vertical: respon.height * 0.03),
                    child: Column(
                      children: [
                        SizedBox(height: respon.height * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Image.asset('assets/SignUP.png')],
                        ),
                        SizedBox(height: respon.height * 0.04),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  label: Text("First name"),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        respon.width * 0.025),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: respon.width * 0.03),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person_2_outlined),
                                  label: Text("Last name"),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        respon.width * 0.025),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: respon.height * 0.02),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            label: Text("E-Mail Address"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  respon.width * 0.05),
                            ),
                          ),
                        ),
                        SizedBox(height: respon.height * 0.02),
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
                              borderRadius: BorderRadius.circular(
                                  respon.width * 0.05),
                            ),
                          ),
                        ),
                        SizedBox(height: respon.height * 0.02),
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
                            label: Text("Confirm password"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  respon.width * 0.05),
                            ),
                          ),
                        ),
                        SizedBox(height: respon.height * 0.03),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.purple, Colors.pink],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            onTap: () {
                              // Logic untuk login
                            },
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: respon.width * 0.04,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: respon.height * 0.02),
                        Text(
                          'or sign up with',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: respon.width * 0.04,
                          ),
                        ),
                        SizedBox(height: respon.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/Google,i.png', width: 50),
                            SizedBox(width: respon.width * 0.05),
                            Image.asset('assets/Facebook.png', width: 50),
                          ],
                        ),
                        SizedBox(height: respon.height * 0.01),
                        Text(
                          '© 2024 Robet,reiizuko',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
