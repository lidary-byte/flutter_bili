import 'package:flutter_bili/generated/json/base/json_convert_content.dart';
import 'package:flutter_bili/http/entity/live_recommend_entity.dart';

LiveRecommendEntity $LiveRecommendEntityFromJson(Map<String, dynamic> json) {
  final LiveRecommendEntity liveRecommendEntity = LiveRecommendEntity();
  final List<LiveRecommendList>? list = (json['list'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<LiveRecommendList>(e) as LiveRecommendList)
      .toList();
  if (list != null) {
    liveRecommendEntity.list = list;
  }
  final int? hasMore = jsonConvert.convert<int>(json['has_more']);
  if (hasMore != null) {
    liveRecommendEntity.hasMore = hasMore;
  }
  return liveRecommendEntity;
}

Map<String, dynamic> $LiveRecommendEntityToJson(LiveRecommendEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['list'] = entity.list?.map((v) => v.toJson()).toList();
  data['has_more'] = entity.hasMore;
  return data;
}

extension LiveRecommendEntityExtension on LiveRecommendEntity {
  LiveRecommendEntity copyWith({
    List<LiveRecommendList>? list,
    int? hasMore,
  }) {
    return LiveRecommendEntity()
      ..list = list ?? this.list
      ..hasMore = hasMore ?? this.hasMore;
  }
}

LiveRecommendList $LiveRecommendListFromJson(Map<String, dynamic> json) {
  final LiveRecommendList liveRecommendList = LiveRecommendList();
  final int? roomid = jsonConvert.convert<int>(json['roomid']);
  if (roomid != null) {
    liveRecommendList.roomid = roomid;
  }
  final int? uid = jsonConvert.convert<int>(json['uid']);
  if (uid != null) {
    liveRecommendList.uid = uid;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    liveRecommendList.title = title;
  }
  final String? uname = jsonConvert.convert<String>(json['uname']);
  if (uname != null) {
    liveRecommendList.uname = uname;
  }
  final int? online = jsonConvert.convert<int>(json['online']);
  if (online != null) {
    liveRecommendList.online = online;
  }
  final String? userCover = jsonConvert.convert<String>(json['user_cover']);
  if (userCover != null) {
    liveRecommendList.userCover = userCover;
  }
  final int? userCoverFlag = jsonConvert.convert<int>(json['user_cover_flag']);
  if (userCoverFlag != null) {
    liveRecommendList.userCoverFlag = userCoverFlag;
  }
  final String? systemCover = jsonConvert.convert<String>(json['system_cover']);
  if (systemCover != null) {
    liveRecommendList.systemCover = systemCover;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    liveRecommendList.cover = cover;
  }
  final String? showCover = jsonConvert.convert<String>(json['show_cover']);
  if (showCover != null) {
    liveRecommendList.showCover = showCover;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    liveRecommendList.link = link;
  }
  final String? face = jsonConvert.convert<String>(json['face']);
  if (face != null) {
    liveRecommendList.face = face;
  }
  final int? parentId = jsonConvert.convert<int>(json['parent_id']);
  if (parentId != null) {
    liveRecommendList.parentId = parentId;
  }
  final String? parentName = jsonConvert.convert<String>(json['parent_name']);
  if (parentName != null) {
    liveRecommendList.parentName = parentName;
  }
  final int? areaId = jsonConvert.convert<int>(json['area_id']);
  if (areaId != null) {
    liveRecommendList.areaId = areaId;
  }
  final String? areaName = jsonConvert.convert<String>(json['area_name']);
  if (areaName != null) {
    liveRecommendList.areaName = areaName;
  }
  final int? areaV2ParentId =
      jsonConvert.convert<int>(json['area_v2_parent_id']);
  if (areaV2ParentId != null) {
    liveRecommendList.areaV2ParentId = areaV2ParentId;
  }
  final String? areaV2ParentName =
      jsonConvert.convert<String>(json['area_v2_parent_name']);
  if (areaV2ParentName != null) {
    liveRecommendList.areaV2ParentName = areaV2ParentName;
  }
  final int? areaV2Id = jsonConvert.convert<int>(json['area_v2_id']);
  if (areaV2Id != null) {
    liveRecommendList.areaV2Id = areaV2Id;
  }
  final String? areaV2Name = jsonConvert.convert<String>(json['area_v2_name']);
  if (areaV2Name != null) {
    liveRecommendList.areaV2Name = areaV2Name;
  }
  final String? sessionId = jsonConvert.convert<String>(json['session_id']);
  if (sessionId != null) {
    liveRecommendList.sessionId = sessionId;
  }
  final int? groupId = jsonConvert.convert<int>(json['group_id']);
  if (groupId != null) {
    liveRecommendList.groupId = groupId;
  }
  final String? showCallback =
      jsonConvert.convert<String>(json['show_callback']);
  if (showCallback != null) {
    liveRecommendList.showCallback = showCallback;
  }
  final String? clickCallback =
      jsonConvert.convert<String>(json['click_callback']);
  if (clickCallback != null) {
    liveRecommendList.clickCallback = clickCallback;
  }
  final String? webPendent = jsonConvert.convert<String>(json['web_pendent']);
  if (webPendent != null) {
    liveRecommendList.webPendent = webPendent;
  }
  final int? pkId = jsonConvert.convert<int>(json['pk_id']);
  if (pkId != null) {
    liveRecommendList.pkId = pkId;
  }
  final LiveRecommendListPendantInfo? pendantInfo =
      jsonConvert.convert<LiveRecommendListPendantInfo>(json['pendant_info']);
  if (pendantInfo != null) {
    liveRecommendList.pendantInfo = pendantInfo;
  }
  final LiveRecommendListVerify? verify =
      jsonConvert.convert<LiveRecommendListVerify>(json['verify']);
  if (verify != null) {
    liveRecommendList.verify = verify;
  }
  final LiveRecommendListHeadBox? headBox =
      jsonConvert.convert<LiveRecommendListHeadBox>(json['head_box']);
  if (headBox != null) {
    liveRecommendList.headBox = headBox;
  }
  final int? headBoxType = jsonConvert.convert<int>(json['head_box_type']);
  if (headBoxType != null) {
    liveRecommendList.headBoxType = headBoxType;
  }
  final int? isAutoPlay = jsonConvert.convert<int>(json['is_auto_play']);
  if (isAutoPlay != null) {
    liveRecommendList.isAutoPlay = isAutoPlay;
  }
  final int? flag = jsonConvert.convert<int>(json['flag']);
  if (flag != null) {
    liveRecommendList.flag = flag;
  }
  final LiveRecommendListWatchedShow? watchedShow =
      jsonConvert.convert<LiveRecommendListWatchedShow>(json['watched_show']);
  if (watchedShow != null) {
    liveRecommendList.watchedShow = watchedShow;
  }
  final int? isNft = jsonConvert.convert<int>(json['is_nft']);
  if (isNft != null) {
    liveRecommendList.isNft = isNft;
  }
  final String? nftDmark = jsonConvert.convert<String>(json['nft_dmark']);
  if (nftDmark != null) {
    liveRecommendList.nftDmark = nftDmark;
  }
  final dynamic playTogetherGoods = json['play_together_goods'];
  if (playTogetherGoods != null) {
    liveRecommendList.playTogetherGoods = playTogetherGoods;
  }
  return liveRecommendList;
}

Map<String, dynamic> $LiveRecommendListToJson(LiveRecommendList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['roomid'] = entity.roomid;
  data['uid'] = entity.uid;
  data['title'] = entity.title;
  data['uname'] = entity.uname;
  data['online'] = entity.online;
  data['user_cover'] = entity.userCover;
  data['user_cover_flag'] = entity.userCoverFlag;
  data['system_cover'] = entity.systemCover;
  data['cover'] = entity.cover;
  data['show_cover'] = entity.showCover;
  data['link'] = entity.link;
  data['face'] = entity.face;
  data['parent_id'] = entity.parentId;
  data['parent_name'] = entity.parentName;
  data['area_id'] = entity.areaId;
  data['area_name'] = entity.areaName;
  data['area_v2_parent_id'] = entity.areaV2ParentId;
  data['area_v2_parent_name'] = entity.areaV2ParentName;
  data['area_v2_id'] = entity.areaV2Id;
  data['area_v2_name'] = entity.areaV2Name;
  data['session_id'] = entity.sessionId;
  data['group_id'] = entity.groupId;
  data['show_callback'] = entity.showCallback;
  data['click_callback'] = entity.clickCallback;
  data['web_pendent'] = entity.webPendent;
  data['pk_id'] = entity.pkId;
  data['pendant_info'] = entity.pendantInfo?.toJson();
  data['verify'] = entity.verify?.toJson();
  data['head_box'] = entity.headBox?.toJson();
  data['head_box_type'] = entity.headBoxType;
  data['is_auto_play'] = entity.isAutoPlay;
  data['flag'] = entity.flag;
  data['watched_show'] = entity.watchedShow?.toJson();
  data['is_nft'] = entity.isNft;
  data['nft_dmark'] = entity.nftDmark;
  data['play_together_goods'] = entity.playTogetherGoods;
  return data;
}

extension LiveRecommendListExtension on LiveRecommendList {
  LiveRecommendList copyWith({
    int? roomid,
    int? uid,
    String? title,
    String? uname,
    int? online,
    String? userCover,
    int? userCoverFlag,
    String? systemCover,
    String? cover,
    String? showCover,
    String? link,
    String? face,
    int? parentId,
    String? parentName,
    int? areaId,
    String? areaName,
    int? areaV2ParentId,
    String? areaV2ParentName,
    int? areaV2Id,
    String? areaV2Name,
    String? sessionId,
    int? groupId,
    String? showCallback,
    String? clickCallback,
    String? webPendent,
    int? pkId,
    LiveRecommendListPendantInfo? pendantInfo,
    LiveRecommendListVerify? verify,
    LiveRecommendListHeadBox? headBox,
    int? headBoxType,
    int? isAutoPlay,
    int? flag,
    LiveRecommendListWatchedShow? watchedShow,
    int? isNft,
    String? nftDmark,
    dynamic playTogetherGoods,
  }) {
    return LiveRecommendList()
      ..roomid = roomid ?? this.roomid
      ..uid = uid ?? this.uid
      ..title = title ?? this.title
      ..uname = uname ?? this.uname
      ..online = online ?? this.online
      ..userCover = userCover ?? this.userCover
      ..userCoverFlag = userCoverFlag ?? this.userCoverFlag
      ..systemCover = systemCover ?? this.systemCover
      ..cover = cover ?? this.cover
      ..showCover = showCover ?? this.showCover
      ..link = link ?? this.link
      ..face = face ?? this.face
      ..parentId = parentId ?? this.parentId
      ..parentName = parentName ?? this.parentName
      ..areaId = areaId ?? this.areaId
      ..areaName = areaName ?? this.areaName
      ..areaV2ParentId = areaV2ParentId ?? this.areaV2ParentId
      ..areaV2ParentName = areaV2ParentName ?? this.areaV2ParentName
      ..areaV2Id = areaV2Id ?? this.areaV2Id
      ..areaV2Name = areaV2Name ?? this.areaV2Name
      ..sessionId = sessionId ?? this.sessionId
      ..groupId = groupId ?? this.groupId
      ..showCallback = showCallback ?? this.showCallback
      ..clickCallback = clickCallback ?? this.clickCallback
      ..webPendent = webPendent ?? this.webPendent
      ..pkId = pkId ?? this.pkId
      ..pendantInfo = pendantInfo ?? this.pendantInfo
      ..verify = verify ?? this.verify
      ..headBox = headBox ?? this.headBox
      ..headBoxType = headBoxType ?? this.headBoxType
      ..isAutoPlay = isAutoPlay ?? this.isAutoPlay
      ..flag = flag ?? this.flag
      ..watchedShow = watchedShow ?? this.watchedShow
      ..isNft = isNft ?? this.isNft
      ..nftDmark = nftDmark ?? this.nftDmark
      ..playTogetherGoods = playTogetherGoods ?? this.playTogetherGoods;
  }
}

LiveRecommendListPendantInfo $LiveRecommendListPendantInfoFromJson(
    Map<String, dynamic> json) {
  final LiveRecommendListPendantInfo liveRecommendListPendantInfo =
      LiveRecommendListPendantInfo();
  final LiveRecommendListPendantInfo2? info2 =
      jsonConvert.convert<LiveRecommendListPendantInfo2>(json['2']);
  if (info2 != null) {
    liveRecommendListPendantInfo.info2 = info2;
  }
  return liveRecommendListPendantInfo;
}

Map<String, dynamic> $LiveRecommendListPendantInfoToJson(
    LiveRecommendListPendantInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension LiveRecommendListPendantInfoExtension
    on LiveRecommendListPendantInfo {}

LiveRecommendListPendantInfo2 $LiveRecommendListPendantInfo2FromJson(
    Map<String, dynamic> json) {
  final LiveRecommendListPendantInfo2 liveRecommendListPendantInfo2 =
      LiveRecommendListPendantInfo2();
  final int? pendentId = jsonConvert.convert<int>(json['pendent_id']);
  if (pendentId != null) {
    liveRecommendListPendantInfo2.pendentId = pendentId;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    liveRecommendListPendantInfo2.content = content;
  }
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    liveRecommendListPendantInfo2.color = color;
  }
  final String? pic = jsonConvert.convert<String>(json['pic']);
  if (pic != null) {
    liveRecommendListPendantInfo2.pic = pic;
  }
  final int? position = jsonConvert.convert<int>(json['position']);
  if (position != null) {
    liveRecommendListPendantInfo2.position = position;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    liveRecommendListPendantInfo2.type = type;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    liveRecommendListPendantInfo2.name = name;
  }
  return liveRecommendListPendantInfo2;
}

Map<String, dynamic> $LiveRecommendListPendantInfo2ToJson(
    LiveRecommendListPendantInfo2 entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['pendent_id'] = entity.pendentId;
  data['content'] = entity.content;
  data['color'] = entity.color;
  data['pic'] = entity.pic;
  data['position'] = entity.position;
  data['type'] = entity.type;
  data['name'] = entity.name;
  return data;
}

extension LiveRecommendListPendantInfo2Extension
    on LiveRecommendListPendantInfo2 {
  LiveRecommendListPendantInfo2 copyWith({
    int? pendentId,
    String? content,
    String? color,
    String? pic,
    int? position,
    String? type,
    String? name,
  }) {
    return LiveRecommendListPendantInfo2()
      ..pendentId = pendentId ?? this.pendentId
      ..content = content ?? this.content
      ..color = color ?? this.color
      ..pic = pic ?? this.pic
      ..position = position ?? this.position
      ..type = type ?? this.type
      ..name = name ?? this.name;
  }
}

LiveRecommendListVerify $LiveRecommendListVerifyFromJson(
    Map<String, dynamic> json) {
  final LiveRecommendListVerify liveRecommendListVerify =
      LiveRecommendListVerify();
  final int? role = jsonConvert.convert<int>(json['role']);
  if (role != null) {
    liveRecommendListVerify.role = role;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    liveRecommendListVerify.desc = desc;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    liveRecommendListVerify.type = type;
  }
  return liveRecommendListVerify;
}

Map<String, dynamic> $LiveRecommendListVerifyToJson(
    LiveRecommendListVerify entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['role'] = entity.role;
  data['desc'] = entity.desc;
  data['type'] = entity.type;
  return data;
}

extension LiveRecommendListVerifyExtension on LiveRecommendListVerify {
  LiveRecommendListVerify copyWith({
    int? role,
    String? desc,
    int? type,
  }) {
    return LiveRecommendListVerify()
      ..role = role ?? this.role
      ..desc = desc ?? this.desc
      ..type = type ?? this.type;
  }
}

LiveRecommendListHeadBox $LiveRecommendListHeadBoxFromJson(
    Map<String, dynamic> json) {
  final LiveRecommendListHeadBox liveRecommendListHeadBox =
      LiveRecommendListHeadBox();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    liveRecommendListHeadBox.name = name;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    liveRecommendListHeadBox.value = value;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    liveRecommendListHeadBox.desc = desc;
  }
  return liveRecommendListHeadBox;
}

