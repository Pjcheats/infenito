import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:infenito/beverage_detail_screen.dart';
import 'package:infenito/models/beverage_info_model.dart';

class GetBeverageCard extends StatelessWidget {
  const GetBeverageCard({super.key, required this.beverageInfo});
  final BeverageInfo beverageInfo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => BeverageDetailScreen(beverageInfo: beverageInfo),));
      },
      child: Container(
        height: 128,
        margin: const EdgeInsets.only(right: 20,left: 20, bottom: 14),
        padding: const EdgeInsets.fromLTRB(20,10,10,10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.16),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(height: 10),
                Text(
                  beverageInfo.name,
                  style: const TextStyle(
                      fontSize: 16,
                      height: 1.8,
                      fontWeight: FontWeight.w400,
                      color: Color(0x7fcccccc)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${beverageInfo.rating} ⭐ (${beverageInfo.numberOfRatings})",
                      style: const TextStyle(
                        fontSize: 12,
                        height: 1.2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(2,1.5,2,2.5),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),border: Border.all(color: Colors.green.shade700)),
                      child: Icon(BoxIcons.bxs_circle,size: 8,color: Colors.green.shade700,))
                  ],
                ),
                    const SizedBox(height: 5),
    
                Expanded(
                  child: Container(
                    width: 150,
                    child: Text(
                      beverageInfo.description ?? "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.s",
                      maxLines: 3,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0x7fcccccc)),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: SizedBox.square(
                        dimension: 90,
                        child: Image.asset(
                          "assets/${beverageInfo.imageUrl}",
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color.fromARGB(255, 81, 120, 74)
                        ),
                        child: const Text("Add",style: TextStyle(color: Colors.white,fontSize: 12),)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
