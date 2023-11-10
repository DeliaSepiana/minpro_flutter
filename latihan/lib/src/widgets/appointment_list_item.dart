// lib/widgets/appointment_list_item.dart
import 'package:flutter/material.dart';

import 'package:latihan/src/models/appointment.dart';

class AppointmentListItem extends StatelessWidget {
  final Appointment appointment;

  AppointmentListItem({required this.appointment});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(appointment.doctor.name),
      subtitle: Text(
          "Date: ${appointment.date.toLocal()}"), // Menampilkan tanggal janji
      // Tambahkan interaksi atau tindakan saat item janji ditekan di sini
    );
  }
}
