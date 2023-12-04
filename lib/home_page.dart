import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cars",
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(
            Icons.notification_add,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  singleTab(true, "All"),
                  singleTab(false, "Red"),
                  singleTab(false, "Grey"),
                  singleTab(false, "Green"),
                  singleTab(false, "Blue"),
                  singleTab(false, "White"),
                  singleTab(false, "Black"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            cardItem("assets/img.png", "Ferrari", "100000\$"),
            cardItem("assets/img_1.png", "Lamborgine", "100000\$"),
            cardItem("assets/img_2.png", "Pagani", "100000\$"),
            cardItem("assets/img_3.png", "Sas", "100000\$"),
            cardItem("assets/img_4.png", "Sas", "100000\$"),
          ],
        ),
      )),
    );
  }

  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: type ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: type ? 20 : 17,
                color: type ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }

  Widget cardItem(String image, String text, String price) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade700,
                blurRadius: 10,
                offset: Offset(0, 10))
          ]),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.5),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.1),
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Electric",
                      style: TextStyle(fontSize: 22, color: Colors.red),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  height: 35,
                  width: 35,
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
            Text(
              price,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
