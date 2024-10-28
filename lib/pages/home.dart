import 'package:flutter/material.dart';
import 'package:flutter_firebase/pages/details.dart';
import 'package:flutter_firebase/widgets/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, salad2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 50.0,
          left: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello choua!",
                  style: AppWidgetSupport.boldTextFilledStyle(),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 20.0,
                  ),
                  padding: EdgeInsets.all(
                    30.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                      Icon(Icons.shopping_cart, color: Colors.white, size: 20),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Delicious Food",
              style: AppWidgetSupport.HeadleTextFilledStyle(),
            ),
            Text(
              "Discovers and Get Great Food",
              style: AppWidgetSupport.LightTextFilledStyle(),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(margin: EdgeInsets.only(right: 20.0), child: showItem()),
            SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Details(),),);
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          margin: EdgeInsets.all(14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/salad2.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Vieggie Taco hash ",
                                style: AppWidgetSupport.semiBoldTextFilledStyle(),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Fresh and Healthy ",
                                style: AppWidgetSupport.LightTextFilledStyle(),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "\$25",
                                style: AppWidgetSupport.semiBoldTextFilledStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Vieggie Taco hash ",
                              style: AppWidgetSupport.semiBoldTextFilledStyle(),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Fresh and Healthy ",
                              style: AppWidgetSupport.LightTextFilledStyle(),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$25",
                              style: AppWidgetSupport.semiBoldTextFilledStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("images/salad2.png",height: 120,width: 120, fit: BoxFit.cover, ),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width /2,
                        child: Text("Mediterranean Chickpea Salad", style: AppWidgetSupport.semiBoldTextFilledStyle(),),),
                        Container(
                        width: MediaQuery.of(context).size.width /2,
                        child: Text("Honey goot cheese", style: AppWidgetSupport.LightTextFilledStyle(),),),
                        Container(
                        width: MediaQuery.of(context).size.width /2,
                        child: Text("\$25", style: AppWidgetSupport.semiBoldTextFilledStyle(),),),
                    ],),
                  ],
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            salad = false;
            salad2 = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: icecream ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "images/ice-cream.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            salad = false;
            salad2 = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: pizza ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "images/pizza.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = true;
            salad2 = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: salad ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "images/salad.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = false;
            salad2 = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: salad2 ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "images/salad2.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: salad2 ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
