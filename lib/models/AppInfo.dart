import 'AppItemInfo.dart';
class AppInfo {
    List<AppItemInfo> data;
    int code;
    Object message;
    String status;

    AppInfo({this.data, this.code, this.message, this.status});

    factory AppInfo.fromJson(Map<String, dynamic> json) {
        return AppInfo(
            data: json['`data`'] != null ? (json['`data`'] as List).map((i) => AppItemInfo.fromJson(i)).toList() : null,
            code: json['code'],
//            message: json['message'] != null ? Object.fromJson(json['message']) : null,
            status: json['status'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['status'] = this.status;
        if (this.data!= null) {
            data['`data`'] = this.data.map((v) => v.toJson()).toList();
        }
//        if (this.message != null) {
//            data['message'] = this.message.toJson();
//        }
        return data;
    }
}
