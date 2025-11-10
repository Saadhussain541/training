import 'package:flutter/material.dart';
import 'package:training_class/class14/mobile_screen.dart';
import 'package:training_class/class14/tablet_screen.dart';
class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({super.key});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: LayoutBuilder(builder: (context,constraints){
    //     if(constraints.maxWidth>600)
    //       {
    //         return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10), itemBuilder: (context,index){
    //           return Container(color: Colors.green,);
    //         });
    //       }
    //     else if(constraints.maxWidth<600)
    //       {
    //         return ListView.builder(itemBuilder: (context,index){
    //           return Container(
    //             margin: EdgeInsetsDirectional.symmetric(vertical: 10),
    //             color: Colors.deepPurple,height: 150,width: double.infinity,);
    //         });
    //       }
    //     else
    //       {
    //         return Text('sdfdfd');
    //       }
    //   }),
    //
    // );

    return Scaffold(
      body: LayoutBuilder(builder: (context,cont){
        if(cont.maxWidth>600)
          {
            return TabletScreen();
          }
        else
          {
            return MobileScreen();
          }
      }),
    );
  }
}
