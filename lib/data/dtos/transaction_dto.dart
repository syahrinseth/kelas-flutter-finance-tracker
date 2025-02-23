class TransactionDTO {
  final int id;
  final double amount;
  final String? description;
  final String category;
  final DateTime date;
  final String type; // 'income' or 'expense'

  TransactionDTO({
    required this.id,
    required this.amount,
    required this.description,
    required this.category,
    required this.date,
    required this.type,
  });

  // Convert DTO to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'description': description,
      'category': category,
      'date': date.toIso8601String(),
      'type': type,
    };
  }

  // Create DTO from JSON
  factory TransactionDTO.fromJson(Map<String, dynamic> json) {
    return TransactionDTO(
      id: json['id'],
      amount: json['amount'],
      description: json['description'],
      category: json['category'],
      date: DateTime.parse(json['date']),
      type: json['type'],
    );
  }

  // Copy with method for immutability
  TransactionDTO copyWith({
    int? id,
    double? amount,
    String? description,
    String? category,
    DateTime? date,
    String? type,
  }) {
    return TransactionDTO(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      category: category ?? this.category,
      date: date ?? this.date,
      type: type ?? this.type,
    );
  }
}
