import 'package:flutter/material.dart';
import 'package:flutter_firebase/widgets/widget_support.dart';
class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "images/salad2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
              SizedBox(height: 15.0,),
            
            Row(
              
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mediterranean",style:AppWidgetSupport.semiBoldTextFilledStyle(),),
                  Text("Chickpea Salad",style:AppWidgetSupport.boldTextFilledStyle(),),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  if(a > 0){
                  --a;
                  }
                  setState(() {
                    
                  },);
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(7),),
                  child: Icon(Icons.remove, color: Colors.white,),),
              ),
                SizedBox(width: 20.0,),
                Text(a.toString(),style: AppWidgetSupport.semiBoldTextFilledStyle(),),
                SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: (){
                    ++a;
                    setState(() {
                    
                    },);
                  },
                  child: Container(
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(7),),
                  child: Icon(Icons.add, color: Colors.white,),),
                ),
            ],
            ),
            Text("Description this is description",style: AppWidgetSupport.LightTextFilledStyle(),),
            SizedBox(height: 20.0,),
            Row(children: [
               Text("Delivery Time",style: AppWidgetSupport.semiBoldTextFilledStyle(),),
               SizedBox(width: 20.0,),
               Icon(Icons.alarm, color: Colors.black54),
               SizedBox(width: 5.0,),
               Text("20-30 min",style: AppWidgetSupport.LightTextFilledStyle()),
            ],),
            Spacer(),
            
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                 Text("Total Price",style: AppWidgetSupport.semiBoldTextFilledStyle(),),
                 Text("\$28",style: AppWidgetSupport.HeadleTextFilledStyle(),),
                ],),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10),),
                  child: Row(children: [
                    Text("Add to Cart",style: TextStyle(color: Colors.white, fontSize: 16.0, fontFamily: "Poppins"),),
                    SizedBox(width: 50.0,),
                     Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(7),),
                      child: Icon(Icons.add_shopping_cart_outlined, color: Colors.white,),),
                    SizedBox(width: 5.0,),
                  ],),
                )
            ],),
            ),
          ],
        ),
      ),
    );
  }
}
