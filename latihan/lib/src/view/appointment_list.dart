import 'package:flutter/material.dart';

import 'package:latihan/src/models/appointment.dart';
import 'package:latihan/src/widgets/appointment_list_item.dart';

class AppointmentList extends StatelessWidget {
  final List<Appointment> appointments;

  AppointmentList({required this.appointments});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appointments.length,
      itemBuilder: (context, index) {
        final appointment = appointments[index];
        return AppointmentListItem(appointment: appointment);
      },
    );
  }
}
