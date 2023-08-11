double calculatePrice(double amountStrawberriesKg, double amountApplesKg) {
  double strawberriesPrice = 0.0;
  double applesPrice = 0.0;
  double totalAmount = amountStrawberriesKg + amountApplesKg;

  if (amountStrawberriesKg <= 5.0) {
    strawberriesPrice = amountStrawberriesKg * 2.50;
  } else {
    strawberriesPrice = amountStrawberriesKg * 2.20;
  }

  if (amountApplesKg <= 5.0) {
    applesPrice = amountApplesKg * 1.80;
  } else {
    applesPrice = amountApplesKg * 1.50;
  }

  double totalPrice = strawberriesPrice + applesPrice;

  if (totalAmount > 8.0 || totalPrice > 25.0) {
    totalPrice -= totalPrice * 0.1;
  }

  return totalPrice;
}
