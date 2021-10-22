class InfoSiswa {
  final String? nama, status, kelas, angkatan;
  final int? nilai;

  InfoSiswa({
    this.nama,
    this.status,
    this.kelas,
    this.angkatan,
    this.nilai,
  });
}

List siswaDummy = [
  InfoSiswa(
      nama: "Hernandez",
      status: "aktif",
      kelas: "A",
      angkatan: "12",
      nilai: 100),
  InfoSiswa(
      nama: "Claudio", status: "aktif", kelas: "B", angkatan: "12", nilai: 100),
  InfoSiswa(
      nama: "Slyvia", status: "aktif", kelas: "A", angkatan: "12", nilai: 98),
  InfoSiswa(
      nama: "Harpie", status: "aktif", kelas: "C", angkatan: "12", nilai: 95),
  InfoSiswa(
      nama: "Ronaldo", status: "aktif", kelas: "D", angkatan: "12", nilai: 95),
  InfoSiswa(
      nama: "Roxy", status: "aktif", kelas: "A", angkatan: "12", nilai: 95),
  InfoSiswa(
      nama: "Gouba", status: "aktif", kelas: "F", angkatan: "12", nilai: 94),
  InfoSiswa(
      nama: "Jacky", status: "aktif", kelas: "E", angkatan: "12", nilai: 90),
  InfoSiswa(
      nama: "Maman", status: "aktif", kelas: "A", angkatan: "12", nilai: 89),
  InfoSiswa(
      nama: "William", status: "aktif", kelas: "D", angkatan: "12", nilai: 85)
];
