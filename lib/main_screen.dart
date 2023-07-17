import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:infenito/models/beverage_info_model.dart';
import 'package:infenito/widgets/custom_navbar.dart';
import 'package:infenito/widgets/popular_beverage_card.dart';

import 'widgets/get_beverage_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<BeverageInfo> _mockBeverages = [
    const BeverageInfo(
        name: "Espresso",
        imageUrl: "espresso.png",
        content: "Espresso",
        rating: 4.7,
        numberOfRatings: 859),
    const BeverageInfo(
        name: "Americano",
        imageUrl: "americano.png",
        content: "Espresso, Hot water",
        rating: 4.8,
        numberOfRatings: 265),
    const BeverageInfo(
        name: "Hot Latte",
        imageUrl: "latte.png",
        content: "Espresso, Steamed Milk",
        rating: 4.6,
        numberOfRatings: 754),
    const BeverageInfo(
        name: "Hot Cappuccino",
        imageUrl: "cappuccino.png",
        content: "Espresso, Steamed Milk, Foam",
        rating: 4.4,
        numberOfRatings: 1158),
  ];
  final List<BeverageInfo> _mockBeverages2 = [
    const BeverageInfo(
        name: "Espresso",
        imageUrl: "cover-coffee-1.png",
        content: "Espresso",
        rating: 4.7,
        numberOfRatings: 859),
    const BeverageInfo(
        name: "Americano",
        imageUrl: "cover-coffee-1.png",
        content: "Espresso, Hot water",
        rating: 4.8,
        numberOfRatings: 265),
    const BeverageInfo(
        name: "Hot Latte",
        imageUrl: "cover-coffee-1.png",
        content: "Espresso, Steamed Milk",
        rating: 4.6,
        numberOfRatings: 754),
    const BeverageInfo(
        name: "Hot Cappuccino",
        imageUrl: "cover-coffee-1.png",
        content: "Espresso, Steamed Milk, Foam",
        rating: 4.4,
        numberOfRatings: 1158),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      body: Stack(
        children: [
          // Background Image
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background-image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blurred Container at Center

          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SafeArea(
                            child: Row(
                              children: [
                                const Text(
                                  "👋",
                                  style: TextStyle(fontSize: 24),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                 Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Color(0x7fcccccc)),
                                    ),
                                    const Text(
                                      "Joshua Scanlan",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0x7fcccccc)),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: const EdgeInsets.all(8),
                                    child: const Icon(
                                      BoxIcons.bx_basket,
                                      size: 20,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                const CircleAvatar(
                                  foregroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=466&q=80"),
                                )
                              ],
                            ),
                          ),
                        ).animate().slideY(duration: 400.ms),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 24.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    IonIcons.search,
                                    color: Color(0xff999999),
                                    size: 18,
                                  ),
                                  suffixIcon: Icon(
                                    IonIcons.filter,
                                    color: Color(0xff999999),
                                    size: 18,
                                  ),
                                  hintText: "Search Favourite Beverages",
                                  hintStyle:
                                      TextStyle(fontSize: 12, height: 1.8),
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.white),
                            ),
                          ),
                        ).animate().fade(duration: 1000.ms),
                        Container(
                          height: 270,
                          color: Colors.black26,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  " Most Popular Beverages",
                                  style: TextStyle(
                                      fontSize: 16,
                                      height: 1,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0x7fcccccc)),
                                ),
                              ),
                              Expanded(
                                child: ListView.separated(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                    width: 14,
                                  ),
                                  itemCount: _mockBeverages.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) =>
                                      PopularBeverageCard(
                                              beverageInfo:
                                                  _mockBeverages[index])
                                          .animate()
                                          .move(duration: 400.ms)
                                          .fadeIn(duration: 400.ms),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            " Get it instantly",
                            style: TextStyle(
                                fontSize: 16,
                                height: 1,
                                fontWeight: FontWeight.w500,
                                color: Color(0x7fcccccc)),
                          ),
                        ),
                        ...List.generate(
                          _mockBeverages2.length,
                          (index) => GetBeverageCard(
                                  beverageInfo: _mockBeverages2[index])
                              .animate()
                              .fadeIn(duration: 400.ms, delay: 200.ms * index)
                              .moveX(
                                  begin: 50,
                                  duration: 400.ms,
                                  delay: 200.ms * index),
                        ),
                        const SizedBox(height: 100,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: CustomBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  
}
