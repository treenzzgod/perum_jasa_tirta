class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({
    required this.image,
    required this.title,
    required this.discription,
  });
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Praktis Berkendara Wisata',
      image: 'images/page1.png',
      discription: "Aplikasi PJT1 menghadirkan"
          "kemudahan bagi pengguna jalur dan"
          "destinasi wisata Perum Jasa Tirta 1 "),
  UnbordingContent(
      title: 'Destinasi Tanpa Batas',
      image: 'images/page2.png',
      discription: "Semua sektor parwisata Perum Jasa"
          "Tirta 1 dapat diakses cukup dengan 1"
          "kartu sakti"),
  UnbordingContent(
    title: 'Top-up Voucher Mudah',
    image: 'images/page3.png',
    discription: "Top-up voucher secara online tanpa "
        "harus antri panjang dan melelahkan ",
  ),
  UnbordingContent(
      title: 'Rasakan Pengalaman Baru',
      image: 'images/page4.png',
      discription: "Langkah baru, kenyamanan"
          "selamanya. Nikmati keindahan alam"
          "pariwisata Perum Jasa Tirta 1"),
];
