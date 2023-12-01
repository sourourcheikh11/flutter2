import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet1/pages/home_page.dart';
import 'package:projet1/widgets/app_text.dart';

import 'misc/colors.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                  left:0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("img/mountain.jpg"),
                            fit: BoxFit.cover
                        )
                    ),
                  )),
              Positioned(
                  left: 20,
                  top :50,
                  child: Row(children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu),
                  color:Colors.white,
                )
              ],)),
              Positioned(
                  top: 320,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:   BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(text: "Yosemite",//color:Colors.black.withOpacity(0.8)
                               ),
                            AppLargeText(text: "\$ 250",//color: AppColors.mainColor
                               )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.location_on,color: AppColors.mainColor,),
                            SizedBox(height: 5,),
                            AppText(text: "USA,CALIFORNIA",color: AppColors.textColor1,)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                return Icon(Icons.star,color: AppColors.starColor,);
                              }),
                            ),
                            SizedBox(width: 10,),
                            AppText(text: "4.0",color: AppColors.textColor2,)
                          ],
                        )

                      ],
                    ),
              ))


            ],
          )
      ),
    );
  }
}
