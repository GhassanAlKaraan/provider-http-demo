class DataModel {
  final String title;
  final String body;

  DataModel({required this.title, required this.body});

  // To take JSON code, decode it and return an object.
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(title: json['title'] ?? "", body: json['body'] ?? "");
  }
}
