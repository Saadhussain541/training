// // Expanded
// // Flexible
// // MediaQuery
// //
// // Layout builder
//
// import 'package:flutter/material.dart';
// class ResponsiveScreen extends StatefulWidget {
//   const ResponsiveScreen({super.key});
//
//   @override
//   State<ResponsiveScreen> createState() => _ResponsiveScreenState();
// }
//
// class _ResponsiveScreenState extends State<ResponsiveScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Container(
//                 width: 300,
//                 height: 150,
//                 color: Colors.deepOrange,
//               ),
//               Expanded(child: Container(color: Colors.purple,height: 150,))
//             ],
//           ),
//           Row(
//             children: [
//               Container(
//                 padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
//                 decoration: BoxDecoration(
//                   color: Colors.deepPurple,
//                   borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Center(child: Icon(Icons.search,color: Colors.white,),),
//               ),
//               Expanded(child: TextFormField()),
//             ],
//           )
//         ],
//       ),
//       )),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// class ResponsiveScreen extends StatefulWidget {
//   const ResponsiveScreen({super.key});
//
//   @override
//   State<ResponsiveScreen> createState() => _ResponsiveScreenState();
// }
//
// class _ResponsiveScreenState extends State<ResponsiveScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               color: Colors.deepOrange,
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       color: Colors.black,
//                       child: Column(
//                         children: [
//                           Expanded(
//                             flex: 1,
//                             child: Container(
//                               color: Colors.yellow,
//                             ),
//                           ),
//                           Expanded(
//                             flex: 2,
//                             child: Container(
//                               color: Colors.white54,
//                             ),
//                           ),
//
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       color: Colors.brown,
//                       child: Column(
//                         children: [
//                           Expanded(
//                               flex: 4,
//                               child: Container(color: Colors.white,)),
//                           Expanded(
//                               flex: 2,
//                               child: Container(color: Colors.cyanAccent,))
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.green,
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       color: Colors.red,
//                       child: Column(
//                         children: [
//                           Flexible(child: Container(color: Colors.deepPurple,)),
//                           Expanded(child: Container(color: Colors.orange,))
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       color: Colors.pink,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// class ResponsiveScreen extends StatefulWidget {
//   const ResponsiveScreen({super.key});
//
//   @override
//   State<ResponsiveScreen> createState() => _ResponsiveScreenState();
// }
//
// class _ResponsiveScreenState extends State<ResponsiveScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 10),
//               width: double.infinity,
//               height: 200,
//               color: Colors.red,
//             ),
//             SizedBox(
//                 height: 100,
//                 child: Expanded(child: Container(color: Colors.blue,)))
//           ],
//         ),
//       ),
//     );
//   }
// }


//
// import 'package:flutter/material.dart';
// class ResponsiveScreen extends StatefulWidget {
//   const ResponsiveScreen({super.key});
//
//   @override
//   State<ResponsiveScreen> createState() => _ResponsiveScreenState();
// }
//
// class _ResponsiveScreenState extends State<ResponsiveScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     final screenSize=MediaQuery.of(context).size;
//     final screenHeight=screenSize.height;
//     final screenWidth=screenSize.width;
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Screen Height: $screenHeight'),
//             Text('Screen Width: $screenWidth')
//           ],
//         ),
//       ),
//
//     );
//   }
// }


import 'package:flutter/material.dart';
class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    final screenHeight=screenSize.height;
    final screenWidth=screenSize.width;
    //
    // 10*1=10;
    // 10*0.9=9;
    // 10*0.5=5(50%)
    // 10*0.1=10%;
    // 10*0.01=1%;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenWidth*1,
              height: screenHeight*0.3,
              color: Colors.deepPurple,
            ),
        
            Container(
              width: screenWidth*0.5,
              height: screenHeight*0.35,
              color: Colors.red,
            ),
            Container(
              height: screenHeight*0.49,
              width: screenWidth*0.17,
              color: Colors.purple,
            ),
            SizedBox(height: screenHeight*0.02,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            )
        
          ],
        ),
      ),
    );
  }
}


