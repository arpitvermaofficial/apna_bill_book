class UnitDetail {
  String? _id;
  String? _unitName;
  Null? _storeId;
  int? _unit;
  String? _createdAt;
  String? _updatedAt;

  UnitDetail(
      {String? id,
      String? unitName,
      Null? storeId,
      int? unit,
      String? createdAt,
      String? updatedAt}) {
    if (id != null) {
      this._id = id;
    }
    if (unitName != null) {
      this._unitName = unitName;
    }
    if (storeId != null) {
      this._storeId = storeId;
    }
    if (unit != null) {
      this._unit = unit;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get unitName => _unitName;
  set unitName(String? unitName) => _unitName = unitName;
  Null? get storeId => _storeId;
  set storeId(Null? storeId) => _storeId = storeId;
  int? get unit => _unit;
  set unit(int? unit) => _unit = unit;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;

  UnitDetail.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _unitName = json['unit_name'];
    _storeId = json['storeId'];
    _unit = json['unit'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['unit_name'] = this._unitName;
    data['storeId'] = this._storeId;
    data['unit'] = this._unit;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    return data;
  }
}
