void main() {
  var r = ('first', a:2, 5, 10.5);

  var point = (123,456);

  var person = (name: 'Alice', age:25, 5);

  print(point.$1);/// 123
  print(point.$2);
  print(person.$1);

  print(person.name);
  print(person.age);
}