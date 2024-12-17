import 'package:flutter/material.dart';
import '../models/Products.dart';
import '../screens/LastScreen.dart';

class ProductCard extends StatefulWidget {
  final Product pro;
  const ProductCard({super.key, required this.pro});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color.fromARGB(255, 255, 226, 243),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 130,
            height: 130,
            child: Image.asset(
              widget.pro.image,
            ),
          ),
          Text(
            widget.pro.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            widget.pro.description,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // SizedBox(
              //   width: 80,
              //   height: 40,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (context) => MyApp()));
              //     },
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(
              //         const Color.fromARGB(255, 206, 34, 120),
              //       ),
              //       shape: MaterialStateProperty.all(
              //         RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //       ),
              //     ),
              //     child: const Text(
              //       "add",
              //       style: TextStyle(
              //         fontSize: 17,
              //         fontWeight: FontWeight.bold,
              //         color: Color(0xFFF6FAFF),
              //       ),
              //     ),
              //   ),
              // ),
              Text(
                '\$' '${widget.pro.price}',
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.shopping_cart,
                color: Colors.pink,
              ),
            ],
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: 80,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProductPage()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 206, 34, 120),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  "add",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF6FAFF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
