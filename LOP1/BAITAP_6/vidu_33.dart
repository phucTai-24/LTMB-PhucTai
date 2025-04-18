import "dart:async";

Future<String> layTen() async {
  return "Nguyen Van A";
}

/*
 * Khối await
 * - await chỉ được sử dụng bên trong một hàm async
 * Khi bạn đặt await trước một Future, Dart sẽ:
 * - Tạm dừng thi hành dòng đó
 * - Đợi Future hoàn thành
 * - Trả về giá trị từ Future (không còn dòng gọi trong Future nữa)
 * - Tiếp tục thi hành những dòng code còn lại
 */

// Hàm trả về Future
Future<String> taiDuLieu() {
  return Future.delayed(
    Duration(seconds: 2),
    () => "Dữ liệu đã tải xong",
  );
}

// Gọi hàm cách 1
void hamChinh1() {
  print("Bắt đầu tải");
  Future<String> f = taiDuLieu();
  f.then((ketQua) {
    print("Kết quả: $ketQua");
  });
  print("Tiếp tục công việc khác");
}

// Gọi hàm cách 2
void hamChinh2() async {
  print("Bắt đầu tải"); // 1
  String ketQua = await taiDuLieu(); // 2
  print("Kết quả: $ketQua");
  print("Tiếp tục công việc khác."); // 3
}

void main() {
  hamChinh1();
}