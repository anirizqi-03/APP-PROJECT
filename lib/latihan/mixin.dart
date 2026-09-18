abstract class Kendaraan {
  void bunyiKlakson();
}

mixin BisaNgebut {
  void ngebut() {
    print("Bisa Ngebut");
  }
}

class Motor extends Kendaraan {
  @override
  void bunyiKlakson() {
    print("Motor: Tin Tin!");
  }
}

class Mobil extends Kendaraan with BisaNgebut {
  @override
  void bunyiKlakson() {
    print("Mobil: Tolelet telolet");
  }
}

void main() {
  var motor = Motor();
  motor.bunyiKlakson();

  var mobil = Mobil();
  mobil.bunyiKlakson();
  mobil.ngebut();
}
