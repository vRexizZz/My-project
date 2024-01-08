import 'package:Bavaria_Fire_Fighting_Solution/view/Screens/Product_details.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../model/Model_Fire.dart';

class CategoryState extends StatelessWidget {
  const CategoryState({super.key, required this.data});

  final ProdutsModel data;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return  ProductDetails(data: data,);
        }));
      },
      child: Card(
        surfaceTintColor: Colors.white,
        elevation: 4,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(7),
              Center(
                child: Image.network(
                  data.Image,
                  height: height * 0.22,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const Gap(15),
              Text(
                data.productname,
                maxLines: 2,
                style: const TextStyle(color: Colors.black, fontSize: 13.5,
                overflow: TextOverflow.ellipsis,


                fontWeight: FontWeight.w500),
              ),
              const Gap(10),
              Text(
                "EGP ${data.price}",
                style: const TextStyle(color: Colors.black, fontSize: 16,
                fontFamily: "Poppins"),
              ),
              // Text(
              //   data.Dec,
              //   style: const TextStyle(color: Colors.black54, fontSize: 20),
              // ),
              const Gap(10),
              Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: MaterialButton(
                    color: Colors.red.shade700,
                    onPressed: () {},
                    child: const Text(
                      "Add To Cart",
                      style: TextStyle(color: Colors.white,
                      fontFamily: "Poppins"),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
