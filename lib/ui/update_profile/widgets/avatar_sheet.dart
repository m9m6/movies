import 'package:flutter/material.dart';
import 'package:movies/ui/update_profile/widgets/profile_avatar.dart';

import '../../../utils/app_colors.dart';
class AvatarSheet extends StatefulWidget {
  const AvatarSheet({super.key});
  @override
  State<AvatarSheet> createState() => _AvatarSheetState();
}
class _AvatarSheetState extends State<AvatarSheet> {
  List<String> images = [
    'assets/Component 11 – 1.png',
    'assets/gamer (1) (2).png',
  ];
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(MediaQuery.sizeOf(context).width * 0.05),
          topRight: Radius.circular(
            MediaQuery.sizeOf(context).width * 0.05,
          ),
        ),
      ),
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.05),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: MediaQuery.sizeOf(context).width * 0.03,
          crossAxisSpacing: MediaQuery.sizeOf(context).width * 0.03,
          childAspectRatio: 1,
        ),
        children: List.generate(
          images.length,
              (index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex= index;
              });
            },
            child: Container(
                padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.03),
                decoration: BoxDecoration(
                  color: selectedIndex == index ? AppColors.yellowColor : AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.yellowColor,width: 2),
                ),
                child: ProfileAvatar(imageUrl: images[index])),
          ),
        ),
      ),
    );
  }
}
