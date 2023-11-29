import 'package:flutter/material.dart';

class MessengerPage extends StatefulWidget {
  const MessengerPage({super.key});

  @override
  State<MessengerPage> createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  final scrollController = ScrollController();
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Hỗ trợ khách hàng',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              controller: scrollController,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      'Cho tôi hỏi....???',
                      maxLines: null,
                      softWrap: true,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      const SizedBox(width: 20),
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/2593/2593468.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(16),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Text(
                          'Chào bạn, chúng tôi xin trả lời...',
                          maxLines: null,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: 'Nhập tin nhắn',
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.send)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
