class resep {
  String name, htm, deskripsi, image;

  resep(
      {required this.name,
      required this.htm,
      required this.deskripsi,
      required this.image});
}

List<resep> dataTempat = [
  resep(
      name: 'Pantai Pandawa',
      htm: '45K',
      deskripsi:
          'Objek wisata pantai pandawa terletak di Desa Kutuh, Kecamatan Kuta Selatan, Badung, Bali. Pantai pandawa menawarkan keindahan alam dengan pasir putih dan air laut yang jernih.',
      image: 'assets/Pantai-Pandawa.jpg'),
  resep(
      name: 'Garuda Wisnu Kencana',
      htm: '45K',
      deskripsi:
          'Kawasan Garuda Wisnu Kencana (GWK) terletak di Jimbaran, Badung, Bali. Patung GWK adalah patung Dewa Wisnu yang menunggang Burung Garuda. Dibangun setinggi 75 meter, dengan pondasi 70 meter tinggi sayap burung Garuda yang membentang selebar 66 meter. Patung yang merepresentasikan Dewa Wisnu sedang menunggangi Burung Garuda ini dibuat oleh I Nyoman Nuarta.',
      image: 'assets/GWK.jpg'),
  resep(
      name: 'Pura Uluwatu',
      htm: '60K',
      deskripsi:
          'Pura Luhur Uluwatu atau Pura Uluwatu merupakan pura yang berada di wilayah Desa Adat Pecatu, Kecamatan Kuta Selatan, Kabupaten Badung. Pura yang terletak di ujung barat daya pulau Bali di atas anjungan batu karang yang terjal dan tinggi serta menjorok ke laut. Di kawasan ini juga setiap harinya menampilkan atraksi wisata tari kecak yang mengambil lakon cerita Ramayana.',
      image: 'assets/Uluwatu.jpg'),
  resep(
      name: 'Kintamani',
      htm: '30K',
      deskripsi:
          'Kawasan wisata Kintamani terletak di Kabupaten Bangli, daya tarik dari kawasan ini adalah pemandangan kawasan pegunungan yang unik dan menakjubkan. dari kawasan ini kita dapat menikmati pemandangan keindangan dari Gunung Batur, Gunung Abang dan Danau Batur. Kintamani berjarak kira-kira 2 jam perjalanan dari kota Denpasar',
      image: 'assets/Kintamani.jpg'),
  resep(
      name: 'Pantai Lovina',
      htm: '60K',
      deskripsi:
          'Lovina atau sering juga disebut Pantai Lovina merupakan salah satu kawasan wisata laut yang terdapat di bagian utara Pulau Bali. Pantai yang terletak di Lovina di daerah Bali Utara ini memang menarik karena masih relatif alami. Salah satu keunikan di pantai ini adalah Anda bisa menyaksikan aksi lumba-lumba liar yang terdapat di laut. Untuk dapat melihat lumba-lumba, pada saat pagi hari anda harus menaiki perahu berkeliling lautan di wilayah Lovina.',
      image: 'assets/Lovina.jpg'),
  resep(
      name: 'Ubud',
      htm: '60K',
      deskripsi:
          'Ubud adalah sebuah desa adat sekaligus menjadi kawasan destinasi pariwisata yang berada di wilayah tengah pulau Bali, tepatnya di Kabupaten Gianyar. Ubud terutama terkenal diantara para wisatawan mancanegara karena terletak di antara sawah dan hutan yang berjurang-jurang yang membuat pemandangan alam sangat indah. Selain itu, Ubud dikenal karena seni dan budaya yang berkembang sangat pesat dan maju. Denyut nadi kehidupan masyarakat Ubud tidak bisa dilepaskan dari kesenian. Di sini banyak pula terdapat galeri-galeri seni, serta arena pertunjukan musik dan tari yang digelar setiap malam secara bergantian di segala penjuru desa.',
      image: 'assets/ubud.jpg'),
];
