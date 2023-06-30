import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shoe_app_ui/theme/custom_app_theme.dart';
import 'package:nike_shoe_app_ui/utils/constants.dart';


class HomeAppBar extends StatelessWidget with PreferredSizeWidget{
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(top: 3.0),
        child: Text("Discover", style: AppThemes.homeAppBar),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search,
              size: 25, color: AppConstantsColor.darkTextColor),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.bell,
              size: 25, color: AppConstantsColor.darkTextColor),
        ),
      ],
    );
  }

  @override

  Size get preferredSize => const Size.fromHeight(70);
}
