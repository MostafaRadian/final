class StatusModel {
  bool status;
  StatusModel({required this.status});
  factory StatusModel.fromjson(Map<String, dynamic> json) {
    return StatusModel(
      status: json['status'],
    );
  }
}
