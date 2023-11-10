// lib/src/services/api_service.dart
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:latihan/src/models/appointment.dart';
import 'package:latihan/src/models/doctor.dart';

class ApiService {
  // Gantilah 'YOUR_API_BASE_URL' dengan URL API sebenarnya
  final String baseUrl = 'YOUR_API_BASE_URL';

  Future<List<Doctor>> getDoctors() async {
    final response = await http.get(Uri.parse('$baseUrl/doctors'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      final List<Doctor> doctors = data.map((item) => Doctor.fromJson(item)).toList();
      return doctors;
    } else {
      throw Exception('Failed to load doctors');
    }
  }

  Future<List<Appointment>> getAppointments() async {
    final response = await http.get(Uri.parse('$baseUrl/appointments'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      final List<Appointment> appointments = data.map((item) => Appointment.fromJson(item)).toList();
      return appointments;
    } else {
      throw Exception('Failed to load appointments');
    }
  }
}
