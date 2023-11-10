
import 'package:latihan/src/models/doctor.dart';
import 'package:latihan/src/service/api_service.dart';

class DoctorViewModel {
  final ApiService apiService;

  DoctorViewModel({required this.apiService});

  List<Doctor> doctors = [];

  Future<void> fetchDoctors() async {
    try {
      doctors = await apiService.getDoctors();
    } catch (e) {
      // Handle error, misalnya tampilkan pesan kesalahan
      print('Error fetching doctors: $e');
    }
  }

  // Tambahkan fungsi-fungsi lain yang diperlukan, seperti mencari dokter berdasarkan spesialisasi atau lokasi
}