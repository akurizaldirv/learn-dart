class Category {
  String _id;
  String _name;

  Category(this._id, this._name);

  set id(String id) {
    if (id != "") {
      _id = id;
    }
  }

  set name(String name) {
    if (name != "") {
      _name = name;
    }
  }

  String get id => "id: $_id";
  String get name => "name: $_name";

  @override
  bool operator ==(Object other) {
    if (other is Category) {
      return hashCode == other.hashCode;
    } else {
      return false;
    }
  }

  @override
  int get hashCode {
    var result = _id.hashCode;
    result += _name.hashCode;
    return result;
  }

  @override
  String toString() {
    return "Category{id: $_id, name: $_name}";
  }
}
