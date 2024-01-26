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
      body: Center(
        child: ListView(
          children: [
            Stack(
              children: [

                SizedBox(
                  width: double.infinity,
                  height: hegiht * .25,
                  child: Image.asset(
                    "assets/images/Bavaria-Ziegler22020248341.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: hegiht * .22,
                    color: Colors.black26.withOpacity(0.25),
                  ),
                ),

                Center(
                    child: Container(
                      height: hegiht*.25,
                      alignment: AlignmentDirectional.center,
                      child: const Text(
                          "Bavaria Group Signed a Joint Venture\n Agreement  with Ziegler Group to Establish \n Bavaria Ziegler LLC"
                      ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Poppins",

                          color: Colors.white,
                          fontSize: 15
                        ),
                      ),
                    ),
                ),
              ],
            ),
            const Gap(10),
            SizedBox(
              height: hegiht*.08,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(width: 0.2,
                    color: Colors.black45)
                  ),

                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        hintStyle: TextStyle(fontSize: 15)),
                  ),
                ),
              ),
            ),

            const Gap(00),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MenuProducts(
                      image: "assets/images/Screenshot 2023-12-16 195615.png",
                      text: "Fire Extinguishers"),
                  MenuProducts(
                      image:
                          "assets/images/27c2a24a-c41a-480b-a8ed-09dd56d3edee.gif",
                      text: "Fire Cabinets, Reels"),
                  MenuProducts(
                      image:
                          "assets/images/c383da49-53d9-43ea-9512-eeddb86c2fdc.gif",
                      text: "Fire Fighting Trailers And Skid Units"),
                  MenuProducts(
                      image: "assets/images/Bavaria-fire-hose-and-nozzles.png",
                      text: "Fire Fighting Equipment"),
                  MenuProducts(
                      image:
                          "assets/images/d8eef0c7-db11-4d87-aced-5dd0cbe4beac.png",
                      text: "Special Applications Extinguishing Units"),
                  MenuProducts(
                      image: "assets/images/MMX Intelligent.png",
                      text: "Fire Alarm & Evacuation Systems"),
                  MenuProducts(
                      image: "assets/images/Bavaria Firesearch system.png",
                      text: "Fire Fighting Systems"),
                  MenuProducts(
                      image:
                          "assets/images/8596721d-a974-456f-9a34-992c3a34a29e.png",
                      text: "Accessories"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
