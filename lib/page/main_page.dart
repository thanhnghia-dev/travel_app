import 'package:flutter/material.dart';
import 'package:travel_app/page/home_page.dart';
import 'package:travel_app/page/inbox_page.dart';
import 'package:travel_app/page/login_page.dart';
import 'package:travel_app/page/my_booking_page.dart';
import 'package:travel_app/page/profile_page.dart';
import 'package:travel_app/page/favorite_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    const HomePage(),
    const FavoritePage(),
    const InboxPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          child: ListView(
            children: [
              const ListTile(
                title: Text(
                  'TRAVEL',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const Divider(color: Colors.black12),
              ListTile(
                leading: const Icon(Icons.payment, color: Colors.blue),
                title: const Text('Lịch sử thanh toán'),
                onTap: () {
          
                },
              ),
          
              ListTile(
                leading: const Icon(Icons.shopping_cart, color: Colors.green),
                title: const Text('Chuyến đi của tôi'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const MyBookingPage()),
                  );
                },
              ),
              const Divider(color: Colors.black12),

              ListTile(
                leading: const Icon(Icons.info, color: Colors.grey),
                title: const Text('Thông tin'),
                onTap: () {
          
                },
              ),

              ListTile(
                leading: const Icon(Icons.logout, color: Colors.red),
                title: const Text('Đăng xuất'),
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => const LoginPage()), 
                    (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Trang chủ',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: 'Yêu thích',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: 'Tin nhắn',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Cá nhân',
          ),
        ],
      ),
    );
  }
}