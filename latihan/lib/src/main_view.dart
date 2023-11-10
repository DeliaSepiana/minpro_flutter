// lib/src/main_view.dart
import 'package:flutter/material.dart';

import 'package:latihan/src/view/appointment_list.dart';
import 'package:latihan/src/view/doctor_list.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: DoctorList(), // Menampilkan daftar dokter
          ),
          Expanded(
            child: AppointmentList(), // Menampilkan daftar janji
          ),
        ],
      ),
    );
  }
}
