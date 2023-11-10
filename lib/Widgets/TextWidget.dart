
import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  String? type;
  Color?textcolor;
  double? fontSize;
  String? fontfamily;
   TextWidget({super.key,this.fontSize,this.textcolor,this.type,this.fontfamily});



  @override
  Widget build(BuildContext context) {
    return Text(

      "$type",
          style: TextStyle(
            fontFamily: fontfamily,
            fontWeight: FontWeight.w500,
            color: textcolor,
        fontSize: fontSize,
    ),
    );
  }
}
