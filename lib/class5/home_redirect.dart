import 'package:flutter/material.dart';
import 'package:training_class/class5/gallery_screen.dart';
import 'package:training_class/class5/home_screen.dart';
import 'package:training_class/class5/reusable_menu.dart';
class HomeRedirect extends StatelessWidget {
  const HomeRedirect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Reshma'), accountEmail: Text('reshma123@gmail.com'),currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1688740375397-34605b6abe48?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZSUyMHBpY3xlbnwwfHwwfHx8MA%3D%3D'),),),
           SizedBox(height: 15,),
           GestureDetector(
               onTap: (){
                 // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Home Screen')));
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen1()));
               },
               child: ReusableMenu(icon: Icons.home, title: 'Home')),
            SizedBox(height: 5,),
            GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GalleryScreen()));
                },
                child: ReusableMenu(icon: Icons.browse_gallery, title: 'Gallery')),
            SizedBox(height: 5,),
            ReusableMenu(icon: Icons.person, title: 'Profile'),
            SizedBox(height: 5,),
            ReusableMenu(icon: Icons.help, title: 'Help'),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Saad',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,actions: [Icon(Icons.person,color: Colors.white,),SizedBox(width: 10,),Icon(Icons.logout,color: Colors.white,),SizedBox(width: 10,)],),
    );
  }
}
