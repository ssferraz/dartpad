import 'package:dartpad/lista1/exercicio1/exercicio1.dart';
import 'package:test/test.dart';

void main() {
  test('Teste sem desconto', () {
    double result = calculatePrice(1, 1);
    expect(result, closeTo(4.30, 0.01));
  });

  test('Teste morangos acima de 5kg sem desconto', () {
    double result = calculatePrice(6, 1);
    expect(result, closeTo(15, 0.01));
  });

  test('Teste maçãs acima de 5kg sem desconto', () {
    double result = calculatePrice(1, 6);
    expect(result, closeTo(11.50, 0.01));
  });

  test('Teste compra acima de 8kg com desconto de 10%', () {
    double result = calculatePrice(5, 4);
    expect(result, closeTo(17.73, 0.01));
  });

  test("Teste compra acima de 8kg e valor acima de R\$25,00", () {
    double result = calculatePrice(10, 4);
    expect(result, closeTo(26.28, 0.01));
  });
}
