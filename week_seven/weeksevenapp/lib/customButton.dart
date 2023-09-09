import 'package:flutter/material.dart';

// child: Text(
//   'Hello, World!',
//   style: TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.bold,
//     color: Colors.blue,
//     letterSpacing: 2,
//     fontStyle: FontStyle.italic,
//     fontFamily: 'Roboto',
//   ),
// ),
class CustomButton extends StatefulWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final IconData icons;
  final Color buttonColor;
  final Color textColor;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.icons,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color? _buttonColor;
  late Color _textColor;

  @override
  void initState() {
    _buttonColor = widget.buttonColor;
    _textColor = widget.textColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _buttonColor = Colors.white;
          _textColor = Colors.blue;
        });
      },
      onTapUp: (_) {
        setState(() {
          _buttonColor = widget.buttonColor;
          _textColor = widget.textColor;
        });
      },
      onTapCancel: () {
        setState(() {
          _buttonColor = widget.buttonColor;
          _textColor = widget.textColor;
        });
      },
      onTap: widget.onPressed,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
          Container(
            decoration: BoxDecoration(
              color: _buttonColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
            // padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 13.0),
            padding: const EdgeInsets.fromLTRB(15, 20, 220, 5),
            child: Text(

              widget.buttonText,
              style: TextStyle(
                color: _textColor,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            child: Icon(
              widget.icons,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ]
      ),
    );
  }
}