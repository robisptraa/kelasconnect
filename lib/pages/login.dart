import 'package:flutter/material.dart';

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
            top: respon.height * 0.07,
            left: respon.width * 0.24,
            child: Container(
              height: respon.height * 0.15,
              width: respon.width * 0.5,
              
              decoration: BoxDecoration(
                // color: Colors.black,
                image: DecorationImage(image: AssetImage('assets/logo1.png'), ),
              ),
            ),
          ),
          Positioned(
            top: respon.height * 0.25,
            child: Container(
              height: respon.height * 0.68,
              width: respon.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(respon.width * 0.08))
              ),
              child: Column(
                children: [
                  SizedBox(height: respon.height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset( 'assets/3dicons.png'),
                      Image.asset('assets/logo2.png')
                    ],
                  ),
                  Text("Welcone to kelas connect",style: TextStyle(fontWeight: FontWeight.bold, fontSize: respon.width*0.04),),

                  Padding(padding: EdgeInsets.symmetric(horizontal: respon.width * 0.05,vertical: respon.height * 0.055),
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),

                      label: Text("username"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(respon.width * 0.05),
                      ),
                    ),
                  ),
                  SizedBox(height: respon.height * 0.02,),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _hide,
                    decoration: InputDecoration(
                      prefixIcon: IconButton(onPressed: _hidepw, icon: Icon(_hide? Icons.remove_red_eye : Icons.remove_red_eye_outlined),),
                      label: Text("password"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(respon.width * 0.05),
                      ),
                    ),
                  ),
                  SizedBox(height: respon.height * 0.02),
                  ElevatedButton(
                   onPressed: () {},
                  style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), 
                  backgroundColor: Colors.purple,
                  ),
                   child: Text('Login',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: respon.width * 0.04)),
                    ),
                  ],
                  ),
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