import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_largetext.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_btn.dart';

class WelcomePge extends StatefulWidget {
  const WelcomePge({Key? key}) : super(key: key);

  @override
  State<WelcomePge> createState() => _WelcomePgeState();
}

class _WelcomePgeState extends State<WelcomePge> {
  List images = [
    'welcome-one.png',
    'welcome-two.png',
    'img/welcome-three.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'img/' + images[index],
                    ),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: 'Trips'),
                          AppText(
                            text: 'Mountain',
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: AppText(
                              text:
                                  'Mountains hikes gives you an incredible sense of freedom along                                  with endurance tests.',
                              size: 14,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ResponsiveButton()
                        ],
                      ),
                      Column(
                        children: List.generate(3, (indexdots) {
                          return Container(
                            margin: EdgeInsets.all(2),
                            width: 8,
                            height: index == indexdots ? 25 : 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexdots
                                  ? AppColors.mainColor
                                  : AppColors.mainColor.withOpacity(0.3),
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
