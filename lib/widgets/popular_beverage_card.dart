import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:infenito/beverage_detail_screen.dart';
import 'package:infenito/models/beverage_info_model.dart';

class PopularBeverageCard extends StatelessWidget {
  const PopularBeverageCard({super.key, required this.beverageInfo});
  final BeverageInfo beverageInfo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => BeverageDetailScreen(beverageInfo: beverageInfo),));
      },
      child: Container(
        width: 160,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.16),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.grey.shade700, width: 1.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/${beverageInfo.imageUrl}",
                height: 100,
              ),
            ),
            // const SizedBox(height: 10),
            Text(
              "${beverageInfo.name}",
              style: const TextStyle(
                  fontSize: 15,
                  height: 2,
                  fontWeight: FontWeight.w400,
                  color: Color(0x7fcccccc)),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        "${beverageInfo.content}",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      ),
                    ),
                    Text(
                      "${beverageInfo.rating} ⭐ (${beverageInfo.numberOfRatings})",
                      style: const TextStyle(
                        fontSize: 11,
                        height: 1.8,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 81, 120, 74),
                    ),
                    padding: const EdgeInsets.all(3),
                    child: const Icon(
                      BoxIcons.bx_plus,
                      color: Colors.white,
                      size: 20,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
