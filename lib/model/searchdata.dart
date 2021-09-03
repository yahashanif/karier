import 'package:flutter_mencoba/model/searchdata.dart';
import 'package:flutter_mencoba/search2.dart';
import 'package:equatable/equatable.dart';

class Lokasi{
  final int id;
  final String nama;

  Lokasi({required this.id,required this.nama});
}

List<Lokasi> mockLokasi = [
  Lokasi(id: 1, nama: "Yogyakarta"),
  Lokasi(id: 2, nama: "Sleman"),
  Lokasi(id: 3, nama: "Bantul"),
  Lokasi(id: 4, nama: "Kulon Progo"),
  Lokasi(id: 5, nama: "Solo"),
  Lokasi(id: 6, nama: "Boyolali"),
  Lokasi(id: 7, nama: "Sragen"),
  Lokasi(id: 8, nama: "Pati"),
  Lokasi(id: 9, nama: "Banguntapan"),
  Lokasi(id: 10, nama: "Jakarta"),
  Lokasi(id: 11, nama: "Depok"),
  Lokasi(id: 12, nama: "Semarang")
];
