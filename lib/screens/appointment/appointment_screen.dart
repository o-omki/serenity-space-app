import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() {
    return _AppointmentScreenState();
  }
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Appointment Screen",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}