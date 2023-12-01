class Araba {
  String renk;
  int model;
  double fiyat;
  int _hiz = 0;

  void hizlan(int miktar) {
    _hiz += miktar;
  }

  void yavasla(int miktar) {
    _hiz -= miktar;
  }

  void dur() {
    _hiz = 0;
  }

  int get hiz => _hiz;

  int get yas {
    return DateTime.now().year - model;
  }

  // cast this Araba to string
  @override
  String toString() {
    return 'Araba($renk renkli, $model model, $fiyat lira değerinde, $_hiz m/s hızında seyrediyor)';
  }

  Araba(this.renk, this.model, this.fiyat);
}
