import 'package:latihan/src/models/doctor.dart';

class Appointment {
  final String id;
  final Doctor doctor;
  final DateTime date;

  Appointment({required this.id, required this.doctor, required this.date});
}
