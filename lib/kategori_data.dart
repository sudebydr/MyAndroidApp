import 'package:theme_board/kategori_modeli.dart';

String apiKEY = "[API_KEY]";

List<KategoriModeli> getKategori() {
  List<KategoriModeli> kategori = [];

  KategoriModeli kategoriModeli = KategoriModeli();
  kategoriModeli.imgUrl = "assets/images/fairytale.jpg";
  kategoriModeli.kategoriAdi = "Fairytale";
  kategori.add(kategoriModeli);

  kategoriModeli = KategoriModeli();
  kategoriModeli.imgUrl = "assets/images/daughterofsea.jpg";
  kategoriModeli.kategoriAdi = "Daughter of sea";
  kategori.add(kategoriModeli);

  kategoriModeli = KategoriModeli();
  kategoriModeli.imgUrl = "assets/images/energy'sstuff.jpg";
  kategoriModeli.kategoriAdi = "Energy's stuff";
  kategori.add(kategoriModeli);

  kategoriModeli = KategoriModeli();
  kategoriModeli.imgUrl = "assets/images/monetstyle.jpg";
  kategoriModeli.kategoriAdi = "MonetStyle";
  kategori.add(kategoriModeli);

  kategoriModeli = KategoriModeli();
  kategoriModeli.imgUrl = "assets/images/mariposa.jpg";
  kategoriModeli.kategoriAdi = "Mariposa";
  kategori.add(kategoriModeli);

  kategoriModeli = KategoriModeli();
  kategoriModeli.imgUrl = "assets/images/art.jpg";
  kategoriModeli.kategoriAdi = "Art";
  kategori.add(kategoriModeli);

  return kategori;
}
