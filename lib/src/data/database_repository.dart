import 'package:cash_cat/src/domain/bankaccount/account.dart';
import 'package:cash_cat/src/domain/bankaccount/transaction.dart';
import 'package:cash_cat/src/domain/user/user.dart';

abstract class DatabaseRepository {
  // User related
  AccountUser getUser(String id);
  void createUser(AccountUser user);
  void updateUser(AccountUser user);
  void deleteUser(String userId);

  Account getAccount(String id);
  void createAccount(Account account);
  void updateAccount(Account account);
  void deleteAccount(Account account);
  List<Account> getAllAccounts();

  void createTransaction(String account);
  List<Transaction> getAllTransactions();
}
