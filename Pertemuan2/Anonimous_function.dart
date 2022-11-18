// Sama seperti variable, fungsi pada dart juga bisa kita definisikan tipe data yang di kembalikan/return nilainya, seperti berikut :

void main(List<String> args) {
  var list = ['aple', 'pisang', 'jeruk'];
  list.forEach((item) {
    print('${list.indexOf(item)} : $item');
  });
}
