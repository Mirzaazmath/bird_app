import 'package:flutter/material.dart';

import '../data/home_data.dart';
import '../utils/text_utils.dart';


List<String> categoryList=["Birds","Butterflies","Others"];
int selectedIndex=0;


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: -100,
            left: -80,
            child: Container(
              height: 300,
              width: 300,
              decoration:const  BoxDecoration(
                shape: BoxShape.circle,
                  boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange,
                    blurRadius: 200,

                  )
                ]
              ),
              alignment: Alignment.center,
              child:  Container(
                height: 100,
                width: 100,
                decoration:const  BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color:Color(0xffd25716),
                        blurRadius: 100,

                      )
                    ]
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -150,
            right: -20,
            child: Container(
              height: 200,
              width: 200,
              decoration:const  BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrange,
                      blurRadius: 200,

                    )
                  ]
              ),
              alignment: Alignment.center,
              child:  Container(
                height: 60,
                width: 60,
                decoration:const  BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color:Color(0xffd25716),
                        blurRadius: 100,

                      )
                    ]
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const   Icon(Icons.flutter_dash,color: Colors.white,size: 35,),
                    Expanded(child: TextUtil(text: "Birdworld",size: 28,)),

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
               const  Spacer(),
                Row(
                  children: [
                    TextUtil(text: "Welcome ",size: 20,color: Colors.white54,),
                    TextUtil(text: "Dev_73arner",size: 20,)
                  ],
                ),
                const  Spacer(),
                TextUtil(text: "What would you like to learn about?",size: 25,weight: true,),
                const  Spacer(),
                SizedBox(
                  height: 35,

                  child:ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                      itemCount: categoryList.length,
                      itemBuilder: (context, index){
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      margin:const  EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white54),
                        borderRadius: BorderRadius.circular(120),
                        color:selectedIndex==index?Colors.white: Colors.transparent
                      ),
                      alignment: Alignment.center,
                      child: TextUtil(text: categoryList[index],weight: true,color:selectedIndex==index?Colors.black: Colors.white,),
                    );
                  }),
                ),
                const  Spacer(),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                      itemCount: birdDataList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                    return Container(
                   height: 200,
                    width:120,
                    margin:const  EdgeInsets.only(right: 20),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: const Color(0xff1a1a1a),
                   ),
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                
                                image: AssetImage(birdDataList[index].image),fit: BoxFit.fill

                              )
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding:const  EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextUtil(text: birdDataList[index].name,size: 14,weight: true,),
                                  TextUtil(text: birdDataList[index].age,size: 11,weight: true,color: Colors.grey,),
                                  TextUtil(text: "+Know More",size: 14,weight: true,color: Colors.orange,)
                                ],
                              )
                              ,
                            ),
                          )
                        ],
                      ),
                  );}),

                ),
                const  Spacer(),
                TextUtil(text: "Video Birds",size: 25,),
                TextUtil(text: "Experience how our birds live ",size: 12,color: Colors.white54,),
                const  Spacer(),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: birdVideoList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                          height: 200,
                          width:120,
                          margin:const  EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(
                             image: AssetImage(birdVideoList[index].image),fit:BoxFit.fill
                           )
                          ),
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          const   Icon(Icons.play_arrow,color: Colors.white,),
                          Container(
                            height: 15,
                            width: 40,
                            padding: const EdgeInsets.symmetric(horizontal: 5),

                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white54),
                                borderRadius: BorderRadius.circular(120),
                                color:Colors.black38
                            ),
                            alignment: Alignment.center,
                            child: TextUtil(text: "2:03",weight: true,size: 10,),
                          ),
                          ],
                          ),
                        );}),

                ),
              ],
            ),),
          )
        ],
      ),
    );
  }
}
