import 'package:flutter/material.dart';
import 'package:nike_shoe_app_ui/data/dummy_data.dart';
import 'package:nike_shoe_app_ui/models/shoe_model.dart';
import 'package:nike_shoe_app_ui/utils/constants.dart';
import 'components/home_appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectIndexOfCategory = 0;
  int selectIndexOfFeatured = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        appBar: const HomeAppBar(),
        body: Column(
          children: [
            _categoryView(size),
            SizedBox(height: size.height * 0.01),
            Row(
              children: [
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                  width: size.width / 16,
                  height: size.height / 2.4,
                  // color: Colors.red,
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: featured.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectIndexOfFeatured = index;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.04),
                              child: Text(
                                featured[index],
                                style: TextStyle(
                                  fontSize:
                                      selectIndexOfFeatured == index ? 21 : 18,
                                  fontWeight: selectIndexOfFeatured == index
                                      ? FontWeight.w700
                                      : FontWeight.w400,
                                  color: selectIndexOfFeatured == index
                                      ? AppConstantsColor.darkTextColor
                                      : AppConstantsColor.unSelectedTextColor,
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                Container(
                  width: size.width * 0.89,
                  height: size.height * 0.4,
                  // color: Colors.red,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: availableShoes.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        ShoeModel model = availableShoes[index];
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.all(size.height * 0.01),
                            width: size.width / 1.5,
                            // color: Colors.yellow,
                            child: Stack(
                              children: [
                                Container(
                                  width: size.width / 1.81,
                                  decoration: BoxDecoration(
                                    color: model.modelColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryView(Size size) {
    return Row(
      children: [
        SizedBox(
          width: size.width,
          height: size.height * 0.04,
          // color: Colors.red,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectIndexOfCategory = index;
                    });
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.04),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        fontSize: selectIndexOfCategory == index ? 21 : 18,
                        fontWeight: selectIndexOfCategory == index
                            ? FontWeight.w700
                            : FontWeight.w400,
                        color: selectIndexOfCategory == index
                            ? AppConstantsColor.darkTextColor
                            : AppConstantsColor.unSelectedTextColor,
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
