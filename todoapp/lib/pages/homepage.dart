import 'package:flutter/material.dart';
import 'package:todoapp/pages/scrollpage.dart';
import 'package:todoapp/widget/my_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = 'Atharva';
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            debugPrint('Menu Clicked');
          },
          child: const Icon(Icons.menu),
        ),
        title: const Text('Todo App'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(name),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: MyCard(),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    liked = !liked; //if true, then make false and vice versa
                  });
                },
                child: (liked)
                    ? const Icon(Icons.favorite_border)
                    : const Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 149, 21, 12),
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScrollPage(),
                    ),
                  );
                },
                child: const Text('ScrollPage'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // variable = (condition) ? (true) : (false) ;
            name = (name == 'Atharva') ? 'Akshit' : 'Atharva';
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        fixedColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'One',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bolt),
            label: 'Two',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trolley),
            label: 'Three',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Four',
          ),
        ],
      ),
    );
  }
}
