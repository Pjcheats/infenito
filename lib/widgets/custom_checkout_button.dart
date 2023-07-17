import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:infenito/widgets/gradient_text_button.dart';

class CustomCheckoutButton extends StatefulWidget {
  @override
  _CustomCheckoutButtonState createState() => _CustomCheckoutButtonState();
}

class _CustomCheckoutButtonState extends State<CustomCheckoutButton> {
  bool _priority = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      height: 70,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 46, 46, 46).withOpacity(1),
          borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Row(
                children: [
                  Checkbox(
                    side: BorderSide(width: 1.4,
                    color: Colors.white70,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)
                    ),
                    fillColor: MaterialStatePropertyAll<Color>(Colors.white70),
                    checkColor: Color(0xff198133),
                    value: _priority,
                    onChanged: (value) {
                      setState(() {
                        _priority = value ?? false;
                      });
                    },
                  ),
                  Text(
                          "High Priority",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Icon(EvaIcons.alert_circle,color: Colors.pink.shade400,size: 16,),
                        Spacer(),
                  SizedBox(
                    width: 130,
                    child: Flexible(
                      child: GradientTextButton(
                          onPressed: () {},
                          radius: 6,
                          colors: [
                            Color(0xff198133),
                            Color(0xff37AD54),
                          ],
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
