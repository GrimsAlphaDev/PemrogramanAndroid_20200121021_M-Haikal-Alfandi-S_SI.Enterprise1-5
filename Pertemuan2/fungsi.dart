//  Fungsi adalah blok kode program yang bisa kita gunakan berulang-ulang dengan cara memanggilnya

void main(List<String> args) {
  print(cekGenap(12));
  print(cekGenap(7));
}

cekGenap(int number) {
  if (number % 2 == 0) {
    return true;
  } else {
    return false;
  }
}
