
import 'package:portfolio_webapp/utils/styleguide_web.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {

  VoidCallback? onPressed;
  MaterialStateProperty<Color> shadowColor;
  String buttonText;
  bool? isInRow;
  CustomButton({Key? key, @required this.onPressed, required this.buttonText, required this.shadowColor, this.isInRow} ) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Ink(//The Ink widget allowed us to decorate the button as we wish (we needed to use it for the color gradients) .
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[
                  Colors.black54,
                  Colors.black45,
                  Colors.black54,
                ]
            ),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 22.0, top: 8.0, bottom: 8.0,),
            child: Text(widget.buttonText,textAlign: TextAlign.center, style: AppThemeWeb.regularTextWhiteBold),
          )
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(AppThemeWeb.mainColorRed,),
        elevation: MaterialStateProperty.all<double>(9.0),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(0)),
        shadowColor: widget.shadowColor,
      ),
    );
  }
}