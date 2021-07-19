part of 'models.dart';

enum TransactionStatus { deliver, onDelivery, pending, canceled }

class Transaction extends Equatable {
  final int? id;
  final Food? food;
  final int quantity;
  final int total;
  final DateTime dateTime;
  final TransactionStatus? status;
  final User? user;

  Transaction copyWith(
      {int? id,
      Food? food,
      int? quantity,
      int? total,
      DateTime? dateTime,
      TransactionStatus? status,
      User? user}) {
    return Transaction(
      id: id ?? this.id,
      food: food ?? this.food,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
      dateTime: dateTime ?? this.dateTime,
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  Transaction({
    this.id,
    this.food,
    this.quantity = 0,
    this.total = 0,
    required this.dateTime,
    this.status,
    this.user,
  });
  @override
  List<Object?> get props => [
        id,
        food,
        quantity,
        total,
        dateTime,
        status,
        user,
      ];
}

List<Transaction> mockTransaction = [
  Transaction(
    id: 1,
    food: mockFoods[0],
    quantity: 3,
    total: (mockFoods[0].price * 5 * 1.1).round() + 50000,
    dateTime: DateTime.now(),
    status: TransactionStatus.deliver,
    user: mockUser,
  ),
  Transaction(
    id: 2,
    food: mockFoods[1],
    quantity: 3,
    total: (mockFoods[0].price * 2 * 1.1).round() + 50000,
    dateTime: DateTime.now(),
    status: TransactionStatus.canceled,
    user: mockUser,
  ),
];
