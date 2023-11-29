import 'package:flutter/material.dart';
import 'package:travel_app/page/messenger_page.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Tin nhắn',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const MessengerPage()),
            );
          },
          child: ListView(
            scrollDirection: Axis.vertical,
            children: const [
              SizedBox(height: 10),

              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/2593/2593468.png'),
                  ),
          
                  SizedBox(width: 20),
          
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hỗ trợ khách hàng',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      
                      SizedBox(height: 4),
          
                      Text(
                        'Thông tin của đội CSKH...',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
          
                  SizedBox(width: 20),
          
                  Text(
                    '04:21PM',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.black12),
            ],
          ),
        ),
      ),
    );
  }
}
