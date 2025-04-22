abstract class BankCard {
  String cardHolder;
  String cardNumber;

  BankCard(this.cardHolder, this.cardNumber);
}

class Girocard extends BankCard {
  double dispo;

  Girocard(super.cardHolder, super.cardNumber, this.dispo);
}

class CreditCard extends BankCard {
  double limit;
  String expirationDate;
  String cvv;

  CreditCard(
    super.cardHolder,
    super.cardNumber,
    this.limit,
    this.expirationDate,
    this.cvv,
  );
}
