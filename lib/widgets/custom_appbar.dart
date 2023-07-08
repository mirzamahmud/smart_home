import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.arrow_back_ios_outlined,size: 14,color: Colors.white,),
                Text("Back",style: smallWhiteLite)
              ],
            ),

            Text(title,style: titleWhiteBold),

            Container(
                height: 36,width: 36,
                decoration: BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.circular(25)
                ),child: Icon(Icons.search,size: 20,color: backTill)
            )
          ],
        ),
      ),
    );
  }
}
