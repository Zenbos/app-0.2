import 'package:app01/Demo1.0/Frontend/constantes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Colors.dart';


enum Menu { itemOne, itemTwo, itemThree, itemFour }
enum Menu1 {account, home, shop, unlockservice}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}): super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();

}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Tcolor,//color de background temporal
      drawer:  Menuburger(),
      appBar: AppBar(
        automaticallyImplyLeading: true, //@cada que pases a otro menu que no sea home aplicar esto
        backgroundColor: kPrimaryColor2,
        elevation: 3,
        title: Center(
          // child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',height: 100,),
          child: Image.asset('images/Tsexpresslogo1.png',height: 60,width: 664,),

        ),
          // Image.asset('assets/images/Tsexpresslogo1.png'),
        actions: <Widget>[
          // This button presents popup menu items.
          // PopupMenuButton<Menu>(
            // Callback that sets the selected popup menu item.

              // child: const Icon(CupertinoIcons.cart,size: 26),
              // itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[

                // const PopupMenuItem<Menu>(
                //   value: Menu.itemOne,
                //   textStyle: TextStyle(fontStyle: FontStyle.italic,
                //       color: Colors.black,
                //     fontWeight: FontWeight.w900,
                //     fontSize: 20,
                //   ),
                //   child: Text('Item 1',textAlign: TextAlign.center,),
                // ),
                // const PopupMenuItem<Menu>(
                //   value: Menu.itemTwo,
                //   child: Text('Item 2'),
                // ),
                // const PopupMenuItem<Menu>(
                //   value: Menu.itemThree,
                //   child: Text('Item 3'),
                // ),
                // const PopupMenuItem<Menu>(
                //   value: Menu.itemFour,
                //   child: Text('Item 4'),
                // ),
              // ]),
        ],
      ),
    );

  }
}

class Menuburger extends StatelessWidget {
  const Menuburger ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(

            accountName: const Text('Joel Concepcion'),
            accountEmail: const Text('joencolo1410@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://cdn.imgbin.com/7/24/15/imgbin-death-computer-icons-symbol-avatar-bones-XrTDy5k17YQXLwJwnFisRdTGE.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: kPrimaryColor2,
              image: DecorationImage(
                image: NetworkImage(
                    'https://th.bing.com/th/id/R.93b95738cb630f899bacf7dd835b5ad5?rik=%2b5zCEyYOztKvhw&riu=http%3a%2f%2fwscreenwallpapers.com%2fwp-content%2fuploads%2f2015%2f05%2f4k-Wallpapers-6.jpg&ehk=AugAS8it8ApqBh6w0dLdGuvdHVUeBr8dyGR3uzZriFM%3d&risl=&pid=ImgRaw&r=0'
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.mail),
            title: const Text('Mail'),
            onTap: () {},
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: const Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
            // print('Fav'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.call_sharp),
            title: const Text('Contact us'),
            // onTap: () => null,
            onTap: (){},
            // print('Fav'),
          ),
          const Divider(),
          // ListTile(
          //   leading: Icon(Icons.t),
          //   title: Text('Favorite'),
          //   onTap: () => null,
          //   // print('Fav'),
          // ),
        ],
      ),
    );
  }
}


