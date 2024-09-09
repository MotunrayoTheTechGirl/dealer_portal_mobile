class CreateDigitalOrderResModel {
  CreateDigitalOrderResModel({
    required this.id,
    required this.totalTaxAmount,
    required this.paymentMethod,
    required this.transactionReference,
    required this.subDealerId,
    required this.dealerId,
    required this.vendorId,
    required this.callback,
    required this.status,
    required this.salesTax,
    required this.total,
    required this.discount,
    required this.paymentId,
    required this.paymentGateway,
    required this.subtotal,
    required this.itemName,
    required this.userId,
    required this.totalHours,
    required this.amount,
    required this.validity,
    required this.productId,
    required this.paymentStatus,
    required this.orderStatus,
    required this.orderType,
    required this.orderItems,
  });

  final int? id;
  final int? totalTaxAmount;
  final String? paymentMethod;
  final String? transactionReference;
  final int? subDealerId;
  final int? dealerId;
  final int? vendorId;
  final dynamic callback;
  final int? status;
  final int? salesTax;
  final String? total;
  final int? discount;
  final dynamic paymentId;
  final dynamic paymentGateway;
  final String? subtotal;
  final dynamic itemName;
  final int? userId;
  final String? totalHours;
  final String? amount;
  final int? validity;
  final dynamic productId;
  final String? paymentStatus;
  final String? orderStatus;
  final String? orderType;
  final List<OrderItem> orderItems;

  factory CreateDigitalOrderResModel.fromJson(Map<String, dynamic> json) {
    return CreateDigitalOrderResModel(
      id: json["id"],
      totalTaxAmount: json["total_tax_amount"],
      paymentMethod: json["payment_method"],
      transactionReference: json["transaction_reference"],
      subDealerId: json["sub_dealer_id"],
      dealerId: json["dealer_id"],
      vendorId: json["vendor_id"],
      callback: json["callback"],
      status: json["status"],
      salesTax: json["sales_tax"],
      total: json["total"],
      discount: json["discount"],
      paymentId: json["payment_id"],
      paymentGateway: json["payment_gateway"],
      subtotal: json["subtotal"],
      itemName: json["item_name"],
      userId: json["userId"],
      totalHours: json["total_hours"],
      amount: json["amount"],
      validity: json["validity"],
      productId: json["product_id"],
      paymentStatus: json["payment_status"],
      orderStatus: json["order_status"],
      orderType: json["order_type"],
      orderItems: json["order_items"] == null
          ? []
          : List<OrderItem>.from(
              json["order_items"]!.map((x) => OrderItem.fromJson(x))),
    );
  }
}

class OrderItem {
  OrderItem({
    required this.id,
    required this.productId,
    required this.orderQuantity,
    required this.unitPrice,
    required this.subtotal,
    required this.orderId,
    required this.vendorId,
    required this.dealerId,
    required this.subDealer,
    required this.discount,
    required this.validity,
    required this.itemName,
    required this.totalHours,
  });

  final int? id;
  final int? productId;
  final int? orderQuantity;
  final String? unitPrice;
  final String? subtotal;
  final int? orderId;
  final int? vendorId;
  final int? dealerId;
  final int? subDealer;
  final dynamic discount;
  final int? validity;
  final String? itemName;
  final String? totalHours;

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      id: json["id"],
      productId: json["product_id"],
      orderQuantity: json["order_quantity"],
      unitPrice: json["unit_price"],
      subtotal: json["subtotal"],
      orderId: json["orderId"],
      vendorId: json["vendor_id"],
      dealerId: json["dealer_id"],
      subDealer: json["sub_dealer"],
      discount: json["discount"],
      validity: json["validity"],
      itemName: json["item_name"],
      totalHours: json["total_hours"],
    );
  }
}
