import 'package:cash_cat/src/data/database_repository.dart';
import 'package:cash_cat/src/domain/bankaccount/account.dart';
import 'package:cash_cat/src/domain/bankaccount/bank.dart';

import 'package:cash_cat/src/domain/bankaccount/transaction.dart';
import 'package:cash_cat/src/domain/user/user.dart';
import 'package:cash_cat/src/presentation/home_screen.dart';

class MockDatabase implements DatabaseRepository {
  List<AccountUser> users = [
    AccountUser(
      id: "1",
      name: "Melanie",
      username: "MelliTheG",
      avatarUrl: null,
      email: "melanie.geyer@gmail.com",
      accounts: [
        Account(
          accountNo: "12345",
          accountType: "Giro",
          transactions: [
            Transaction(
              id: "123",
              accountId: "2",
              amount: 1432.96,
              date: DateTime.now(),
              description: "Beschreibung einer Transaktion",
            ),
          ],
          bank: Bank(name: "VR Bank", bic: "TIMJN1BE1"),
        ),
      ],
    ),
  ];

  @override
  void createAccount(Account account) {
    // TODO: implement createAccount
  }

  @override
  void createTransaction(String account) {
    // TODO: implement createTransaction
  }

  @override
  void createUser(AccountUser user) {
    // TODO: implement createUser
  }

  @override
  void deleteAccount(Account account) {
    // TODO: implement deleteAccount
  }

  @override
  void deleteUser(String userId) {
    // TODO: implement deleteUser
  }

  @override
  Account getAccount(String id) {
    for (var user in users) {
      for (var account in user.accounts) {
        if (account.accountNo == id) {
          return account;
        }
      }
    }
    throw Exception("Account not found");
  }

  @override
  List<Account> getAllAccounts() {
    // TODO: implement getAllAccounts
    throw UnimplementedError();
  }

  @override
  List<Transaction> getAllTransactions() {
    // TODO: implement getAllTransactions
    throw UnimplementedError();
  }

  @override
  AccountUser getUser(String id) {
    for (AccountUser user in users) {
      if (user.id == id) {
        return user;
      }
    }
    throw Exception("User not found");
  }

  @override
  void updateAccount(Account account) {
    // TODO: implement updateAccount
  }

  @override
  void updateUser(AccountUser user) {
    // TODO: implement updateUser
  }
}
