import 'package:flutter/material.dart';
import 'model/monster.dart';

class BibliotecaPage extends StatefulWidget {
  const BibliotecaPage({super.key});

  @override
  _BibliotecaPageState createState() => _BibliotecaPageState();
}

class _BibliotecaPageState extends State<BibliotecaPage> {
  final List<String> _folders = [
    'Pasta 1',
    'Pasta 2',
    'Pasta 3',
    'Pasta 4',
  ];

  final List<Monster> _monsters = [
    Monster(
        iconPath: "images/tiamat.jpeg",
        name: 'Tiamat1',
        health: 1,
        classDificulty: 10),
    Monster(
        iconPath: "images/tiamat.jpeg",
        name: 'Tiamat2',
        health: 2,
        classDificulty: 10),
    Monster(
        iconPath: "images/tiamat.jpeg",
        name: 'Tiamat3',
        health: 3,
        classDificulty: 10),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ImageIcon(
          AssetImage('images/dnd-logo.png'),
          color: Colors.red,
        ),
        title: const Text('DnD'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add search functionality here
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Biblioteca',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Compendium',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedFontSize: 12,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: _folders.length,
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                thickness: 2,
                indent: 7,
                color: Colors.grey,
              ),
              itemBuilder: (context, index) {
                return _buildFolder(_folders[index]);
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: _monsters.length,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              itemBuilder: (context, index) {
                return _buildMonsterCard(_monsters[index]);
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add logic to create a new folder or card
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildMonsterCard(Monster monster) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Text(monster.name),
          AspectRatio(
              aspectRatio: 1.4,
              child: Image.asset(
                monster.iconPath,
              )),
          Row(children: <Widget>[
            const Padding(padding: EdgeInsets.only(left: 15)),
            const Text("CD: "),
            Text(monster.classDificulty.toString()),
          ]),
        ],
      ),
    );
  }

  Widget _buildFolder(String name) {
    return ListTile(
      title: Text(name),
      leading: const Icon(Icons.folder),
    );
  }
}
