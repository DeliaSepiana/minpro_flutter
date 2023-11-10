// lib/widgets/doctor_list_item.dart
import 'package:flutter/material.dart';

import 'package:latihan/src/models/doctor.dart';

class DoctorListItem extends StatelessWidget {
  final Doctor doctor;

  DoctorListItem({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(doctor.imageUrl),
      ),
      title: Text(doctor.name),
      subtitle: Text(doctor.specialty),
      // Tambahkan interaksi atau tindakan saat item dokter ditekan di sini
    );
  }
}
