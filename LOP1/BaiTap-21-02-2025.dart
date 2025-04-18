/*
BÀI TẬP: Cấu trúc dữ liệu trong Dart
====================================
Bài 1: List

Có bao nhiêu cách để khai báo một List trong đoạn code? Liệt kê và giải thích từng cách.
Cho List ['A', 'B', 'C']. Viết code để:

Thêm phần tử 'D' vào cuối List
  list.add('D');

Chèn phần tử 'X' vào vị trí thứ 1
  list.insert(1, 'X');
Xóa phần tử 'B'
  list.remove('B');

In ra độ dài của List
  print(list.length); // Kết quả: 4


Đoạn code sau sẽ cho kết quả gì?

dartCopyvar list = [1, 2, 3, 4, 5];
list.removeWhere((e) => e % 2 == 0);
print(list);
Kết quả: [1, 3, 5]


Giải thích sự khác nhau giữa các phương thức:

remove() và removeAt()

emove(value): Xóa phần tử đầu tiên có giá trị bằng value. Nếu không tìm thấy, không làm gì.
removeAt(index): Xóa phần tử tại vị trí index cụ thể.

add() và insert()
add(value): Thêm value vào cuối List.
insert(index, value): Chèn value vào vị trí index, đẩy các phần tử phía sau sang một vị trí.

addAll() và insertAll()
addAll(iterable): Thêm tất cả các phần tử từ iterable vào cuối List.
insertAll(index, iterable): Chèn tất cả các phần tử từ iterable vào vị trí index, đẩy các phần tử phía sau sang một vị trí.

====================================
Bài 2: Set

Set khác List ở những điểm nào? Nêu ít nhất 3 điểm khác biệt.
Set: Chỉ lưu trữ các phần tử duy nhất. Nếu bạn cố gắng thêm một phần tử đã tồn tại, nó sẽ không được thêm vào.
List: Cho phép các phần tử trùng lặp. Bạn có thể thêm cùng một phần tử nhiều lần.
Set: Không bảo đảm thứ tự của các phần tử. Khi bạn lặp qua một Set, thứ tự không nhất thiết phải giống như khi bạn thêm phần tử.
List: Bảo đảm thứ tự, tức là các phần tử sẽ được lưu giữ theo thứ tự mà bạn thêm vào.

Cho hai Set:

dartCopyvar set1 = {1, 2, 3};
var set2 = {3, 4, 5};
Tính kết quả của:

Union (hợp)
// Union (hợp)
var union = set1.union(set2); // Kết quả: {1, 2, 3, 4, 5}

Intersection (giao)
// Intersection (giao)
var intersection = set1.intersection(set2); // Kết quả: {3}

Difference (hiệu) của set1 với set2
// Difference (hiệu) của set1 với set2
var difference = set1.difference(set2); // Kết quả: {1, 2}

Đoạn code sau sẽ cho kết quả gì?

dartCopyvar mySet = Set.from([1, 2, 2, 3, 3, 4]);
print(mySet.length);
Kết quả: 4



====================================
Bài 3: Map

Viết code để thực hiện các yêu cầu sau với Map:

dartCopyMap<String, dynamic> user = {
  'name': 'Nam',
  'age': 20,
  'isStudent': true
};

Thêm email: 'nam@gmail.com'
 // Thêm email: 'nam@gmail.com'
  user['email'] = 'nam@gmail.com';

Cập nhật age thành 21
  // Cập nhật age thành 21
  user['age'] = 21;

Xóa trường isStudent
  // Xóa trường isStudent
  user.remove('isStudent');

Kiểm tra xem Map có chứa key 'phone' không
  bool hasPhone = user.containsKey('phone');
  print('Có chứa key "phone": $hasPhone');

So sánh hai cách truy cập giá trị trong Map:

dartCopyuser['phone']
Cách này sẽ trả về giá trị tương ứng với key 'phone'. Nếu không có key này, nó sẽ trả về null.

user['phone'] ?? 'Không có số điện thoại'
Cách này sử dụng toán tử null-aware (??). Nếu user['phone'] là null (tức là không tồn tại key 'phone'), nó sẽ trả về chuỗi 'Không có số điện thoại' thay vì null.

Viết một hàm nhận vào một Map và in ra tất cả các cặp key-value, mỗi cặp trên một dòng.
void printMap(Map<String, dynamic> map) {
  map.forEach((key, value) {
    print('$key: $value');
  });
}

void main() {
  Map<String, dynamic> user = {
    'name': 'Nam',
    'age': 21,
    'email': 'nam@gmail.com'
  };

  printMap(user);
}

====================================
Phần 4: Runes

Runes được sử dụng để làm gì? Cho ví dụ cụ thể.
Runes trong Dart được sử dụng để đại diện cho các ký tự Unicode, đặc biệt là những ký tự không thể được biểu diễn bằng một ký tự 16-bit. 
Điều này rất hữu ích khi làm việc với các ký tự đặc biệt, như emoji hoặc các ký tự trong các ngôn ngữ khác.

Viết code để:


Tạo một Runes chứa ký tự emoji cười 😀
 // Tạo một Runes chứa ký tự emoji cười 😀
  Runes emoji = Runes('\u{1F600}'); // Mã Unicode cho emoji cười

Chuyển đổi Runes đó thành String
 // Chuyển đổi Runes đó thành String
  String emojiString = String.fromCharCodes(emoji);

In ra số lượng điểm mã của Runes
// In ra số lượng điểm mã của Runes
  print('Emoji: $emojiString');
  print('Số lượng điểm mã: ${emoji.length}');

*/