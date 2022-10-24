abstract class DataBaseRequest {
//запрос удаления таблиц
  static String deleteTable(String table) => 'DROP TABLE $table';

  static const String users = 'Users';
  static const String account = "Account";
  static const String role = 'Role';
  static const String cart = "Cart";
  static const String product = "Product";

  static const List<String> tableList = [users, account, role, cart, product];

  static const List<String> createTableList = [
    _createTableUsers,
    _createTableAccount,
    _createTableRole,
    _createTableCart,
    _createTableProduct
  ];

  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createTableUsers =
      'CREATE TABLE "$tableUsers" ("id"	INTEGER,"name"	TEXT NOT NULL UNIQUE,"surname"	TEXT NOT NULL,"sex" TEXT NOT NULL, "age" INTEGER NOT NULL, "id_account"	INTEGER,FOREIGN KEY("id_account") REFERENCES "Account"("id"), "id_cart" INTEGER, FOREIGN KEY("id_cart") REFERENCES "Cart"("id"),PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createTableAccount =
      'CREATE TABLE "$tableAccount" ("id" INTEGER, "email" TEXT NOT NULL, "login" TEXT NOT NULL, "password" TEXT NOT NULL, "id_role" INTEGER, FOREIGN KEY("id_role") REFERENCES "Role"("id"), PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createTableCart =
      'CREATE TABLE "$tableCart" ("id" INTEGER, "amount" INTEGER NOT NULL, "sum" INTEGER NOT NULL, PRIMARY KEY("id" AUTOINCREMENT))';
  static const String _createTableProduct =
      'CREATE TABLE "$tableProduct" ("id" INTEGER, )';
}
