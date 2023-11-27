import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';
import 'package:gap/gap.dart';
import '../Widgets/GridView_offers.dart';
import '../Widgets/Menu_Preventive_Fire_.dart';
import '../Widgets/TextWidget.dart';
import '../model/modelPhotos.dart';
import '../Widgets/screenspage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late PageController _pageController;
  // // int _currentPage = 0;
  // // late Timer _timer;

  // @override
  // void initState() {
  //   super.initState();
  //
  //   _pageController = PageController(initialPage: 0);
  //   _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
  //     if (_currentPage < 2) {
  //       _currentPage++;
  //     } else {
  //       _currentPage = 0;
  //     }
  //     _pageController.animateToPage(
  //       _currentPage,
  //       duration: const Duration(milliseconds: 500),
  //       curve: Curves.easeInOut,
  //     );
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   _timer.cancel();
  //   super.dispose();
  // }

  int currentIndex = 0;
  List<PageViewModel> screens = [
    PageViewModel(
        textButton: "Shop",
        image: "assets/images/Screenshot 2023-11-24 214224.png",
        description:
            "Dicover our diverse selction of fire extinguishers and find the right product for your needs ",
        categoryTitle: "Fire Extinguisher"),
    PageViewModel(
        textButton: "Quality",
        image: "assets/images/Screenshot 2023-11-24 215247.png",
        description:
            "We Strive to provide the highest quality Products ana Services to our customers  around ",
        categoryTitle: "Certified Quality"),
    PageViewModel(
        textButton: "Find now",
        image: "assets/images/Screenshot 2023-11-25 211438aaaa.png",
        description:
            "Smoke detector are the first building block for a functioning fire protection system in th home",
        categoryTitle: "Smoke Detector"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(1),
        title: Image.asset(
          "assets/images/Bavaria-Egypt-Egypt-29995-1612179858-og-removebg-preview.png",
          fit: BoxFit.cover,
          height: 85,
          width: 145,
        ),
        elevation: 3,
      ),
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: 230,
            child: FadeIn(
              duration: const Duration(seconds: 2),
              child: PageView.builder(
                physics: const ClampingScrollPhysics(),
                itemCount: screens.length,
                itemBuilder: (context, index) {
                  return Screenone(
                    data: screens[index],
                  );
                },
                onPageChanged: (index) {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 05),
            filterQuality: FilterQuality.high,
            child: PageViewIndicator(
              currentSize: 8,
              animationDuration: const Duration(milliseconds: 300),
              currentColor: Colors.red,
              otherColor: Colors.black45,
              length: screens.length,
              currentIndex: currentIndex,
            ),
          ),
          const Gap(30),
          Container(
            color: const Color(0xffD90429),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    type: "Preventive Fire Protection",
                    fontSize: 18.5,
                    textcolor: Colors.white,
                  ),
                  IconButton(onPressed: (){},
                      color: Colors.white,
                      iconSize: 32,
                      highlightColor: Colors.transparent,
                      icon: const Icon(Icons.arrow_circle_right_rounded))
                ],
              ),
            ),
          ),
          const Gap(2),
          Container(
            color: Colors.black26,
            child: const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: CarouselSliderMenu(),
            ),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.only( left: 10.0,
            right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  type: "Anniversary offers",
                  fontSize: 18,
                ),
                const Text("View All",
                style: TextStyle(
                  color: Colors.black45
                ),)
              ],
            ),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: GridViewOffers(),
          ),

          const Gap(00),

        ],
      ),
    );
  }
}
