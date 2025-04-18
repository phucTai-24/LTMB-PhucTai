double tinhTong(var a, double b, double c) {
  return a + b + c;
}

// Su dung cu phap rut gon "=>"
double tinhTong1(var a, double b, double c) => a + b + c;
//=> expression là cách viết gọn của { return expression; }
/*
Lưu ý: Chỉ có biểu thức (expression) dùng đúng sau =>, không áp dụng cho câu lệnh (statement).
Ví dụ: Ta không thể có statement dạng sau => được. Tuy nhiên ta có thể sử dụng toán tử ba ngôi:

condition ? expr1 : expr2
*/


//Hàm với tên của tham số:
//Khi gọi 1 hàm (function), ta có thể truyền giá trị thông qua tên biến paramName: value,
String createFullName({String ho ="", String chulot ="", String ten =""}) {
  return ho + " " + chulot + " " + ten;
}

/*
Tham số tùy chọn (có hay không cũng được):
Các tham số tùy chọn trong hàm cho phép ta gọi hàm mà không cần cung cấp đầy đủ tất cả các tham số.
Khi các tham số tùy chọn không được cung cấp, chúng sẽ nhận giá trị null theo mặc định.
*/
double sum(double a, [double? b, double? c, double? d]) {
  var result = a;
  result += (b != null) ? b : 0;
  result += (c != null) ? c : 0;
  result += (d != null) ? d : 0;
  return result;
}

/*
Hàm ẩn danh
Trong Dart, ta có thể tạo các hàm không có tên gọi là hàm ẩn danh, hay còn gọi là lambda hoặc closure.

Chúng thường được sử dụng trong các ngữ cảnh mà ta không cần sử dụng tên hàm, ví dụ như truyền hàm như tham số cho hàm khác.

Để tạo hàm ẩn danh, ta có thể sử dụng cú pháp tương tự như khi khai báo hàm có tên, nhưng bỏ qua phần kiểu trả về và tên hàm.
*/


// Hàm main: khởi đầu ứng dụng
void main() {
  print("Hello World!");
  var x = tinhTong(1, 2, 15);
  print(x);

  var y = tinhTong1(1, 2, 25);
  print(y);

  var fn = createFullName(ho: "Nguyen", chulot: "Doan Phuc", ten: "Tai");
  print(fn);

  var fn2 = createFullName(chulot: "Doan Phuc",ho: "Nguyen",  ten: "Tai");
  print(fn2);

  var fn3 = createFullName(chulot: "Doan Phuc", ten: "Tai");
  print(fn3);

  print(sum(10));
  print(sum(10,1));
  print(sum(10,1,2));
  print(sum(10,1,2,3));

  var ham = (var a, var b) {
  return a + b;
};

  var ham2 = (var a, var b) => a+b;

  print(ham(1, 2));
}
