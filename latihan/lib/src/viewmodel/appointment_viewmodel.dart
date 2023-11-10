import 'package:latihan/src/models/appointment.dart';
import 'package:latihan/src/service/api_service.dart';

class AppointmentViewModel {
  final ApiService apiService;

  AppointmentViewModel({required this.apiService});

  List<Appointment> appointments = [];

  Future<void> fetchAppointments() async {
    try {
      appointments = await apiService.getAppointments();
    } catch (e) {
      // Handle error, misalnya tampilkan pesan kesalahan
      print('Error fetching appointments: $e');
    }
  }

  // Tambahkan fungsi-fungsi lain yang diperlukan, seperti membuat atau membatalkan janji
}
