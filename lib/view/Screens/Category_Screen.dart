import 'package:Bavaria_Fire_Fighting_Solution/view/Screens/prouductlist%20screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Widgets/Menu_Widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var hegiht = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(1),
        elevation: 3,
        title: Image.asset(
          "assets/images/Bavaria-Egypt-Egypt-29995-1612179858-og-removebg-preview.png",
          width: 150,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: hegiht * .22,
            child: Image.asset(
              "assets/images/Bavaria-Ziegler22020248341.png",
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                hintStyle: TextStyle(
                  fontSize: 13.5
                )
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300
            ),
            child: MenuProducts(
                image: "assets/images/Screenshot 2023-12-13 170323.png",
                text: "Fire Extinguishers"),
          ),
          MenuProducts(
              image: "assets/images/fire-extinguisher (1)2.png",
              text: "Fire Cabinets, Reels"),
          Row(
            children: [
              Expanded(
                child: MenuProducts(
                    image:
                        "assets/images/c383da49-53d9-43ea-9512-eeddb86c2fdc.gif",
                    text: "Fire Fighting Trailers And Skid Units"),
              ),
              Expanded(
                child: MenuProducts(
                    image: "assets/images/Bavaria-fire-hose-and-nozzles.png",
                    text: "Fire Fighting Equipment"),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MenuProducts(
                    image:
                        "assets/images/d8eef0c7-db11-4d87-aced-5dd0cbe4beac.png",
                    text: "Special Applications Extinguishing Units"),
              ),
              Expanded(
                child: MenuProducts(
                    image: "assets/images/MMX Intelligent.png",
                    text: "Fire Alarm & Evacuation Systems"),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MenuProducts(
                    image: "assets/images/Bavaria Firesearch system.png",
                    text: "Fire Fighting Systems"),
              ),
              Expanded(
                child: MenuProducts(
                    image:
                        "assets/images/8596721d-a974-456f-9a34-992c3a34a29e.png",
                    text: "Accessories"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
