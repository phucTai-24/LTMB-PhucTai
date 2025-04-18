void main(){
List<String> list1 = ['A', 'B', 'C']; // Trực tiếp
var list2 = [1, 2, 3]; // sử dụng var
List<String> list3 = []; // list rỗng
var list4 = List<int>.filled(3, 0); // List có kích thước cố định
print(list4);

// 1. Thêm phần tử
list1.add('D'); // Thêm 1 phần tử
list1.addAll(['A', 'C']); // Thêm nhiều phần tử
list1.insert(0, 'Z'); // Chèn phần tử vào vị trí 0
list1.insertAll(1, ['1', '0']); // Chèn nhiều phần tử vào vị trí 1
print(list1);

// 2. Xóa phần tử bên trong list
list1.remove('A'); // Xóa phần tử có giá trị 'A'
list1.removeLast(); // Xóa phần tử tại vị trí cuối
list1.removeAt(0); // Xóa phần tử tại vị trí 0
list1.removeWhere((e) => e == 'B'); // Xóa theo điều kiện
print(list1);
list1.clear(); // Xóa tất cả phần tử trong list

// 3. Truy cập phần tử
print(list2[0]); // Lấy phần tử tại vị trí 0
print(list2.first); // Lấy phần tử đầu tiên
print(list2.last); // Lấy phần tử cuối cùng
print(list2.length); // Độ dài list

// 4. Kiểm tra
print(list2.isEmpty); // Kiểm tra rỗng
print('List 3: ${list3.isNotEmpty ? 'không rỗng' : 'rỗng'}'); // Kiểm tra xem list3 có rỗng hay không
print(list4.contains(1)); // Kiểm tra list4 có chứa phần tử 1 không
print(list4.contains(0)); // Kiểm tra list4 có chứa phần tử 0 không



// 5. Biến đổi
list4 = [2, 1, 3, 9, 0, 10]; // Gán giá trị mới cho list4
print(list4); // In ra list4
list4.sort(); // Sắp xếp tăng dần
print(list4); // In ra list4 sau khi sắp xếp
list4 = list4.reversed.toList(); // Đảo ngược danh sách
print(list4); // In ra list4 sau khi đảo ngược

// 7. Cắt và nối
var sublist = list4.sublist(1, 3); // Lấy một phần con từ list4
print(sublist); // In ra sublist
var str_joined = list4.join(", "); // Nối các phần tử của list4 thành chuỗi
print(str_joined); // In ra chuỗi đã nối

// 8. Duyệt các phần tử bên trong List
list4.forEach((element) {
  print(element); // In ra từng phần tử
});
}