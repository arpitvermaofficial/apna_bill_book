class ProductCategory {
  int _id = 0;
  String? _name;
  Null? _image;
  String? _storeId;
  int _sortOrder = 0;
  String? _createdAt;
  String? _updatedAt;
  Null? _deletedAt;

  ProductCategory(
      {required int id,
      String? name,
      Null? image,
      String? storeId,
      required int sortOrder,
      String? createdAt,
      String? updatedAt,
      Null? deletedAt}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (image != null) {
      this._image = image;
    }
    if (storeId != null) {
      this._storeId = storeId;
    }
    if (sortOrder != null) {
      this._sortOrder = sortOrder;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (deletedAt != null) {
      this._deletedAt = deletedAt;
    }
  }

  int get id => _id;
  set id(int id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  Null? get image => _image;
  set image(Null? image) => _image = image;
  String? get storeId => _storeId;
  set storeId(String? storeId) => _storeId = storeId;
  int get sortOrder => _sortOrder;
  set sortOrder(int sortOrder) => _sortOrder = sortOrder;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  Null? get deletedAt => _deletedAt;
  set deletedAt(Null? deletedAt) => _deletedAt = deletedAt;

  ProductCategory.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _storeId = json['storeId'];
    _sortOrder = json['sortOrder'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['image'] = this._image;
    data['storeId'] = this._storeId;
    data['sortOrder'] = this._sortOrder;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    data['deletedAt'] = this._deletedAt;
    return data;
  }
}
