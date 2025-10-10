import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Listviewscreen extends StatefulWidget {
  const Listviewscreen({super.key});

  @override
  State<Listviewscreen> createState() => _ListviewscreenState();
}

class _ListviewscreenState extends State<Listviewscreen> {

  List products=[
    {
      'productName':"Nike Shoes",
      'productPrice':4000,
      'color':'red',
      'isStock':true,
      'image':'assets/images/shoes1.jpg'
    },
    {
      'productName':"Nike Shoes",
      'productPrice':4000,
      'color':'red',
      'isStock':true,
      'image':'assets/images/shoes2.jpg'
    },
    {
      'productName':"Nike Shoes1",
      'productPrice':4500,
      'color':'blue',
      'isStock':false,
      'image':'assets/images/shoes3.jpg'
    },
    {
      'productName':"Nike Shoes2",
      'productPrice':2000,
      'color':'black',
      'isStock':true,
      'image':'assets/images/shoes4.jpg'
    },
    {
      'productName':"Nike Shoes3",
      'productPrice':14000,
      'color':'white',
      'isStock':false,
      'image':'assets/images/shoes5.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: SafeArea(
    //     child: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
    //       child: ListView(
    //         physics: BouncingScrollPhysics(),
    //         children: [
    //           Container(
    //               margin: EdgeInsets.only(bottom: 15),
    //               decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10)
    //               ),
    //
    //               width: double.infinity,
    //               height:100
    //           ),
    //           Container(
    //               margin: EdgeInsets.only(bottom: 15),
    //               decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10)
    //               ),
    //
    //               width: double.infinity,
    //               height:100
    //           ),
    //           Container(
    //               margin: EdgeInsets.only(bottom: 15),
    //               decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10)
    //               ),
    //
    //               width: double.infinity,
    //               height:100
    //           ),
    //           Container(
    //               margin: EdgeInsets.only(bottom: 15),
    //               decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10)
    //               ),
    //
    //               width: double.infinity,
    //               height:100
    //           ),
    //           Container(
    //               margin: EdgeInsets.only(bottom: 15),
    //               decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10)
    //               ),
    //
    //               width: double.infinity,
    //               height:100
    //           ),
    //           Container(
    //               margin: EdgeInsets.only(bottom: 15),
    //               decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10)
    //               ),
    //
    //               width: double.infinity,
    //               height:100
    //           ),
    //           Container(
    //               margin: EdgeInsets.only(bottom: 15),
    //               decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10)
    //               ),
    //
    //               width: double.infinity,
    //               height:100
    //           ),
    //           Container(
    //               margin: EdgeInsets.only(bottom: 15),
    //               decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10)
    //               ),
    //
    //               width: double.infinity,
    //               height:100
    //           ),
    //           Container(
    //               margin: EdgeInsets.only(bottom: 15),
    //               decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10)
    //               ),
    //
    //               width: double.infinity,
    //               height:100
    //           ),
    //           Container(
    //               margin: EdgeInsets.only(bottom: 15),
    //               decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10)
    //               ),
    //
    //               width: double.infinity,
    //               height:100
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );



    return Scaffold(
      body: SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context,int index){
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Card(
              child: Padding(
                padding:EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage:AssetImage(products[index]['image']) ,
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(products[index]['productName'],style: GoogleFonts.poppins(fontSize: 20),),
                        SizedBox(height: 5,),
                        Text(products[index]['productPrice'].toString(),style: GoogleFonts.poppins(fontSize: 18)),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text(products[index]['color'],style: GoogleFonts.poppins(fontSize: 15)),
                            SizedBox(width: 20,),
                            products[index]['isStock']?Text('Stock',style: GoogleFonts.poppins(color: Colors.green,fontSize: 15),):Text('Out of Stock',style: GoogleFonts.poppins(color: Colors.red,fontSize: 15),)

                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      )),
    );
  }
}
