import 'package:flutter/material.dart';

class OrderProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الاوردارات", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text("الطلب كبائع",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              Image.asset("assets/image/logo.png"),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      onChanged: (v) {},
                      decoration: InputDecoration(
                        hintText: "العدد",
                        hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextField(
                      onChanged: (v) {},
                      decoration: InputDecoration(
                        hintText: "متوسط الوزن بالجرام",
                        hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      onChanged: (v) {},
                      decoration: InputDecoration(
                        hintText: "اجمالى الوزن بالكيلو",
                        hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextField(
                      onChanged: (v) {},
                      decoration: InputDecoration(
                        hintText: "متوسط الوزن بالجرام",
                        hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              Text("الاستلام بعد 48 ساعه",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              Text("يتعهد البائع بسلامه معروضاته و مطابقاتها بالمواصفات",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              SizedBox(
                width: 100,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "اطلب",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.black))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
