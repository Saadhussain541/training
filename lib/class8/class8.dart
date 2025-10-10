import 'package:flutter/material.dart';
class SolutionClass extends StatefulWidget {
  const SolutionClass({super.key});

  @override
  State<SolutionClass> createState() => _SolutionClassState();
}

class _SolutionClassState extends State<SolutionClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Icon(Icons.person),
          SizedBox(width: 10,),
        ],
        title: Column(
          children: [
            Text('PC'),
            Text('Hotel')
          ],
        ),
      ),

      drawer: Drawer(),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //First section start
            Row(
              children: [
                Column(
                  children: [
                    Text('PC'),
                    Text("Hotel")
                  ],
                ),
                SizedBox(width: 20,),
                Text('This is description text and this is dummy text')
              ],
            ),

            //First section complete
            SizedBox(height: 30,),

            //Second section start
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsetsGeometry.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius:BorderRadius.circular(10),
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSzREtUp5-mOpNFLUIX2FZfbsbGqXuIN_ZWA&s',width: 160,height: 150,fit: BoxFit.cover,)),
                        SizedBox(height: 5,),
                        Text('Product Name'),
                        SizedBox(height: 5,),
                        Row(
                          children: [Text('Price: '),Text('40',style: TextStyle(fontSize: 18),)],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius:BorderRadius.circular(10),
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSzREtUp5-mOpNFLUIX2FZfbsbGqXuIN_ZWA&s',width: 160,height: 150,fit: BoxFit.cover,)),
                        SizedBox(height: 5,),
                        Text('Product Name'),
                        SizedBox(height: 5,),
                        Row(
                          children: [Text('Price: '),Text('40',style: TextStyle(fontSize: 18),)],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius:BorderRadius.circular(10),
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSzREtUp5-mOpNFLUIX2FZfbsbGqXuIN_ZWA&s',width: 160,height: 150,fit: BoxFit.cover,)),
                        SizedBox(height: 5,),
                        Text('Product Name'),
                        SizedBox(height: 5,),
                        Row(
                          children: [Text('Price: '),Text('40',style: TextStyle(fontSize: 18),)],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius:BorderRadius.circular(10),
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSzREtUp5-mOpNFLUIX2FZfbsbGqXuIN_ZWA&s',width: 160,height: 150,fit: BoxFit.cover,)),
                        SizedBox(height: 5,),
                        Text('Product Name'),
                        SizedBox(height: 5,),
                        Row(
                          children: [Text('Price: '),Text('40',style: TextStyle(fontSize: 18),)],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
            //Second section complete
            SizedBox(height: 30,),
            // Third Section start
            Text("Hotel Information",style: TextStyle(color: Colors.deepOrange,fontSize: 18),),
            SizedBox(height: 10,),
            // SizedBox(
            //   height: 400,
            //   child: ListView.builder(
            //       shrinkWrap: true,
            //       itemBuilder: (BuildContext context, int index){
            //     return Container(
            //       padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(15),
            //           border: Border.all(color: Colors.grey)
            //       ),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9_79VVhphnq0PIVsee9XCAfIeFLFqBu_pXw&s',width: double.infinity,height: 200,fit: BoxFit.cover),
            //           SizedBox(height: 10,),
            //           Text("Hotel Name",style: TextStyle(color: Colors.deepOrange,fontSize: 16),),
            //           SizedBox(height: 5,),
            //           Text('This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description',
            //             style: TextStyle(color: Colors.grey,fontSize: 14),
            //             textAlign: TextAlign.center,
            //
            //           )
            //
            //         ],
            //       ),
            //     );
            //   }),
            // )

            ...List.generate(5, (index){
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9_79VVhphnq0PIVsee9XCAfIeFLFqBu_pXw&s',width: double.infinity,height: 200,fit: BoxFit.cover),
                    SizedBox(height: 10,),
                    Text("Hotel Name",style: TextStyle(color: Colors.deepOrange,fontSize: 16),),
                    SizedBox(height: 5,),
                    Text('This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description This is hotel description',
                      style: TextStyle(color: Colors.grey,fontSize: 14),
                      textAlign: TextAlign.center,

                    )

                  ],
                ),
              );
            })

          ],
        ),
        ),
      )),
    );
  }
}
