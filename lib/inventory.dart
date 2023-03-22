import 'package:flutter/material.dart';
import 'newgem.dart';
import 'anc.dart';

void main() => runApp(invent());

class invent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Card List Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(key: Key('myHomePage')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> items = List.generate(50, (i) => "G-00${i + 1}");
  List<String> filteredItems = List.generate(50, (i) => "G-00${i + 1}");

  void _filterList(String searchText) {
    setState(() {
      filteredItems = items
          .where(
              (item) => item.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFDBD6E5),
        appBar: AppBar(
          title: Text('Gem Lot'),
          backgroundColor: Color(0xFFDBD6E5),
        ),
        drawer: Drawer(
          width: 300,
          child: Container(
            color: Color(0xDBD6E5FF), //color of list tiles
            // Add a ListView to ensures the user can scroll
            child: ListView(
              // Remove if there are any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFFD1D3FF), //color of drawer header
                  ),
                  accountName: Text(
                    "Hash Herath",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                    ),
                  ),
                  accountEmail: Text(
                    "hashiniherath5@icloud.com",
                    style: TextStyle(color: Colors.indigo, fontSize: 17),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/usr.jpg'),
                  ),
                ),

                //Home
                ListTile(
                  leading: Image.asset('assets/Home.png'),
                  title: const Text('Home',
                      style: TextStyle(color: Colors.indigo, fontSize: 17)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //Inventory
                ListTile(
                  leading: Image.asset('assets/Inventory.png'),
                  title: const Text('Inventory',
                      style: TextStyle(color: Colors.indigo, fontSize: 17)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //Announcement
                ListTile(
                  leading: Image.asset('assets/Announcement.png'),
                  title: const Text('Announcement',
                      style: TextStyle(color: Colors.indigo, fontSize: 17)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnnouncementPage()),
                    );
                  },
                ),
                //messages
                ListTile(
                  leading: Image.asset('assets/Msgs.png'),
                  title: const Text('Messeges',
                      style: TextStyle(color: Colors.indigo, fontSize: 17)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //Profile
                ListTile(
                  leading: Image.asset('assets/Profile.png'),
                  title: const Text('Profile',
                      style: TextStyle(color: Colors.indigo, fontSize: 17)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //Dark mode
                ListTile(
                  trailing: Image.asset('assets/Switch.png'),
                  title: const Text('        Dark Mode',
                      style: TextStyle(color: Colors.indigo, fontSize: 17)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //Invite friends
                ListTile(
                  leading: Image.asset('assets/Inv_frnds.png'),
                  title: const Text('Invite Friends',
                      style: TextStyle(color: Colors.indigo, fontSize: 17)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //Follow us
                ListTile(
                  leading: Image.asset('assets/Fllw_us.png'),
                  title: const Text('Follow Us',
                      style: TextStyle(color: Colors.indigo, fontSize: 17)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //Help
                ListTile(
                  leading: Image.asset('assets/Hlp.png'),
                  title: const Text('Help',
                      style: TextStyle(color: Colors.indigo, fontSize: 17)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //log out
                ListTile(
                  leading: Image.asset('assets/logout.png'),
                  title: const Text('Log out',
                      style: TextStyle(color: Colors.indigo, fontSize: 17)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: _filterList,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  hintText: 'Search Here',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Color(0xFFA888EB),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/image/Icon awesome-gem.png',
                        fit: BoxFit.scaleDown,
                      ),
                      title: TextButton(
                        onPressed: () {},
                        child: Text(
                          filteredItems[index],
                          style: TextStyle(
                            color: Color(0xFF43468E),
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      trailing: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration()),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF43468E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12.0),
                      textStyle:
                          TextStyle(fontSize: 20.0, color: Color(0xFF43468E)),
                    ),
                    child: Text('Back'),
                  ),
                  SizedBox(width: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddGemPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF43468E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12.0),
                      textStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    child: Text('Add new'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
