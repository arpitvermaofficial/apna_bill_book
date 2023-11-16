class Variants {
  var _id;
  String? _name;
  Null? _description;
  var _productId;
  Null? _status;
  var _price;
  var _mrp;
  int _unit = 0;
  Null? _unitId;
  String? _createdAt;
  String? _updatedAt;
  Null? _deletedAt;
  Null? _unitDetail;

  Variants(
      {int? id,
      String? name,
      Null? description,
      int? productId,
      Null? status,
      int? price,
      int? mrp,
      int unit = 0,
      Null? unitId,
      String? createdAt,
      String? updatedAt,
      Null? deletedAt,
      Null? unitDetail}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (description != null) {
      this._description = description;
    }
    if (productId != null) {
      this._productId = productId;
    }
    if (status != null) {
      this._status = status;
    }
    if (price != null) {
      this._price = price;
    }
    if (mrp != null) {
      this._mrp = mrp;
    }
    if (unit != null) {
      this._unit = unit;
    }
    if (unitId != null) {
      this._unitId = unitId;
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
    if (unitDetail != null) {
      this._unitDetail = unitDetail;
    }
  }

  int? get id => _id;

  set id(int? id) => _id = id;

  String? get name => _name;

  set name(String? name) => _name = name;

  Null? get description => _description;

  set description(Null? description) => _description = description;

  int? get productId => _productId;

  set productId(int? productId) => _productId = productId;

  Null? get status => _status;

  set status(Null? status) => _status = status;

  int? get price => _price;

  set price(int? price) => _price = price;

  int? get mrp => _mrp;

  set mrp(int? mrp) => _mrp = mrp;

  int get unit => _unit;

  set unit(int unit) => _unit = unit;

  Null? get unitId => _unitId;

  set unitId(Null? unitId) => _unitId = unitId;

  String? get createdAt => _createdAt;

  set createdAt(String? createdAt) => _createdAt = createdAt;

  String? get updatedAt => _updatedAt;

  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;

  Null? get deletedAt => _deletedAt;

  set deletedAt(Null? deletedAt) => _deletedAt = deletedAt;

  Null? get unitDetail => _unitDetail;

  set unitDetail(Null? unitDetail) => _unitDetail = unitDetail;

  Variants.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _productId = json['productId'];
    _status = json['status'];
    _price = json['price'];
    _mrp = json['mrp'];
    _unit = json['unit'];
    _unitId = json['unitId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _unitDetail = json['unitDetail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['description'] = this._description;
    data['productId'] = this._productId;
    data['status'] = this._status;
    data['price'] = this._price;
    data['mrp'] = this._mrp;
    data['unit'] = this._unit;
    data['unitId'] = this._unitId;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    data['deletedAt'] = this._deletedAt;
    data['unitDetail'] = this._unitDetail;
    return data;
  }
}
