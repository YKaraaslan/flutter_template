class NetworkResponseModel {
  int? status;
  List<NetworkModel>? data;

  NetworkResponseModel({this.status, this.data});

  NetworkResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <NetworkModel>[];
      json['data'].forEach((v) {
        data!.add(NetworkModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NetworkModel {
  String? eventId;
  String? time;


  NetworkModel(
      {this.eventId,
      this.time});

  NetworkModel.fromJson(Map<String, dynamic> json) {
    eventId = json['eventId'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['eventId'] = eventId;
    data['time'] = time;
    return data;
  }
}