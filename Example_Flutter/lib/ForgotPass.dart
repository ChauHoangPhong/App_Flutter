import 'package:flutter/material.dart';
import 'widgets/pass_field.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [
                    Positioned(
                      top: constraints.maxHeight * 0.12,
                      left: 30,
                      right: 30,
                      bottom: constraints.maxHeight * 0.06,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: constraints.maxHeight * 0.1,
                                width: constraints.maxHeight * 0.1,
                                child: Image(image: AssetImage('assets/images/logo.png')),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Quên mật khẩu',
                                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 40),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    children: [
                                      Text('Email', style: TextStyle(fontSize: 14)),
                                      Text('*', style: TextStyle(fontSize: 14, color: Colors.red)),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                        hintText: 'Nhập email',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(8)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPassScreen()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                ),
                                child: const Text(
                                  'Xác nhận',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
class NewPassScreen extends StatelessWidget {
  const NewPassScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Positioned(
                  top: constraints.maxHeight * 0.1,
                  left: 30,
                  right: 30,
                  bottom: constraints.maxHeight * 0.06,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: constraints.maxHeight * 0.1,
                            width: constraints.maxHeight * 0.1,
                            child: Image(image: AssetImage('assets/images/logo.png')),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Nhập mật khẩu mới',
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Mật khẩu mới', style: TextStyle(fontSize: 14)),
                                      Text('*', style: TextStyle(fontSize: 14, color: Colors.red)),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    child: PasswordField(
                                      hintText: 'Nhập mật khẩu mới',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Xác nhận mật khẩu', style: TextStyle(fontSize: 14)),
                                      Text('*', style: TextStyle(fontSize: 14, color: Colors.red)),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    child: PasswordField(
                                      hintText: 'Xác nhận mật khẩu',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('OTP', style: TextStyle(fontSize: 14)),
                                      Text('*', style: TextStyle(fontSize: 14, color: Colors.red)),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                        hintText: 'Nhập mã OTP',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(8)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 3),
                          Container(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text('Gửi lại'),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              minimumSize: Size(double.infinity, 48),
                              primary: Colors.blue,
                            ),
                            child: const Text(
                              'Xác nhận',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}