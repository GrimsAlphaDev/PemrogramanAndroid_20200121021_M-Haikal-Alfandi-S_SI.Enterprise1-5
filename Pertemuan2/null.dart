// null terjadi apabila datanya tidak ada atau memang dia null, untuk itu dalam dart kita bisa memberi nilai default apabila suatu variable itu bernilai null, caranya

void main(List<String> args) {
  // jika null pakai default valuenya
  var nama;
  print(nama ?? 'rizal');

  // jika sudah di set maka tampilkan isinya
  var nama2 = "Bambang";
  print(nama2 ?? 'rizal');
}
