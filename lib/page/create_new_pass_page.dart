import 'package:flutter/material.dart';
import 'package:travel_app/page/login_page.dart';

class CreateNewPassPage extends StatefulWidget {
  const CreateNewPassPage({super.key});

  @override
  State<CreateNewPassPage> createState() => _CreateNewPassPageState();
}

class _CreateNewPassPageState extends State<CreateNewPassPage> {
  final passwordController = TextEditingController();
  final confPasswordController = TextEditingController();

  void _resetPassButton() {
    String password = passwordController.text;
    String confPassword = confPasswordController.text;

    if (password.isNotEmpty && confPassword.isNotEmpty) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LoginPage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng điền đầy đủ thông tin'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [                  
                  const SizedBox(height: 20),

                  const Text(
                    'Tạo mới mật khẩu',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  
                  const SizedBox(height: 10),
                  
                  const Text(
                    'Mật khẩu mới phải khác với mật khẩu đã được sử dụng trước đó',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 30),

                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.grey.shade200)
                      ),
                      labelText: 'Mật khẩu',
                    ),
                    obscureText: true,
                  ),

                  const SizedBox(height: 20),

                  TextFormField(
                    controller: confPasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.grey.shade200)
                      ),
                      labelText: 'Xác nhận mật khẩu',
                    ),
                    obscureText: true,
                  ),

                  const SizedBox(height: 20),

                  GestureDetector(
                    onTap: _resetPassButton,
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6)
                        ),
                      child: const Center(
                        child: Text(
                          'Đặt lại mật khẩu',
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}