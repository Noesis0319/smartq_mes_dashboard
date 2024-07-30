enum AuthType {
  Debug("Basic"),
  Company("Bearer"),
  Employee("Bearer"),
  Admin("Bearer"),
  Master(""),
  NoAuth(""),
  ;

  const AuthType(this._key);

  final String _key;

  getKey() => _key;
}
