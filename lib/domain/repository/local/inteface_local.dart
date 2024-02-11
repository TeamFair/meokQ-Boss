abstract class InterfaceLocal {
  Future<void> init();

  Future<void> setKey(String key, String value);

  String? getKey(String key);

  void deleteKey(String key);

  void removeAll();
}
