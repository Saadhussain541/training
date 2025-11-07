

// PageView
// Tab/TabView ==     / BottomTabBar
// Positioned / Stack
//
//
// Layout.Builder







import 'package:flutter/material.dart';
class Tabscreen extends StatefulWidget {
  const Tabscreen({super.key});

  @override
  State<Tabscreen> createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController=TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: DefaultTabController(length: 4, child: Column(
                children: [
                  //Tab Codes
                  TabBar(

                      tabs: [
                    Tab(icon: Icon(Icons.home),),
                    Tab(icon: Icon(Icons.image),),
                    Tab(icon: Icon(Icons.person),),
                        Tab(icon: Icon(Icons.settings),),
                  ],controller: tabController,),


                  //Tab Body

                  Expanded(
                    child: TabBarView(
                        controller: tabController,
                        children: [
                      Center(child: Text('Home Screen'),),
                      Center(child: Text('Gallery Screen'),),
                      Center(child: Text('Profile Screen'),),
                          Center(child: Text('Setting Screen'),),
                    ]),
                  )

                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}

