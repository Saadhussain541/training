import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class ModernHomeScreen extends StatefulWidget {
  const ModernHomeScreen({super.key});

  @override
  State<ModernHomeScreen> createState() => _ModernHomeScreenState();
}

class _ModernHomeScreenState extends State<ModernHomeScreen> {
  List slider=[
    "https://images.unsplash.com/photo-1698936061086-2bf99c7b9fc5?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=2148",
    "https://images.unsplash.com/photo-1696778382637-21ec8b69a149?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1335",
    "https://images.unsplash.com/photo-1698936061086-2bf99c7b9fc5?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=2148",
    "https://images.unsplash.com/photo-1696778382637-21ec8b69a149?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1335",
    "https://images.unsplash.com/photo-1698936061086-2bf99c7b9fc5?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=2148",
  ];
  final sliderController=CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    final screenHeigth=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              prefixIcon: Icon(Icons.search),
                             suffixIcon: Icon(Icons.camera_alt),
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(30)
                             )
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth*0.03,),
                        Icon(Icons.notifications)
                      ],
                    ),
                    SizedBox(height: screenHeigth*0.01,),
                    Row(
                      children: [
          
                        Icon(Icons.location_on),
                        SizedBox(width: screenWidth*0.02,),
                        Expanded(child: Text('This is dummy Location Karachi Pakistan Karachi Pakistan',maxLines: 1,overflow: TextOverflow.ellipsis,)),
                        SizedBox(width: screenWidth*0.02,),
                        Icon(Icons.arrow_downward_sharp)
                      ],
                    )
                  ],
                ),
              ),
          
           Column(
             children: [
               CarouselSlider.builder(
                   carouselController: sliderController,
                   itemCount: 5,
                   itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
                     return Container(
                       decoration: BoxDecoration(
                           color: Colors.red,
                           image: DecorationImage(image: NetworkImage(slider[itemIndex]),fit: BoxFit.fill)
                       ),
          
                     );
                   },
                   options: CarouselOptions(
                       viewportFraction: 1
          
                   )),
             ],
           ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                child: Column(
                  children: [
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Special Offer',style: TextStyle(color: Colors.green,fontSize: 25),),
                        Text('See More')
                      ],
                    ),
                    SizedBox(height: screenHeigth*0.02,),
                    SizedBox(
                      height: 380,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context,int index){
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network("https://images.unsplash.com/photo-1591935893481-4a5fa6671ec0?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1287",
                                  width: 250,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: screenHeigth*0.02,),
                                      Text('Wood Chair',style: TextStyle(color: Colors.black,fontSize: 25),),
                                      SizedBox(height: screenHeigth*0.01,),
                                      Text('\$2900',style: TextStyle(color: Colors.grey,fontSize: 20),),
                                      SizedBox(height: screenHeigth*0.01,),
                                      Text('\$5000',style: TextStyle(color: Colors.black,fontSize: 16),),
                                      SizedBox(height: screenHeigth*0.01,),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Colors.yellow,),
                                          SizedBox(width: screenWidth*0.01,),
                                          Text('4.7',style: TextStyle(color: Colors.black,fontSize: 10),)
                                        ],
                                      )
          
                                    ],
                                  ),
                                )
          
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Products',style: TextStyle(color: Colors.green,fontSize: 25),),
                        Text('See More')
                      ],
                    ),
                    SizedBox(height: screenHeigth*0.02,),
                   ...List.generate(10, (int index){
                     return Container(
                       margin: EdgeInsets.only(right: 10,bottom: 10),
                       child: Card(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Image.network("https://images.unsplash.com/photo-1591935893481-4a5fa6671ec0?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1287",
                               width: double.infinity,
                               height: 200,
                               fit: BoxFit.cover,
                             ),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   SizedBox(height: screenHeigth*0.02,),
                                   Text('Wood Chair',style: TextStyle(color: Colors.black,fontSize: 25),),
                                   SizedBox(height: screenHeigth*0.01,),
                                   Text('\$2900',style: TextStyle(color: Colors.grey,fontSize: 20),),
                                   SizedBox(height: screenHeigth*0.01,),
                                   Text('\$5000',style: TextStyle(color: Colors.black,fontSize: 16),),
                                   SizedBox(height: screenHeigth*0.01,),
                                   Row(
                                     children: [
                                       Icon(Icons.star,color: Colors.yellow,),
                                       SizedBox(width: screenWidth*0.01,),
                                       Text('4.7',style: TextStyle(color: Colors.black,fontSize: 10),)
                                     ],
                                   )

                                 ],
                               ),
                             )

                           ],
                         ),
                       ),
                     );
                   })
          
                  ],
                ),
              )
          
          
            ],
          ),
        ),
      ),
    );
  }
}
