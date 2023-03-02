import 'package:marcador_tennis/marcador_tennis.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('cuando x e y 0', () {
    expect(marcador(), "love");
  });
}

marcador(){
  return "love";
}