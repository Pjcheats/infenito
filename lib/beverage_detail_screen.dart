import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:infenito/models/beverage_info_model.dart';
import 'package:infenito/widgets/custom_checkout_button.dart';
import 'package:infenito/widgets/custom_switch.dart';

class BeverageDetailScreen extends StatefulWidget {
  const BeverageDetailScreen({super.key, required this.beverageInfo});
  final BeverageInfo beverageInfo;
  @override
  State<BeverageDetailScreen> createState() => _BeverageDetailScreenState();
}

class _BeverageDetailScreenState extends State<BeverageDetailScreen> {
  int _cupIndex = 0;
  final _scon = ScrollController(initialScrollOffset: 15);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.38,
            width: double.infinity,
            child: Image.asset(
              'assets/${widget.beverageInfo.imageUrl}',
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                // Background Image
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background-image.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal:  20),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xffaaaaaa), width: 2)),
                      child: ListView(
                        controller: _scon,
                        children: [
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  // const SizedBox(height: 10),
                                  Text(
                                    widget.beverageInfo.name,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        height: 1.8,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0x7fffffff)),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${widget.beverageInfo.rating}   ⭐ (${widget.beverageInfo.numberOfRatings})",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          height: 2,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                          padding:
                                              const EdgeInsets.fromLTRB(
                                                  2, 1.5, 2, 2.5),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              border: Border.all(
                                                  color: Colors
                                                      .green.shade700)),
                                          child: Icon(
                                            BoxIcons.bxs_circle,
                                            size: 8,
                                            color: Colors.green.shade700,
                                          ))
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width *
                                            .7,
                                    child: Text(
                                      widget.beverageInfo.description ??
                                          "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.s",
                                      maxLines: 3,
                                      style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0x7fcccccc)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Choice of Cup filling",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xb1ffffff)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _cupIndex = 0;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: _cupIndex == 0
                                          ? const Color(0xff37AD54)
                                          : Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(5)),
                                  child: Text(
                                    "Full",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: _cupIndex == 0
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _cupIndex = 1;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: _cupIndex == 1
                                          ? const Color(0xff37AD54)
                                          : Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(5)),
                                  child: Text(
                                    "1/2 Full",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: _cupIndex == 1
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _cupIndex = 2;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: _cupIndex == 2
                                          ? const Color(0xff37AD54)
                                          : Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(5)),
                                  child: Text(
                                    "3/4 Full",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: _cupIndex == 2
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _cupIndex = 3;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: _cupIndex == 3
                                          ? const Color(0xff37AD54)
                                          : Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(5)),
                                  child: Text(
                                    "1/4 Full",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: _cupIndex == 3
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Choice of Milk",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xb1ffffff)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              CustomGradientSwitch(
                                  color1: Color(0xff238544),
                                  color2: Color(0xff51E068)),
                              Text(
                                "   Skim Milk",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xb1ffffff)),
                              ),
                              Spacer(),
                              CustomGradientSwitch(
                                  color1: Color(0xff238544),
                                  color2: Color(0xff51E068)),
                              SizedBox(
                                width: 120,
                                child: Text(
                                  "   Full Cream Milk",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xb1ffffff)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              CustomGradientSwitch(
                                  color1: Color(0xff238544),
                                  color2: Color(0xff51E068)),
                              Text(
                                "   Almond Milk",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xb1ffffff)),
                              ),
                              Spacer(),
                              CustomGradientSwitch(
                                  color1: Color(0xff238544),
                                  color2: Color(0xff51E068)),
                              SizedBox(
                                width: 120,
                                    
                                child: Text(
                                  "   No Cream Milk",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xb1ffffff)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              CustomGradientSwitch(
                                  color1: Color(0xff238544),
                                  color2: Color(0xff51E068)),
                              Text(
                                "   Soye Milk",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xb1ffffff)),
                              ),
                              Spacer(),
                              CustomGradientSwitch(
                                  color1: Color(0xff238544),
                                  color2: Color(0xff51E068)),
                              SizedBox(
                                width: 120,
                                    
                                child: Text(
                                  "   Oat Milk",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xb1ffffff)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              CustomGradientSwitch(
                                  color1: Color(0xff238544),
                                  color2: Color(0xff51E068)),
                              Text(
                                "   Lactose Free Milk",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xb1ffffff)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Choice of Sugar",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xb1ffffff)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              CustomGradientSwitch(
                                  color1: Color(0xff238544),
                                  color2: Color(0xff51E068)),
                              Text(
                                "   Sugar X 1",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xb1ffffff)),
                              ),
                              Spacer(),
                              CustomGradientSwitch(
                                  color1: Color(0xff238544),
                                  color2: Color(0xff51E068)),
                              SizedBox(
                                width: 120,
                                child: Text(
                                  "   Sugar X 2",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xb1ffffff)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              CustomGradientSwitch(
                                  color1: Color(0xff238544),
                                  color2: Color(0xff51E068)),
                              Text(
                                "   1/2 Sugar",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xb1ffffff)),
                              ),
                              Spacer(),
                              CustomGradientSwitch(
                                  color1: Color(0xff238544),
                                  color2: Color(0xff51E068)),
                              SizedBox(
                                width: 120,
                                child: Text(
                                  "   no Sugar",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xb1ffffff)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: CustomCheckoutButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
