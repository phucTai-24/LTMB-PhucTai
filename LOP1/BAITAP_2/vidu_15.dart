void main(){
  var s1 = 'Nguyen Doan Phuc Tai';
  var s2 = 'TITV.vn';

  double diemToan = 9;
  double diemVan = 8.5;
  var s3 = 'Xin chào $s1, bạn đã đạt tổng điểm là: ${diemVan+diemToan}';
  print(s3);

  var s4 = '''
          Dòng 1
          Dòng 2
          Dòng 3
  ''';

  var s5 = """
          Dòng 1
          Dòng 2
          Dòng 3
  """;

  var s6 = 'Đây là một đoạn \n văn bản';
  print(s6);

  var s7 = r'Đây là một đoạn \n văn bản'; //raw
  print(s7);

  var s8 = "Chuỗi 1 " + "Chuỗi 2";
  print(s8);

  var s9 = 'Chuỗi'
           'này'
           'là'
           'một chuỗi';
           print(s9);
}