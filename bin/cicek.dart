class Cicek {
  String? renk;
  String? tur;
  int? yaprakSayisi;
  bool dikenli;
  bool saksida;

  @override
  String toString() =>
      '$renk renkli, $yaprakSayisi yapraklı $tur çiçeği. ${dikenli ? 'dikenleri var' : 'dikenleri yok'}. Bir saksı çiçeği${saksida ? '' : 'değil'}.';

  Cicek(this.renk, this.tur, this.yaprakSayisi, this.dikenli, this.saksida);
}
