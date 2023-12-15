import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../model/Service_Model_Menu.dart';
import 'TextWidget.dart';

class ServiceMenuWidget extends StatelessWidget {
  const ServiceMenuWidget({super.key, required this.data});

  final ServiceMenu data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.grey.shade50,
        elevation: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              data.photo,
              fit: BoxFit.fill,
              height: 200,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                alignment: AlignmentDirectional.topStart,
                child: TextWidget(
                  type: data.headText,
                  textcolor: Colors.red,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                data.description,
                maxLines: 4,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    elevation: MaterialStateProperty.all(5),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  onPressed: () {},
                  child: Text(
                    data.textButton,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Gap(15),
          ],
        ),
      ),
    );
  }
}
