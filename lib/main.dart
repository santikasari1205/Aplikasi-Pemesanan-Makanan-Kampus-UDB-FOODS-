import 'package:flutter/material.dart';
import 'package:project_uts/beranda.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UDB FOODS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: FractionallySizedBox(
                      widthFactor: constraints.maxWidth < 600 ? 0.9 : 1 / 3,
                      child: Card(
                        elevation: 8.0,
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'UDB FOODS',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 16.0),
                              Row(
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 10.0),
                                  Expanded(
                                    child: TextField(
                                      controller: _usernameController,
                                      decoration: InputDecoration(
                                        labelText: 'Username',
                                        border: OutlineInputBorder(),
                                        filled: true,
                                        fillColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.0),
                              Row(
                                children: [
                                  Icon(Icons.lock),
                                  SizedBox(width: 10.0),
                                  Expanded(
                                    child: TextField(
                                      controller: _passwordController,
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        border: OutlineInputBorder(),
                                        filled: true,
                                        fillColor: Colors.white,
                                        suffixIcon: IconButton(
                                          icon: Icon(_obscureText
                                              ? Icons.visibility_off
                                              : Icons.visibility),
                                          onPressed: () {
                                            setState(() {
                                              _obscureText = !_obscureText;
                                            });
                                          },
                                        ),
                                      ),
                                      obscureText: _obscureText,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.0),
                              ElevatedButton(
                                onPressed: () {
                                  // Check login credentials
                                  String username = _usernameController.text;
                                  String password = _passwordController.text;

                                  // For demonstration, let's assume login is successful
                                  bool isLoggedIn = true;
                                  if (isLoggedIn) {
                                    // Navigate to home page if login is successful
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()),
                                    );
                                  } else {
                                    // Show error message if login fails
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text('Error'),
                                          content: Text(
                                              'Invalid username or password.'),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('OK'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                                child: Text('Login'),
                              ),
                              SizedBox(height: 8.0), // Added spacing
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Silahkan buat ',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Navigate to form akun baru page
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AkunBaruPage(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'akun baru',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 251, 252, 252),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

class AkunBaruPage extends StatelessWidget {
  TextEditingController _newUsernameController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat Akun Baru'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _newUsernameController,
              decoration: InputDecoration(
                labelText: 'Nama Pengguna',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _newPasswordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _dobController,
              decoration: InputDecoration(
                labelText: 'Tanggal Lahir',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _genderController,
              decoration: InputDecoration(
                labelText: 'Jenis Kelamin',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Nomor Telepon',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
