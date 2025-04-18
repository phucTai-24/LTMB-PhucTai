/*

Câu 1: Viết một đoạn mã Dart để khai báo các kiểu dữ liệu khác nhau như số nguyên,
số thực, chuỗi ký tự và Boolean. Sau đó, in giá trị của các biến này ra console để xem
kết quả.

Câu 2: Viết một hàm trong Dart tên là calculateSum nhận vào hai tham số số nguyên
và trả về tổng của chúng. Gọi hàm này trong chương trình chính và in kết quả ra màn
hình.

*/

int calculateSum(int a, int b) {
  return a + b;
}

// Cau 1
void main() {
  // Khai báo các kiểu dữ liệu
  int soNguyen = 10;               // Số nguyên
  double soThuc = 3.14;           // Số thực
  String chuoiKyTu = "Hello, Dart"; // Chuỗi ký tự
  bool laBoolean = true;          // Kiểu Boolean

  // In giá trị ra console
  print("Số nguyên: $soNguyen");
  print("Số thực: $soThuc");
  print("Chuỗi ký tự: $chuoiKyTu");
  print("Boolean: $laBoolean");


// Cau 2
// Hàm tính tổng của hai số nguyên
  // Khai báo hai số nguyên
  int so1 = 5;
  int so2 = 10;

  // Gọi hàm và lưu kết quả
  int tong = calculateSum(so1, so2);

  // In kết quả ra màn hình
  print("Tổng của $so1 và $so2 là: $tong");
}