import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        backgroundColor: Color(0xfffb4c8a), // لون الخلفية للشريط
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // الجزء العلوي: الزهور مع الخلفية الوردية
            Container(
              color: Color(0xfffbdce6),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Image.asset(
                    'images/img/f1.jpg', // وضع الصورة هنا
                    height: 200,
                  ),
                  SizedBox(height: 20),
                  // صور إضافية (اختياري)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/img/f2.jpg',
                        height: 60,
                      ),
                      SizedBox(width: 20),
                      Image.asset('images/img/f3.jpg', height: 60),
                      SizedBox(width: 20),
                      Image.asset('images/img/f2.jpg', height: 60),
                    ],
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ),

            // الجزء السفلي: التفاصيل مع الخلفية البيضاء
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // لضبط المحاذاة لليسار
                children: [
                  // اسم المنتج
                  Container(
                    alignment: Alignment.centerLeft, // لجعل النص يبدأ من اليسار
                    child: Text(
                      "Rosa acicularis",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  // التقييم
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      SizedBox(width: 4),
                      Text("(4.5)", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 16),
                  // تفاصيل المنتج
                  Text(
                    "Our team exports uses methodology to identify the credit cards most likely to fit your needs. We examine annual percentage rates, annual fees, our team export.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                  ),
                  SizedBox(height: 16),
                  // السعر وزر الإضافة إلى السلة
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Total  \$240",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // هنا يمكنك إضافة الكود الذي تريده عند الضغط على الزر
                      print("Added to cart!");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfffb4c8a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Container(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Icon(Icons.shopping_cart, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
