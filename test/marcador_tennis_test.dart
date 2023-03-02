import 'package:marcador_tennis/marcador_tennis.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('cuando x e y 0', () {
    expect(marcador(0,0), "X: love Y: love");
  });

  test('cuando x = 1 e y = 0', () {
    expect(marcador(1,0), "X: 15 Y: love");
  });

  test('cuando x= 2 y 0', () {
    expect(marcador(2,0), "X: 30 Y: love");
  });

  test('cuando x= 3 e y = 3 deuce', () {
    expect(marcador(3,3), "deuce");
  });

  test('cuando x= 5 e y = 5 deuce', () {
    expect(marcador(5,5), "deuce");
  });

  test('cuando advantageX', () {
    expect(marcador(5,4), "advantage X");
  });

  test('cuando advantageY', () {
    expect(marcador(4,5), "advantage Y");
  });

  test('cuando X win', () {
    expect(marcador(6,4), "jugadorX win");
  });
}

