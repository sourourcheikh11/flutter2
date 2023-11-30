import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet1/widgets/app_large_text.dart';

import '../widgets/app_text.dart';
import 'misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images=["3.jpg",
  "2.jpg","1.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount:images.length,

          itemBuilder: (_, index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/"+images[index]),
                  fit: BoxFit.cover,

                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top:150,left: 20,right: 20),
                child: Row(
                  children: [Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          AppLargeText(text: "Voyages "),
                          AppText(text: "Montagne",size: 30),
                          SizedBox(height:20,),
                          Container(
                        width: 250,
                        child: AppText(text: "Les randonnées en montagne offrent une sensation extraordinaire de liberté tout en constituant un véritable test d'endurance.",
                        color:AppColors.textColor2,
                        size: 14,),
                      )

                    ],
                  )],
                ),
              ),
            );

      }),
    );
  }
}
