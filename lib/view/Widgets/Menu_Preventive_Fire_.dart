import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'TextWidget.dart';

class CarouselSliderMenu extends StatelessWidget {
  const CarouselSliderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    var hegith = MediaQuery.of(context).size.height;
    return SizedBox(
      height:hegith*0.20,
      child: CarouselSlider(
        items: [

          Stack(
            children: [
              Container(
                child: Image.asset(
                  "assets/images/610099885d1b996962ee9983882820a8.jpg",
                  fit: BoxFit.fill,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              // Container(
              //   color: Colors.black26,
              // ),
              Container(
                color: Colors.black38,
                child: Center(
                  child: TextWidget(
                    type: "Living Room",
                    textcolor: Colors.white,
                    fontSize: 22,
                    fontfamily: "Poppins",
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              SizedBox(
                height: double.infinity,
                child: Image.asset(
                  "assets/images/pexels-daria-obymaha-1684032.jpg",
                  fit: BoxFit.fill,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              Container(
                color: Colors.black38,
                child: Center(
                  child: TextWidget(
                    type: "Kitchen",
                    textcolor: Colors.white,
                    fontSize: 22,
                    fontfamily: "Poppins",
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                height: double.infinity,
                child: Image.asset(
                  "assets/images/pexels-max-rahubovskiy-6794925.jpg",
                  fit: BoxFit.fill,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              // Container(
              //   color: Colors.black26,
              // ),
              Container(
                color: Colors.black38,
                child: Center(
                  child: TextWidget(
                    type: "Office",
                    textcolor: Colors.white,
                    fontSize: 22,
                    fontfamily: "Poppins",
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                height: double.infinity,
                child: Image.asset(
                  "assets/images/istockphoto-1213695547-612x612.jpg",
                  fit: BoxFit.fill,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              // Container(
              //   color: Colors.black26,
              // ),
              Container(
                color: Colors.black38,
                child: Center(
                  child: TextWidget(
                    type: "Bedroom",
                    textcolor: Colors.white,
                    fontSize: 22,
                    fontfamily: "Poppins",
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                height: double.infinity,
                child: Image.asset(
                  "assets/images/pexels-kindel-media-7578862.jpg",
                  fit: BoxFit.fill,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              Container(
                color: Colors.black38,
                child: Center(
                  child: TextWidget(
                    type: "Garage",
                    textcolor: Colors.white,
                    fontSize: 22,
                    fontfamily: "Poppins",
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                height: double.infinity,
                child: Image.asset(
                  "assets/images/pexels-photo-2775231.jpeg",
                  fit: BoxFit.fill,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              // Container(
              //   color: Colors.black26,
              // ),
              Container(
                color: Colors.black38,
                child: Center(
                  child: TextWidget(
                    type: "Camper",
                    textcolor: Colors.white,
                    fontSize: 22,
                    fontfamily: "Poppins",
                  ),
                ),
              )
            ],
          ),

        ],
        options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 1.1,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            viewportFraction: 0.62,
          initialPage: 0,
          autoPlayCurve: Curves.linear,
          autoPlayAnimationDuration: Duration(seconds: 1)
        ),
      ),
    );
  }
}
