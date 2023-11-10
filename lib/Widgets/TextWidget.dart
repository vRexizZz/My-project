
import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  String? tybe;
  Color?textcolor;
  double? fontSize;
   TextWidget({super.key,this.fontSize,this.textcolor,this.tybe});



  @override
  Widget build(BuildContext context) {
    return Text(
      "$tybe",
          style: TextStyle(
            color: textcolor,
        fontSize: fontSize,
    ),
    );
  }
}
