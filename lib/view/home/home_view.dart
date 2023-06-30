
import 'package:flutter/material.dart';
import 'package:nike_shoe_app_ui/utils/constants.dart';
import 'components/home_appbar.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        appBar: const HomeAppBar(),
        body: Column(
          children: [

          ],
        ),
      ),
    );
  }
}

