import 'package:flutter/material.dart';
import 'package:flutter_firebase/pages/signup.dart';
import 'package:flutter_firebase/widgets/content_model.dart';
import 'package:flutter_firebase/widgets/widget_support.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentTabIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentTabIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].images,
                          height: 400,
                          width: MediaQuery.of(context).size.width / 1.5,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          contents[i].title,
                          style: AppWidgetSupport.boldTextFilledStyle(),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          contents[i].description,
                          style: AppWidgetSupport.LightTextFilledStyle(),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (currentTabIndex == contents.length - 1) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ),
                );
              }
              _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            },
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 150),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:  Colors.red,
              ),
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: Center(
                child: Text(
                  currentTabIndex == contents.length - 1?"Start":"Next",
                  style: TextStyle(
                    color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      width: currentTabIndex==index?18:7,
      height: 10.0,
      margin: EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.black38),
    );
  }
}
