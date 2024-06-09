import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: SingleChildScrollView(
      child: Column(
      children: [
      Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      color: Color(0xFFA6A16E),
      child: Column(
        children: [
          Text(
            'PetCharm',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Image.asset(
            'assets/pets.png',
            height: 100,
          ),
        ],
      ),
    ),
    Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
    children: [
    TextField(
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.person, color: Colors.whiteTo integrate all the provided code files into a single Flutter project, we need to organize them properly. Below is the structure and content of each file as they should be placed within your Flutter project:

    ### 1. `main.dart`
    This file will serve as the entry point of the application and include navigation to the Onboarding, Login, and Register pages.

    ```dart
    import 'package:flutter/material.dart';
    import 'package:petcharm_frontend/onboarding.dart';
    import 'package:petcharm_frontend/login.dart';
    import 'package:petcharm_frontend/register.dart';
    import 'package:petcharm_frontend/maps.dart';

    void main() {
    runApp(MyApp());
    }

    class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: '/',
    routes: {
    '/': (context) => OnboardingPage(),
    '/login': (context) => LoginPage(),
    '/register': (context) => RegisterPage(),
    '/maps': (context) => MapsPage(),
    },
    );
    }
    }
