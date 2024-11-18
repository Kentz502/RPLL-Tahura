import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'map_screen.dart';
import 'flora_screen.dart'; 
import 'fauna_screen.dart'; 
import 'spot_screen.dart';

void main() {
  runApp(TahuraApp());
}

class TahuraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainmenuScreen(),
    );
  }
}

class MainmenuScreen extends StatefulWidget {
  @override
  _MainmenuScreenState createState() => _MainmenuScreenState();
}

class _MainmenuScreenState extends State<MainmenuScreen> {
  final List<String> categories = ['Flora', 'Fauna', 'Spot'];
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Container(), // Info page content, handled differently below
    MapScreen(),
    Center(child: Text('ReBi Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(223, 59, 173, 44),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.account_circle, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            );
          },
        ),
        title: Center(
          child: Text(
            'Information About Tahura',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: _selectedIndex == 0
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  for (var category in categories)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey[300]!),
                        ),
                        child: ListTile(
                          title: Text(
                            category,
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing: CircleAvatar(
                            radius: 18,
                            backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1534528740805-52a86510e3f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHxlbnwwfHwyMDI2fDIwNjI2MA&auto=format&fit=crop&w=500&q=60',
                            ),
                          ),
                          onTap: () {
                            if (category == 'Flora') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FloraScreen(),
                                ),
                              );
                            } else if (category == 'Fauna') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FaunaScreen(),
                                ),
                              );
                            } else if (category == 'Spot') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder : (context) => SpotScreen(),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  Spacer(),
                ],
              ),
            )
          : _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline,
                color: _selectedIndex == 0 ? Colors.blue : Colors.black),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map,
                color: _selectedIndex == 1 ? Colors.blue : Colors.black),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bike,
                color: _selectedIndex == 2 ? Colors.blue : Colors.black),
            label: 'ReBi',
          ),
        ],
      ),
    );
  }
}
