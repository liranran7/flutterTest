class AppItemInfo {
    int appId;
    String downloadUrl;
    int groupId;
    String groupName;
    String iconUrl;
    String linkUrl;
    String name;
    int orderId;
    Object shortCutAppNewFlagInfo;
    int version;

    AppItemInfo({this.appId, this.downloadUrl, this.groupId, this.groupName, this.iconUrl, this.linkUrl, this.name, this.orderId, this.shortCutAppNewFlagInfo, this.version});

    factory AppItemInfo.fromJson(Map<String, dynamic> json) {
        return AppItemInfo(
            appId: json['appId'],
            downloadUrl: json['downloadUrl'],
            groupId: json['groupId'],
            groupName: json['groupName'],
            iconUrl: json['iconUrl'],
            linkUrl: json['linkUrl'],
            name: json['name'],
            orderId: json['orderId'],
//            shortCutAppNewFlagInfo: json['shortCutAppNewFlagInfo'] != null ? Object.fromJson(json['shortCutAppNewFlagInfo']) : null,
            version: json['version'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['appId'] = this.appId;
        data['downloadUrl'] = this.downloadUrl;
        data['groupId'] = this.groupId;
        data['groupName'] = this.groupName;
        data['iconUrl'] = this.iconUrl;
        data['linkUrl'] = this.linkUrl;
        data['name'] = this.name;
        data['orderId'] = this.orderId;
        data['version'] = this.version;
//        if (this.shortCutAppNewFlagInfo != null) {
//            data['shortCutAppNewFlagInfo'] = this.shortCutAppNewFlagInfo.toJson();
//        }
        return data;
    }
}
