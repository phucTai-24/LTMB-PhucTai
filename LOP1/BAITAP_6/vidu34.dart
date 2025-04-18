/*
Stream là gì?

New Future giống như một món ăn, thì Stream giống như xem một kênh YouTube:

Bạn đang xem (là nghe stream)
- Bạn xem video được đăng tải (stream phát ra dữ liệu)
- Bạn xem video khi nó xuất hiện (xử lý dữ liệu từ stream)
- Bạn xem video theo thời gian (stream phát trực tiếp)

Stream trong Data là chuỗi các sự kiện dữ liệu theo thời gian, không khác gì như Future.
*/

import 'dart:async';

void viDuStreamDemSo(){

   print("==== Ví dụ 1: Stream trò chơi năm mười ====");

     // Tạo ra stream đếm số (phát ra con số từ 0, 5, 10, ..., 100), mỗi giày đếm 1 số
     Stream<int> stream = Stream.periodic (Duration (seconds: 2), (x)=>x+1).take(20);

     // Lắng nghe
     stream.listen(
       (x) => print("Nghe được số: ${x*5} - đang chạy trốn!"),

       onDone: () => print("Người bị bắt đầu đi tìm!"),

       onError: (loi) => print("Có vấn đề, ngưng cuộc chơi ($loi)")

      );
}

// Ví dụ 2: Tạo và điều khiển stream với StreamController
void viDuStreamController() {
  print("=== Ví dụ 3: Stream Controller ===");
 
  // Tạo bộ điều khiển stream
  StreamController<String> controller = StreamController<String>();
 
  // Lắng nghe stream
  controller.stream.listen(
    (tinNhan) => print("Tin nhắn mới: $tinNhan"),
    onDone: () => print("Không còn tin nhắn nào nữa"),
  );
 
  // Gửi tin nhắn vào stream
  print("Đang gửi tin nhắn đầu tiên...");
  controller.add("Xin chào!");
 
  // Gửi thêm tin nhắn sau 2 giây
  Future.delayed(Duration(seconds: 2), () {
    print("Đang gửi tin nhắn thứ hai...");
    controller.add("Bạn khỏe không?");
  });
 
  // Gửi tin nhắn cuối và đóng stream sau 4 giây
  Future.delayed(Duration(seconds: 4), () {
    print("Đang gửi tin nhắn cuối...");
    controller.add("Tạm biệt!");
    controller.close();
  });
}

void main() {
    //viDuStreamDemSo();
    viDuStreamController();
}