//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:project_00/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int contador = 0;
  //String counter = "Contador: $contador";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.orange,
        child: Column(
          children: [
            SizedBox(height: 30),
            UserAccountsDrawerHeader(
              accountName: Text("natus"),
              accountEmail: Text("natuss.m@gmail.com"),
              currentAccountPicture: ClipOval(
                //borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'lib/assets/images/nos_dois.jpg',
                ),
              ),
            ),
            ListTile(
              title: Text(
                "INICIO",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              title: Text(
                "LogOut",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              leading: Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: const [
          Switcher(),
        ],
        backgroundColor: Colors.red,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Contador: $contador'),
              const Switcher(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                ],
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: Colors.cyan,
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              contador++;
            });
          }),
    );
  }
}

class Switcher extends StatelessWidget {
  const Switcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}




    // return AnimatedSwitcher(
    //   duration: Duration(milliseconds: 1300), // Defina a duração da animação
    //   transitionBuilder: (Widget child, Animation<double> animation) {
    //     return ScaleTransition(
    //       scale: animation,
    //       child: child,
    //     );
    //   },
    //   child: Switch(
    //     value: AppController.instance.isDarkTheme,
    //     onChanged: (value) {
    //       AppController.instance.changeTheme();
    //     },
    //   ),
    // );