import 'package:flutter/material.dart';

import 'package:latihan/src/models/doctor.dart';
import 'package:latihan/src/widgets/doctor_list_item.dart';

class DoctorList extends StatelessWidget {
  final List<Doctor> doctors;

  DoctorList({required this.doctors});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        final doctor = doctors[index];
        return DoctorListItem(doctor: doctor);
      },
    );
  }
}
