import 'package:Bavaria_Fire_Fighting_Solution/view/prouductlist%20screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoryScreen extends StatelessWidget {
   CategoryScreen({super.key});
double heghit = 170;

  @override
  Widget build(BuildContext context) {
    double fontsize2 = 13;
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ScreenProuductList();
                      }));
                    },
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border: Border.all(width: 0.2, color: Colors.grey),
                          ),
                          child: Image.asset(
                            "assets/images/51-LxuiLEgL._SX522_.png",
                            fit: BoxFit.fill,
                            height: heghit,
                          ),
                        ),
                        const Gap(10),
                        const Text(
                          "Fire \n Extinguisher",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                            fontFamily: "Poppins",
                            letterSpacing: 0.6
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
                const Gap(15),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(width: 0.2, color: Colors.grey),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/fire-extinguisher (1)2.png",
                            fit: BoxFit.fill,
                            height: heghit,
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    const Text(
                      "Fire Cabinets , Reels and Racks",

                      textAlign: TextAlign.center,
                      style:
                          TextStyle(
                              fontFamily: "Poppins",
                              letterSpacing: 0.6,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                    )
                  ],
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(width: 0.2, color: Colors.grey),
                        ),
                        child: Image.asset(
                          "assets/images/c383da49-53d9-43ea-9512-eeddb86c2fdc.gif",
                          fit: BoxFit.fill,
                          height: heghit,
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        "Fire Fighting Trailers",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            letterSpacing: 0.6,
                            fontWeight: FontWeight.w700, fontSize: 13),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                const Gap(15),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(width: 0.2, color: Colors.grey),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/Bavaria Firesearch system.png",
                              fit: BoxFit.fill,
                              height: heghit,
                            ),
                          ],
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        "Fire Fighting Systems ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(width: 0.2, color: Colors.grey),
                        ),
                        child: Image.asset(
                          "assets/images/d8eef0c7-db11-4d87-aced-5dd0cbe4beac.png",
                          fit: BoxFit.fill,
                          height: heghit,
                        ),
                      ),
                      const Gap(10),
                      const Text(

                        "Special Applications\n Extinguishing Units",
                        style: TextStyle(
                            fontFamily: "Poppins",

                            letterSpacing: 0.4,
                            fontWeight: FontWeight.w700, fontSize: 13),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                const Gap(15),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(width: 0.2, color: Colors.grey),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/MMX Intelligent.png",
                              fit: BoxFit.fill,
                              height: heghit,
                            ),
                          ],
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        "Fire Alarm \n ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(width: 0.2, color: Colors.grey),
                        ),
                        child: Image.asset(
                          "assets/images/Bavaria-fire-hose-and-nozzles.png",
                          height: heghit,
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        "Fire Fighting  \n Equipment",

                        style: TextStyle(
                            fontFamily: "Poppins",
                            letterSpacing: 0.6,
                            fontWeight: FontWeight.w700, fontSize: 13),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                const Gap(15),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(width: 0.2, color: Colors.grey),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/8596721d-a974-456f-9a34-992c3a34a29e.png",
                              fit: BoxFit.fill,
                              height: heghit,
                            ),
                          ],
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        "Accessories \n ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
