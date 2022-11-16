abstract class DataBaseRequest {
  static const String tableRole = 'role';
  static const String tableUser = 'user';
  static const String tableSot = 'sotr';
  static const String tableDolz = 'dolz';
  static const String tableZak = 'zak';
  static const String tableSklad = 'sklad';
  static const String tablePost = 'post';
  static const String tableTip =  'tip';
  static const String tableTov = 'tov';

  static String deleteTable(String table) => 'DROP TABLE $table';

  static const List<String> tableList = [
    tableRole,
    tableUser,
    tableSot,
    tableDolz,
    tableZak,
    tableSklad,
    tablePost,
    tableTip,
    tableTov,
  ];

  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUsers,
    _createtableSot,
    _createtableDolz,
    _createtableZak,
    _createtableSklad,
    _createtablePost,
    _createtableTip,
    _createtableTov,
  ];

  /// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Users
  static const String _createTableUsers =
      'CREATE TABLE "$tableUser" ("id"	INTEGER,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"id_role"	INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT) )';
  static const String _createtableSot =
      'CREATE TABLE "$tableSot" ("id"	INTEGER,"Name"	TEXT NOT NULL UNIQUE,"User_ID"	INTEGER, "Dolz_ID INTEGER, "id"	INTEGER,FOREIGN KEY("User_ID") REFERENCES "User"("id") ON DELETE CASCADE,"id"	INTEGER,lFOREIGN KEY("Dolz_ID") REFERENCES "Dolz"("id") ON DELETE CASCADE, PRIMARY KEY("id" AUTOINCREMENT) )';
  static const String _createtableDolz =
      'CREATE TABLE "$tableDolz" ("id"	INTEGER,"Name"	TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT) )';
  static const String _createtablePost =
      'CREATE TABLE "$tablePost" ("id"	INTEGER, PRIMARY KEY("id" AUTOINCREMENT) )';   
  static const String _createtableTip =
      'CREATE TABLE "$tableTip" ("id"	INTEGER,"Name"	TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT) )';   
  static const String _createtableSklad =
      'CREATE TABLE "$tableSklad" ("id"	INTEGER,"Adress"	TEXT NOT NULL UNIQUE,"Post_ID" INTEGER,"id"	INTEGER,FOREIGN KEY("Post_ID") REFERENCES "Post"("id") ON DELETE CASCADE, PRIMARY KEY("id" AUTOINCREMENT) )';
  static const String _createtableZak =
      'CREATE TABLE "$tableZak" ("id"	INTEGER,"Sot_ID" INTEGER, "Tov_ID" INTEGER, FOREIGN KEY("Sot_ID") REFERENCES "Sot"("id") ON DELETE CASCADE, FOREIGN KEY("Tov_ID") REFERENCES "Tov"("id") ON DELETE CASCADE, PRIMARY KEY("id" AUTOINCREMENT) )';
  static const String _createtableTov =
      'CREATE TABLE "$tableTov" ("id"	INTEGER,"Name" TEXT NOT NULL UNIQUE, "Tip_ID" INTEGER, "Sklad_ID" INTEGER, FOREIGN KEY("Tip_ID") REFERENCES "Tip"("id") ON DELETE CASCADE, FOREIGN KEY("Sklad_ID") REFERENCES "Sklad"("id") ON DELETE CASCADE, PRIMARY KEY("id" AUTOINCREMENT) )';
}
