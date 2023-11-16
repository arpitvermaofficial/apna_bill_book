import 'package:apna_billbook/Products/modal/product_category_modal.dart';
import 'package:apna_billbook/Products/modal/unit_detail_modal.dart';
import 'package:apna_billbook/Products/modal/variants_modal.dart';

class ProductItemModel {
  int _id = 0;
  String? _name;
  String? _description;
  String? _productImage;
  int _productCategoryId = 0;
  Null? _status;
  int _mrp = 0;
  int _price = 0;
  int _unit = 0;
  String? _unitId;
  String? _taxRate;
  Null? _taxRateId;
  String? _hsnCode;
  bool? _haveVariant;
  String? _storeId;
  int _sortOrder = 0;
  bool? _isOutOfStock;
  bool? _sampleProduct;
  String? _createdAt;
  String? _updatedAt;
  Null? _deletedAt;
  double? _currentStockCount;
  ProductCategory? _productCategory;
  UnitDetail? _unitDetail;
  Null? _gst;
  List<Variants>? _variants;

  Data(
      {required int id,
      String? name,
      String? description,
      String? productImage,
      required int productCategoryId,
      Null? status,
      required int mrp,
      required int price,
      required int unit,
      String? unitId,
      String? taxRate,
      Null? taxRateId,
      String? hsnCode,
      bool? haveVariant,
      String? storeId,
      required int sortOrder,
      bool? isOutOfStock,
      bool? sampleProduct,
      String? createdAt,
      String? updatedAt,
      Null? deletedAt,
      double? currentStockCount,
      ProductCategory? productCategory,
      UnitDetail? unitDetail,
      Null? gst,
      List<Variants>? variants}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (description != null) {
      this._description = description;
    }
    if (productImage != null) {
      this._productImage = productImage;
    }
    if (productCategoryId != null) {
      this._productCategoryId = productCategoryId;
    }
    if (status != null) {
      this._status = status;
    }
    if (mrp != null) {
      this._mrp = mrp;
    }
    if (price != null) {
      this._price = price;
    }
    if (unit != null) {
      this._unit = unit;
    }
    if (unitId != null) {
      this._unitId = unitId;
    }
    if (taxRate != null) {
      this._taxRate = taxRate;
    }
    if (taxRateId != null) {
      this._taxRateId = taxRateId;
    }
    if (hsnCode != null) {
      this._hsnCode = hsnCode;
    }
    if (haveVariant != null) {
      this._haveVariant = haveVariant;
    }
    if (storeId != null) {
      this._storeId = storeId;
    }
    if (sortOrder != null) {
      this._sortOrder = sortOrder;
    }
    if (isOutOfStock != null) {
      this._isOutOfStock = isOutOfStock;
    }
    if (sampleProduct != null) {
      this._sampleProduct = sampleProduct;
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
    if (currentStockCount != null) {
      this._currentStockCount = currentStockCount;
    }
    if (productCategory != null) {
      this._productCategory = productCategory;
    }
    if (unitDetail != null) {
      this._unitDetail = unitDetail;
    }
    if (gst != null) {
      this._gst = gst;
    }
    if (variants != null) {
      this._variants = variants;
    }
  }

  int get id => _id;
  set id(int id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get productImage => _productImage;
  set productImage(String? productImage) => _productImage = productImage;
  int get productCategoryId => _productCategoryId;
  set productCategoryId(int productCategoryId) =>
      _productCategoryId = productCategoryId;
  Null? get status => _status;
  set status(Null? status) => _status = status;
  int get mrp => _mrp;
  set mrp(int mrp) => _mrp = mrp;
  int get price => _price;
  set price(int price) => _price = price;
  int get unit => _unit;
  set unit(int unit) => _unit = unit;
  String? get unitId => _unitId;
  set unitId(String? unitId) => _unitId = unitId;
  String? get taxRate => _taxRate;
  set taxRate(String? taxRate) => _taxRate = taxRate;
  Null? get taxRateId => _taxRateId;
  set taxRateId(Null? taxRateId) => _taxRateId = taxRateId;
  String? get hsnCode => _hsnCode;
  set hsnCode(String? hsnCode) => _hsnCode = hsnCode;
  bool? get haveVariant => _haveVariant;
  set haveVariant(bool? haveVariant) => _haveVariant = haveVariant;
  String? get storeId => _storeId;
  set storeId(String? storeId) => _storeId = storeId;
  int get sortOrder => _sortOrder;
  set sortOrder(int sortOrder) => _sortOrder = sortOrder;
  bool? get isOutOfStock => _isOutOfStock;
  set isOutOfStock(bool? isOutOfStock) => _isOutOfStock = isOutOfStock;
  bool? get sampleProduct => _sampleProduct;
  set sampleProduct(bool? sampleProduct) => _sampleProduct = sampleProduct;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  Null? get deletedAt => _deletedAt;
  set deletedAt(Null? deletedAt) => _deletedAt = deletedAt;
  double? get currentStockCount => _currentStockCount;
  set currentStockCount(double? currentStockCount) =>
      _currentStockCount = currentStockCount;
  ProductCategory? get productCategory => _productCategory;
  set productCategory(ProductCategory? productCategory) =>
      _productCategory = productCategory;
  UnitDetail? get unitDetail => _unitDetail;
  set unitDetail(UnitDetail? unitDetail) => _unitDetail = unitDetail;
  Null? get gst => _gst;
  set gst(Null? gst) => _gst = gst;
  List<Variants>? get variants => _variants;
  set variants(List<Variants>? variants) => _variants = variants;

  ProductItemModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _productImage = json['productImage'];
    _productCategoryId = json['productCategoryId'];
    _status = json['status'];
    _mrp = json['mrp'];
    _price = json['price'];
    _unit = json['unit'];
    _unitId = json['unitId'];
    _taxRate = json['taxRate'];
    _taxRateId = json['taxRateId'];
    _hsnCode = json['hsnCode'];
    _haveVariant = json['haveVariant'];
    _storeId = json['storeId'];
    _sortOrder = json['sortOrder'];
    _isOutOfStock = json['isOutOfStock'];
    _sampleProduct = json['sampleProduct'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _currentStockCount = json['currentStockCount'];
    _productCategory = json['productCategory'] != null
        ? new ProductCategory.fromJson(json['productCategory'])
        : null;
    _unitDetail = json['unitDetail'] != null
        ? new UnitDetail.fromJson(json['unitDetail'])
        : null;
    _gst = json['gst'];
    if (json['variants'] != null) {
      _variants = <Variants>[];
      json['variants'].forEach((v) {
        _variants!.add(new Variants.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['description'] = this._description;
    data['productImage'] = this._productImage;
    data['productCategoryId'] = this._productCategoryId;
    data['status'] = this._status;
    data['mrp'] = this._mrp;
    data['price'] = this._price;
    data['unit'] = this._unit;
    data['unitId'] = this._unitId;
    data['taxRate'] = this._taxRate;
    data['taxRateId'] = this._taxRateId;
    data['hsnCode'] = this._hsnCode;
    data['haveVariant'] = this._haveVariant;
    data['storeId'] = this._storeId;
    data['sortOrder'] = this._sortOrder;
    data['isOutOfStock'] = this._isOutOfStock;
    data['sampleProduct'] = this._sampleProduct;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    data['deletedAt'] = this._deletedAt;
    data['currentStockCount'] = this._currentStockCount;
    if (this._productCategory != null) {
      data['productCategory'] = this._productCategory!.toJson();
    }
    if (this._unitDetail != null) {
      data['unitDetail'] = this._unitDetail!.toJson();
    }
    data['gst'] = this._gst;
    if (this._variants != null) {
      data['variants'] = this._variants!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
