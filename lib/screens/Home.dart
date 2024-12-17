import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/my.dart';
import 'package:flutter_application_1/screens/Login.dart';
import '../widgets/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isselect = 0;

  Widget categ(int indx, String name) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isselect = indx;
        });
      },
      child: Container(
        width: 100,
        height: 40,
        margin: const EdgeInsets.only(top: 10, right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isselect == indx
              ? const Color.fromARGB(255, 206, 34, 120)
              : const Color.fromARGB(255, 238, 208, 226),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          name,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget buildAll() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100 / 140),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      scrollDirection: Axis.vertical,
      itemCount: My.allpro.length,
      itemBuilder: (context, index) {
        final allpro = My.allpro[index];
        return ProductCard(pro: allpro);
      },
    );
  }

  Widget buildlist2() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100 / 140),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      scrollDirection: Axis.vertical,
      itemCount: My.list2.length,
      itemBuilder: (context, index) {
        final list2 = My.list2[index];
        return ProductCard(pro: list2);
      },
    );
  }

  Widget buildtolip() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100 / 140),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      scrollDirection: Axis.vertical,
      itemCount: My.tolip.length,
      itemBuilder: (context, index) {
        final tolip = My.tolip[index];
        return ProductCard(pro: tolip);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 248, 249),
      endDrawer: const Drawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LogInScreen()));
          },
        ),
        title: const Text(
          "Flower",
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 22,
            color: Color.fromARGB(255, 161, 215, 99),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            child: const Text(
              "Let's Find Your Flowers",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'what do you search for?',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 206, 34, 120)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 206, 34, 120)),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(14),
            child: const Text(
              "Category",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              categ(0, "All"),
              categ(1, "Rosa acicula"),
              categ(2, "Tolip"),
            ],
          ),
          Expanded(
              child: isselect == 0
                  ? buildAll()
                  : isselect == 1
                      ? buildlist2()
                      : buildtolip()),
        ],
      ),
    );
  }
}
