import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/pages/bottomnav.dart';
import 'package:flutter_firebase/pages/login.dart';
import 'package:flutter_firebase/widgets/widget_support.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String name = "", email = "", password = "";

  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  registrations() async {
    if (password != passwordController.text) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
            content: Text(
          "Registration successful",
          style: TextStyle(fontSize: 20),
        )));
        Navigator.push(context,MaterialPageRoute(builder: (context) => BottomNav()));
      } on FirebaseException catch (e) {
        if (e.code == "weak-password") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
              content: Text(
            "Email already in use",
            style: TextStyle(fontSize: 20),
          )));
        } else if (e.code == "email-already-in-use") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
              content: Text(
            "Email already in use",
            style: TextStyle(fontSize: 20),
          )));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color(0xFF2ff5c30),
                    Color(0xffe74b1a),
                  ])),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Text(""),
            ),
            Material(
              child: Container(
                margin: EdgeInsets.only(
                  top: 50.0,
                ),
                child: Column(children: [
                  Center(
                      child: Image.asset(
                    "images/logo.png",
                    width: MediaQuery.of(context).size.width / 1.5,
                    fit: BoxFit.cover,
                  )),
                  SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              "Sign up",
                              style: AppWidgetSupport.HeadleTextFilledStyle(),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            TextFormField(
                              controller: nameController,
                              validator: (value){
                                if (value == null || value.isEmpty) {
                                  return "Name is required";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "Name",
                                hintStyle:
                                    AppWidgetSupport.semiBoldTextFilledStyle(),
                                suffix: Icon(Icons.person_outlined),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            TextFormField(
                              controller: emailController,
                              validator: (value){
                                if (value == null || value.isEmpty) {
                                  return "Email is required";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle:
                                    AppWidgetSupport.semiBoldTextFilledStyle(),
                                suffix: Icon(Icons.email_outlined),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            TextFormField(
                              controller: passwordController,
                              validator: (value){
                                if (value == null || value.isEmpty) {
                                  return "password is required";
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle:
                                    AppWidgetSupport.semiBoldTextFilledStyle(),
                                suffix: Icon(Icons.password_outlined),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Forgot Password?",
                                style: AppWidgetSupport.LightTextFilledStyle(),
                              ),
                            ),
                            SizedBox(
                              height: 70.0,
                            ),
                            GestureDetector(
                              onTap: ()async {
                                if(_formKey.currentState!.validate()){
                                  setState(() {
                                    email = emailController.text;
                                    password = passwordController.text;
                                    name = nameController.text;
                                  });
                                }
                                registrations();
                              },
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Color(0Xffff5722),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "SIGN UP",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Already have an account? Login",
                        style: AppWidgetSupport.LightTextFilledStyle(),
                      )),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
