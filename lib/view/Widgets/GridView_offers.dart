import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/Offers_Model.dart';
import 'Offers_Widget.dart';

class GridViewOffers extends StatelessWidget {
  GridViewOffers({super.key});

  List<OffersModel> menu = [
    OffersModel(
        image: 'assets/images/27c2a24a-c41a-480b-a8ed-09dd56d3edee.gif',
        headtext: 'FANTASIA',
        descrption:
            'BAVARIA Fantasia wall Fire Cabinet with flat hose or reinforced',
        Price: '1299',
        oldprice: '1599'),
    OffersModel(
        image: 'assets/images/Bavaria-Smart.png',
        headtext: 'CRYSTAL',
        descrption:
            'BAVARIA Crystal wall Fire Cabinet with flat hose or reinforced rubber hose is suitable for use in both areas outdoors & indoors, as in offices, schools, sports areas, cinemas, assembly rooms, hotels, resorts, malls, airports, hospitals industrial and commercial fire protection needs , such as manufacturing, warehouse, auto repair shops, apartment buildings, restaurants, malls, and many others',
        Price: '1299',
        oldprice: '1599'),
    OffersModel(
        image: 'assets/images/Bavaria Fire Cabinet  taurus st.st.png',
        headtext: 'TAURUS',
        descrption:
            'BAVARIA Fantasia wall Fire Cabinet with flat hose or reinforced',
        Price: '1299',
        oldprice: '1599'),
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.width;

    double gridHeightPercentage = 67.8 / 180;

    double gridHeight = screenHeight / gridHeightPercentage;
    return SizedBox(
      height: gridHeight,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: menu.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 108 / 95,
          mainAxisSpacing:10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return OffersWidget(
            data: menu[index],
          );
        },
      ),
    );
  }
}
