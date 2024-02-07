import 'package:flutter/material.dart';
import 'package:netflix_clone/view/utils/colorconstant.dart';

class Userscreen extends StatefulWidget {
  const Userscreen({super.key});

  @override
  State<Userscreen> createState() => _UserscreenState();
}

class _UserscreenState extends State<Userscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colorconstant.mycustomblack,
        title: Center(
          child: Image.asset(
            "asset/logos_netflix.png",
            height: 150,
            width: 150,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colorconstant.mycustomwhite,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 135,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colorconstant.mycustomwhite,
                  borderRadius: BorderRadius.circular(20)),
            );
          },
        ),
      ),
    );
  }
}
