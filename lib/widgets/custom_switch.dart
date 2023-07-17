import 'package:flutter/material.dart';

class CustomGradientSwitch extends StatefulWidget {
  final ValueChanged<bool>? onChanged;
  final Color color1;
  final Color color2;

  const CustomGradientSwitch({
    Key? key,
    this.onChanged,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  _CustomGradientSwitchState createState() => _CustomGradientSwitchState();
}

class _CustomGradientSwitchState extends State<CustomGradientSwitch> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
        });

        widget.onChanged?.call(_value);
      },
      child: Container(
        width: 32,
        height: 18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: _value
                ? [widget.color1, widget.color2]
                : [Colors.grey, Color(0xff575757)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              alignment: _value ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  gradient: LinearGradient(
            colors: _value
                ? [Color(0xff206823), Color(0xff66CF4B)]
                : [Colors.white, Color(0xff202020)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}