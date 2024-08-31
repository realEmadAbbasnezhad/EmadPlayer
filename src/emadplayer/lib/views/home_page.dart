import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Emad Player",
              style: Theme.of(context).textTheme.headlineSmall),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        drawer: Drawer(
          backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  child: ListView(
                    children: [
                      Text("Emad Player",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineSmall),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Github: realEmadAbbasnezhad',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodySmall),
                      )
                    ],
                  )),
              ListTile(
                title: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.settings),
                    Text('  Settings'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.refresh),
                    Text('  Rescan'),
                  ],
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          currentIndex: 0,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          onTap: (i) {},
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.album), label: "Albums"),
            BottomNavigationBarItem(icon: Icon(Icons.audiotrack), label: "All"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Artists"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          onPressed: () {},
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.control_camera),
            ],
          ),
        ));
  }
}
