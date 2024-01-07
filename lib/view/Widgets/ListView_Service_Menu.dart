import 'package:flutter/material.dart';

import '../../model/Service_Model_Menu.dart';
import 'Service_Widget_Menu.dart';

class ListViewServiceMenu extends StatelessWidget {
  ListViewServiceMenu({super.key});

  List<ServiceMenu> menu = [
    ServiceMenu(
      photo: 'assets/images/kundenservice22023114105817.jpg',
      headText: 'Customer Care and Maintenance',
      description:
          'Bavaria aims to provide all clients, current and potential, with high-quality support and service enabling an easy and direct communication & access to our dedicated staff.',
      textButton: 'Learn More',
    ),
    ServiceMenu(
      photo: 'assets/images/pexels-fauxels-3182781.jpg',
      headText: 'Consulting',
      description:
          'Through an experience that extends to decades and a reputation of offering the most advanced technology at a reasonable cost as well as co-operation with a group of reliable consulting firms both domestically and internationally, Bavaria is pleased to offer its customers through its teams and outsourced experience a wide variety of consulting services',
      textButton: 'Learn More',
    ),
    ServiceMenu(
      photo: 'assets/images/0738de61-ef50-4d00-8dc3-e3649d29cdde.jpg',
      headText: 'FIRE FIGHTING SCHOOL',
      description:
          'BAVARIA Egypt, the pioneer manufacturer of firefighting equipment in Egypt and the Middle East, has established its training center, BAVARIA Egypt Firefighting Training Center, at the new industrial city of 10th of Ramadan, about 50 km northeast of Cairo. It is the most developed and  up-to-date firefighting training center in the Arab region.',
      textButton: 'Learn More',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: menu.length,
      itemBuilder: (ctx, index) {
        return ServiceMenuWidget(
          data: menu[index],
        );

      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
      mainAxisSpacing: 0,
      childAspectRatio: 1.4
      
    ),
    );
  }
}
