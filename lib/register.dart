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
    controller: usernameController,
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.person, color: Colors.white),
    hintText: 'user name',
    filled: true,
    fillColor: Color(0xFFA6A16E),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
    ),
    ),
    ),
    SizedBox(height: 16),
    StatefulBuilder(
    builder: (context, setState) {
    return TextField(
    controller: dateOfBirthController,
    readOnly: true,
    decoration: InputDecoration(
    prefixIcon:
    Icon(Icons.calendar_today, color: Colors.white),
    hintText: 'date of birth',
    filled: true,
    fillColor: Color(0xFFA6A16E),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
    ),
    ),
    onTap: () async {
    DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
    setState(() {
    dateOfBirthController.text =
    "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
    });
    }
    },
    );
    },
    ),
    SizedBox(height: 16),
    TextField(
    controller: emailController,
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.email, color: Colors.white),
    hintText: 'email address',
    filled: true,
    fillColor: Color(0xFFA6A16E),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
    ),
    ),
    ),
    SizedBox(height: 16),
    DropdownButtonFormField<String>(
    decoration: InputDecoration(
    prefixIcon:
    Icon(Icons.location_city, color: Colors.white),
    filled: true,
    fillColor: Color(0xFFA6A16E),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
    ),
    ),
    hint: Text('pick your city'),
    items: [
    DropdownMenuItem(
    child: Text('Jerusalem'),
    value: 'Jerusalem',
    ),
    DropdownMenuItem(
    child: Text('Bethlehem'),
    value: 'Bethlehem',
    ),
    DropdownMenuItem(
    child: Text('Beit Jala'),
    value: 'Beit Jala',
    ),
    DropdownMenuItem(
    child: Text('Beit Sahour'),
    value: 'Beit Sahour',
    ),
    DropdownMenuItem(
    child: Text('Hebron'),
    value: 'Hebron',
    ),
    DropdownMenuItem(
    child: Text('Sabastia'),
    value: 'Sabastia',
    ),
    DropdownMenuItem(
    child: Text('Jericho'),
    value: 'Continuing with the integration of the remaining code, here are the additional Dart files needed for the project:

    ### `onboarding.dart`
    This file will define the Onboarding page.

    ```dart
    import 'package:flutter/material.dart';
    import 'login.dart';

    class OnboardingPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
    child: Container(
    width: double.infinity,
    decoration: BoxDecoration(
    color: Color(0xFFA6A16E),
    ),
    child: Column(
    children: [
    SizedBox(height: 20),
    Text(
    'Looking For a New Friend ?',
    style: TextStyle(
    fontFamily: "Inter-Medium",
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    textAlign: TextAlign.center,
    ),
    Spacer(),
    Text(
    'PetCharm is the right place',
    style: TextStyle(
    fontFamily: "Inter-Medium",
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    textAlign: TextAlign.center,
    ),
    SizedBox(height: 20),
    ElevatedButton.icon(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
    );
    },
    icon: Icon(Icons.arrow_forward),
    label: Text('Get Started'),
    style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF6D8821),
    foregroundColor: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    textStyle: TextStyle(fontSize: 18, fontFamily: "Inter-Medium"),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    ),
    ),
    ),
    Align(
    alignment: Alignment.bottomCenter,
    child: Image.asset(
    'assets/dogs.png',
    width: double.infinity,
    height: 200,
    fit: BoxFit.cover,
    ),
    ),
    ],
    ),
    ),
    ),
    );
    }
    }
