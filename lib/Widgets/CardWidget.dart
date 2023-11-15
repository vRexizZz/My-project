import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prouductlist/Widgets/prouductwidget.dart';

import '../model/Model category.dart';


class CardWidget extends StatelessWidget {
   CardWidget({Key? key}) : super(key: key);
List<ModelCategory> ListData=[
  ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/09/Vora-X-P-6-90-min-scaled.jpg',
  title: "BAVARIA 6kg Charging Powder Extinguisher, 12LE"),
  ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/07/Magnum-P-6-XL-min-scaled.jpg',
  title: "BAVARIA 6kg Charging Powder Extinguisher, 15LE"),
  ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/09/Sigma-5-min-scaled.jpg',
  title: "BAVARIA 5kg CO2 Fire Extinguisher, 5LE"),
  // ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/09/VoleX-P-6-XL-Mano-min-scaled.jpg'),
  // ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/09/Storm-12-min-scaled.jpg'),
  // ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/09/Tigra-1-1-scaled.jpg'),
  // ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/09/Champion-2-min-scaled.jpg'),
  // ModelCategory(image: ''),
  // ModelCategory(image: ''),
  // ModelCategory(image: ''),
  // ModelCategory(image: ''),


];
  @override
  Widget build(BuildContext context) {

    return  GridView.builder(
      physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio:85/203
            ,
          ),
          itemCount: ListData.length,
          itemBuilder: (BuildContext context, int index) {
            return  ProductWidget(data: ListData[index]);
          },
    );
  }
}