Map<String, dynamic> $LiveRecommendListHeadBoxToJson(
    LiveRecommendListHeadBox entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['value'] = entity.value;
  data['desc'] = entity.desc;
  return data;
}

extension LiveRecommendListHeadBoxExtension on LiveRecommendListHeadBox {
  LiveRecommendListHeadBox copyWith({
    String? name,
    String? value,
    String? desc,
  }) {
    return LiveRecommendListHeadBox()
      ..name = name ?? this.name
      ..value = value ?? this.value
      ..desc = desc ?? this.desc;
  }
}

LiveRecommendListWatchedShow $LiveRecommendListWatchedShowFromJson(
    Map<String, dynamic> json) {
  final LiveRecommendListWatchedShow liveRecommendListWatchedShow =
      LiveRecommendListWatchedShow();
  final bool? switchBoolean = jsonConvert.convert<bool>(json['switch']);
  if (switchBoolean != null) {
    liveRecommendListWatchedShow.switchBoolean = switchBoolean;
  }
  final int? num = jsonConvert.convert<int>(json['num']);
  if (num != null) {
    liveRecommendListWatchedShow.num = num;
  }
  final String? textSmall = jsonConvert.convert<String>(json['text_small']);
  if (textSmall != null) {
    liveRecommendListWatchedShow.textSmall = textSmall;
  }
  final String? textLarge = jsonConvert.convert<String>(json['text_large']);
  if (textLarge != null) {
    liveRecommendListWatchedShow.textLarge = textLarge;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    liveRecommendListWatchedShow.icon = icon;
  }
  final int? iconLocation = jsonConvert.convert<int>(json['icon_location']);
  if (iconLocation != null) {
    liveRecommendListWatchedShow.iconLocation = iconLocation;
  }
  final String? iconWeb = jsonConvert.convert<String>(json['icon_web']);
  if (iconWeb != null) {
    liveRecommendListWatchedShow.iconWeb = iconWeb;
  }
  return liveRecommendListWatchedShow;
}

Map<String, dynamic> $LiveRecommendListWatchedShowToJson(
    LiveRecommendListWatchedShow entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['num'] = entity.num;
  data['text_small'] = entity.textSmall;
  data['text_large'] = entity.textLarge;
  data['icon'] = entity.icon;
  data['icon_location'] = entity.iconLocation;
  data['icon_web'] = entity.iconWeb;
  return data;
}

extension LiveRecommendListWatchedShowExtension
    on LiveRecommendListWatchedShow {
  LiveRecommendListWatchedShow copyWith({
    int? num,
    String? textSmall,
    String? textLarge,
    String? icon,
    int? iconLocation,
    String? iconWeb,
  }) {
    return LiveRecommendListWatchedShow()
      ..num = num ?? this.num
      ..textSmall = textSmall ?? this.textSmall
      ..textLarge = textLarge ?? this.textLarge
      ..icon = icon ?? this.icon
      ..iconLocation = iconLocation ?? this.iconLocation
      ..iconWeb = iconWeb ?? this.iconWeb;
  }
}
