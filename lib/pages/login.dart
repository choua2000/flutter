import 'package:flutter/material.dart';
import 'package:flutter_firebase/pages/signup.dart';
import 'package:flutter_firebase/widgets/widget_support.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              margin: EdgeInsets.only(top: 50.0,),
              child: Column(
                children: [
                Center(child: Image.asset("images/logo.png",width: MediaQuery.of(context).size.width/1.5,fit: BoxFit.cover,)),
                SizedBox(height: 20.0,),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.only(left: 20.0,right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 30.0,),
                      Text("Login",style: AppWidgetSupport.HeadleTextFilledStyle(),),
                      SizedBox(height: 30.0,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Email", hintStyle: AppWidgetSupport.semiBoldTextFilledStyle(), suffix: Icon(Icons.email_outlined),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password", hintStyle: AppWidgetSupport.semiBoldTextFilledStyle(), suffix: Icon(Icons.password_outlined),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Container(
                        
                        alignment: Alignment.topRight,
                        child: Text("Forgot Password?", style: AppWidgetSupport.LightTextFilledStyle(),),),
                        SizedBox(height: 70.0,),
                        Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            width: 200,
                            decoration: BoxDecoration(
                            color: Color(0Xffff5722),
                            borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text("LOG IN",style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: "Poppins",fontWeight: FontWeight.bold),)),),
                        ),
                    ],),
                  ),
                ),
                SizedBox(height: 70.0,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: Text("Don't have an account? SignUp",style: AppWidgetSupport.LightTextFilledStyle(),)),
              ]),
            ),
          )
        ],
      ),
    ));
  }
}
