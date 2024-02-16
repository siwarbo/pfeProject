import 'package:flutter/material.dart';
import 'package:forkify/utils/colors.dart';
import 'package:forkify/utils/dimensions.dart';
import 'package:forkify/widgets/app_icon.dart';
import 'package:forkify/widgets/big_text.dart';
import 'package:forkify/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                  size: Dimensions.font26,
                  text: "Tunisian Plat",
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/tunisian-dishes-mechouia-salad.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                    text:
                        "Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food Tunisian food "),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88 " + " x " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add)
              ],
            ),
          )
        ],
      ),
    );
  }
}
