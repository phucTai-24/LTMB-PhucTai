void main() {
  // Vòng lặp for
  for (var i = 1; i <= 5; i++) {
    print(i);
  }

  // Iterable: List, Set
  var names = ["Le", "Nhat", "Tung"];
  for (var name in names) {
    print(name);
  }

  // Vòng lặp while
  var i = 1;
  while (i <= 5) {
    print(i);
    i++;
  }

  // Vòng lặp do-while (thực hiện ít nhất 1 lần)
  var x = 1;
    do {
      print(x);
      x++;
      if(x==3) break;
    } while (x <= 5);

 // continue: dùng để bỏ qua phần còn lại của vòng lặp hiện tại và tiếp tục
  print("-----");
  x = 0;
    do {
      x++;
      if (x == 3) continue;
      print(x);
    } while (x <= 5);
  print("-----");
}