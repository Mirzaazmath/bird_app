import 'package:birds_app/utils/text_utils.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const  BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bird0.jpeg"),fit: BoxFit.cover,

          ),


        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 150,
              decoration:const  BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.transparent,

                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              ),
              child:SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                    const   Icon(Icons.flutter_dash,color: Colors.white,size: 40,),
                      Expanded(child: TextUtil(text: "Birdworld",size: 30,)),

                      Container(
                        height: 40,
                        width: 40,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white)
                        ),
                        child:const  Icon(Icons.notes,color: Colors.white,),
                      )
                    ],

                  ),
                ),
              )

            ),
            Container(
              height: 180,
              width: double.infinity,
              decoration:const  BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.transparent,

                    ],

                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  )
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtil(text: "Natural habitat"),
                 const  Spacer(),
                  Row(

                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextUtil(text: "Exhinbiting",size: 32,),
                            Row(
                              children: [
                                TextUtil(text: "Over ",size: 32,),
                                TextUtil(text: "350",size: 32,color:const  Color(0xffb5935d),)
                              ],
                            ),
                            TextUtil(text: "birds",size: 32,)

                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const  HomeScreen()));
                        },
                        child: Container(
                          height: 55,
                          width: 55,

                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white)
                          ),
                          child:const  Icon(Icons.arrow_forward,color: Colors.white,),
                        ),
                      )


                    ],
                  ),
                  const  Spacer(),

                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}
