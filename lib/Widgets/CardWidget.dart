import 'package:Bavaria_Fire_Fighting_Solution/Widgets/prouductwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/09/Vora-X-P-6-90-min-scaled.jpg',
      title: "BAVARIA 6kg Charging Powder Extinguisher, 12LE"),
  ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/07/Magnum-P-6-XL-min-scaled.jpg',
      title: "BAVARIA 6kg Charging Powder Extinguisher, 15LE"),
  ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/09/Sigma-5-min-scaled.jpg',
      title: "BAVARIA 5kg CO2 Fire Extinguisher, 5LE"),
  ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/09/Vora-X-P-6-90-min-scaled.jpg',
      title: "BAVARIA 6kg Charging Powder Extinguisher, 12LE"),
  ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/07/Magnum-P-6-XL-min-scaled.jpg',
      title: "BAVARIA 6kg Charging Powder Extinguisher, 15LE"),
  ModelCategory(image: 'https://bavaria-feuerloeschershop.de/wp-content/uploads/2020/09/Sigma-5-min-scaled.jpg',
      title: "BAVARIA 5kg CO2 Fire Extinguisher, 5LE"),
];
  @override
  Widget build(BuildContext context) {

    return  GridView.builder(
      physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio:85/195,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
          ),
          itemCount: ListData.length,
          itemBuilder: (BuildContext context, int index) {
            return  ProductWidget(data: ListData[index]);
          },
    );
  }
}
