import 'package:flutter/material.dart';
import 'ForgotPass.dart';
import 'widgets/pass_field.dart';

void main() {
  runApp(const MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: MyApp(),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                color: Colors.grey,
              ),
              Positioned(
                top: constraints.maxHeight * 0.1,
                left: 15,
                right: 15,
                bottom: constraints.maxHeight * 0.05,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.12,
                left: 30,
                right: 30,
                bottom: constraints.maxHeight * 0.06,
                child: Column(
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * 0.1,
                      width: constraints.maxHeight * 0.1,
                      child: Image(image: AssetImage('assets/images/logo.png')),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.02),
                    Column(
                      children: [
                        Container(
                          child: const Text(
                            'Đăng nhập',
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: constraints.maxHeight * 0.08),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Tài khoản',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        Text(
                                          '*',
                                          style: TextStyle(fontSize: 14, color: Colors.red),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                          hintText: 'Tài khoản',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Mật khẩu',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        Text(
                                          '*',
                                          style: TextStyle(fontSize: 14, color: Colors.red),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      child: PasswordField(
                                        hintText: 'Nhập mật khẩu',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const ForgotPassScreen()),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  alignment: Alignment.centerRight,
                                ),
                                child: const Text(
                                  'Quên mật khẩu?',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: constraints.maxHeight * 0.04),
                        Container(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                            child: Text(
                              'Đăng nhập',
                              style: TextStyle(
                                color: Colors.white, 
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
