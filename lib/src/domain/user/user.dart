import 'package:cash_cat/src/domain/bankaccount/account.dart';

class AccountUser {
  final String id;
  final String name;
  final String username;
  final String? avatarUrl;
  final String email;
  final List<Account> accounts;

  AccountUser({
    required this.id,
    required this.name,
    required this.username,
    required this.avatarUrl,
    required this.email,
    required this.accounts,
  });
}
