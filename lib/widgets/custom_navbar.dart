import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      decoration: BoxDecoration(
          color: const Color(0xff323232).withOpacity(0.9),
          borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    child: _currentIndex == 0
                        ? Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 14),
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey.shade700)),
                            child: const Icon(
                              EvaIcons.home_outline,
                              color: Colors.white,
                              size: 20,
                            )).animate().scale()
                        : const Icon(
                            EvaIcons.home_outline,
                            color: Colors.white,
                            size: 20,
                          ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                    child: _currentIndex == 1
                        ? Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 14),
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey.shade700)),
                            child: const Icon(
                              EvaIcons.person_outline,
                              color: Colors.white,
                              size: 20,
                            )).animate().scale()
                        : const Icon(
                            EvaIcons.person_outline,
                            color: Colors.white,
                            size: 20,
                          ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                    child: _currentIndex == 2
                        ? Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 14),
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey.shade700)),
                            child: const Icon(
                              EvaIcons.credit_card_outline,
                              color: Colors.white,
                              size: 20,
                            )).animate().scale()
                        : const Icon(
                            EvaIcons.credit_card_outline,
                            color: Colors.white,
                            size: 20,
                          ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = 3;
                      });
                    },
                    child: _currentIndex == 3
                        ? Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 14),
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey.shade700)),
                            child: const Icon(
                              EvaIcons.bell_outline,
                              color: Colors.white,
                              size: 20,
                            )).animate().scale()
                        : const Icon(
                            EvaIcons.bell_outline,
                            color: Colors.white,
                            size: 20,
                          ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = 4;
                      });
                    },
                    child: _currentIndex == 4
                        ? Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 14),
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey.shade700)),
                            child: const Icon(
                              EvaIcons.archive_outline,
                              color: Colors.white,
                              size: 20,
                            )).animate().scale()
                        : const Icon(
                            EvaIcons.archive_outline,
                            color: Colors.white,
                            size: 20,
                          ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
