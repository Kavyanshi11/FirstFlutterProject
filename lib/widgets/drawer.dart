import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child : ListView(
        padding :EdgeInsets.zero, 
        children: [
          UserAccountsDrawerHeader(accountName: const Text('Kavyanshi'),
           accountEmail: const Text('Kavyanshiagarwal358@gmail.com'),
          currentAccountPicture: CircleAvatar(child: ClipOval(child: Image.network(
            'https://images.unsplash.com/photo-1615022702095-ff2c036f3360?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80',
          width : 90,
          height : 90,
          fit : BoxFit.cover,
          ),
          ),
          ),

          decoration: const BoxDecoration(
            image : DecorationImage(
              image: NetworkImage(
                'https://images.pexels.com/photos/1287145/pexels-photo-1287145.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              fit : BoxFit.cover,
            ),
            )
          ),
          ListTile(
            leading : const Icon(Icons.home),
            title : const Text ('Home'),
            onTap: () => print("fav"),
          ),
          ListTile(
            leading : const Icon(Icons.mail),
            title : const Text ('mail'),
            onTap: () => null,
          ),
          
        ],
      ),
    );
  }
}
