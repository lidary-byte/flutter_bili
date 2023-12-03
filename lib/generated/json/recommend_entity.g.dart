import 'package:flutter_bili/generated/json/base/json_convert_content.dart';
import 'package:flutter_bili/http/entity/recommend_entity.dart';

RecommendEntity $RecommendEntityFromJson(Map<String, dynamic> json) {
  final RecommendEntity recommendEntity = RecommendEntity();
  final List<RecommendItem>? item = (json['item'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<RecommendItem>(e) as RecommendItem)
      .toList();
  if (item != null) {
    recommendEntity.item = item;
  }
  final dynamic sideBarColumn = json['side_bar_column'];
  if (sideBarColumn != null) {
    recommendEntity.sideBarColumn = sideBarColumn;
  }
  final dynamic businessCard = json['business_card'];
  if (businessCard != null) {
    recommendEntity.businessCard = businessCard;
  }
  final dynamic floorInfo = json['floor_info'];
  if (floorInfo != null) {
    recommendEntity.floorInfo = floorInfo;
  }
  final dynamic userFeature = json['user_feature'];
  if (userFeature != null) {
    recommendEntity.userFeature = userFeature;
  }
  final RecommendAbtest? abtest = jsonConvert.convert<RecommendAbtest>(
      json['abtest']);
  if (abtest != null) {
    recommendEntity.abtest = abtest;
  }
  final int? preloadExposePct = jsonConvert.convert<int>(
      json['preload_expose_pct']);
  if (preloadExposePct != null) {
    recommendEntity.preloadExposePct = preloadExposePct;
  }
  final int? preloadFloorExposePct = jsonConvert.convert<int>(
      json['preload_floor_expose_pct']);
  if (preloadFloorExposePct != null) {
    recommendEntity.preloadFloorExposePct = preloadFloorExposePct;
  }
  final int? mid = jsonConvert.convert<int>(json['mid']);
  if (mid != null) {
    recommendEntity.mid = mid;
  }
  return recommendEntity;
}

Map<String, dynamic> $RecommendEntityToJson(RecommendEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['item'] = entity.item?.map((v) => v.toJson()).toList();
  data['side_bar_column'] = entity.sideBarColumn;
  data['business_card'] = entity.businessCard;
  data['floor_info'] = entity.floorInfo;
  data['user_feature'] = entity.userFeature;
  data['abtest'] = entity.abtest?.toJson();
  data['preload_expose_pct'] = entity.preloadExposePct;
  data['preload_floor_expose_pct'] = entity.preloadFloorExposePct;
  data['mid'] = entity.mid;
  return data;
}

extension RecommendEntityExtension on RecommendEntity {
  RecommendEntity copyWith({
    List<RecommendItem>? item,
    dynamic sideBarColumn,
    dynamic businessCard,
    dynamic floorInfo,
    dynamic userFeature,
    RecommendAbtest? abtest,
    int? preloadExposePct,
    int? preloadFloorExposePct,
    int? mid,
  }) {
    return RecommendEntity()
      ..item = item ?? this.item
      ..sideBarColumn = sideBarColumn ?? this.sideBarColumn
      ..businessCard = businessCard ?? this.businessCard
      ..floorInfo = floorInfo ?? this.floorInfo
      ..userFeature = userFeature ?? this.userFeature
      ..abtest = abtest ?? this.abtest
      ..preloadExposePct = preloadExposePct ?? this.preloadExposePct
      ..preloadFloorExposePct = preloadFloorExposePct ??
          this.preloadFloorExposePct
      ..mid = mid ?? this.mid;
  }
}

RecommendItem $RecommendItemFromJson(Map<String, dynamic> json) {
  final RecommendItem recommendItem = RecommendItem();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    recommendItem.id = id;
  }
  final String? bvid = jsonConvert.convert<String>(json['bvid']);
  if (bvid != null) {
    recommendItem.bvid = bvid;
  }
  final int? cid = jsonConvert.convert<int>(json['cid']);
  if (cid != null) {
    recommendItem.cid = cid;
  }
  final String? goto = jsonConvert.convert<String>(json['goto']);
  if (goto != null) {
    recommendItem.goto = goto;
  }
  final String? uri = jsonConvert.convert<String>(json['uri']);
  if (uri != null) {
    recommendItem.uri = uri;
  }
  final String? pic = jsonConvert.convert<String>(json['pic']);
  if (pic != null) {
    recommendItem.pic = pic;
  }
  final String? pic43 = jsonConvert.convert<String>(json['pic_4_3']);
  if (pic43 != null) {
    recommendItem.pic43 = pic43;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    recommendItem.title = title;
  }
  final int? duration = jsonConvert.convert<int>(json['duration']);
  if (duration != null) {
    recommendItem.duration = duration;
  }
  final int? pubdate = jsonConvert.convert<int>(json['pubdate']);
  if (pubdate != null) {
    recommendItem.pubdate = pubdate;
  }
  final RecommendItemOwner? owner = jsonConvert.convert<RecommendItemOwner>(
      json['owner']);
  if (owner != null) {
    recommendItem.owner = owner;
  }
  final RecommendItemStat? stat = jsonConvert.convert<RecommendItemStat>(
      json['stat']);
  if (stat != null) {
    recommendItem.stat = stat;
  }
  final dynamic avFeature = json['av_feature'];
  if (avFeature != null) {
    recommendItem.avFeature = avFeature;
  }
  final int? isFollowed = jsonConvert.convert<int>(json['is_followed']);
  if (isFollowed != null) {
    recommendItem.isFollowed = isFollowed;
  }
  final RecommendItemRcmdReason? rcmdReason = jsonConvert.convert<
      RecommendItemRcmdReason>(json['rcmd_reason']);
  if (rcmdReason != null) {
    recommendItem.rcmdReason = rcmdReason;
  }
  final int? showInfo = jsonConvert.convert<int>(json['show_info']);
  if (showInfo != null) {
    recommendItem.showInfo = showInfo;
  }
  final String? trackId = jsonConvert.convert<String>(json['track_id']);
  if (trackId != null) {
    recommendItem.trackId = trackId;
  }
  final int? pos = jsonConvert.convert<int>(json['pos']);
  if (pos != null) {
    recommendItem.pos = pos;
  }
  final dynamic roomInfo = json['room_info'];
  if (roomInfo != null) {
    recommendItem.roomInfo = roomInfo;
  }
  final dynamic ogvInfo = json['ogv_info'];
  if (ogvInfo != null) {
    recommendItem.ogvInfo = ogvInfo;
  }
  final dynamic businessInfo = json['business_info'];
  if (businessInfo != null) {
    recommendItem.businessInfo = businessInfo;
  }
  final int? isStock = jsonConvert.convert<int>(json['is_stock']);
  if (isStock != null) {
    recommendItem.isStock = isStock;
  }
  final int? enableVt = jsonConvert.convert<int>(json['enable_vt']);
  if (enableVt != null) {
    recommendItem.enableVt = enableVt;
  }
  final String? vtDisplay = jsonConvert.convert<String>(json['vt_display']);
  if (vtDisplay != null) {
    recommendItem.vtDisplay = vtDisplay;
  }
  return recommendItem;
}

Map<String, dynamic> $RecommendItemToJson(RecommendItem entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['bvid'] = entity.bvid;
  data['cid'] = entity.cid;
  data['goto'] = entity.goto;
  data['uri'] = entity.uri;
  data['pic'] = entity.pic;
  data['pic_4_3'] = entity.pic43;
  data['title'] = entity.title;
  data['duration'] = entity.duration;
  data['pubdate'] = entity.pubdate;
  data['owner'] = entity.owner?.toJson();
  data['stat'] = entity.stat?.toJson();
  data['av_feature'] = entity.avFeature;
  data['is_followed'] = entity.isFollowed;
  data['rcmd_reason'] = entity.rcmdReason?.toJson();
  data['show_info'] = entity.showInfo;
  data['track_id'] = entity.trackId;
  data['pos'] = entity.pos;
  data['room_info'] = entity.roomInfo;
  data['ogv_info'] = entity.ogvInfo;
  data['business_info'] = entity.businessInfo;
  data['is_stock'] = entity.isStock;
  data['enable_vt'] = entity.enableVt;
  data['vt_display'] = entity.vtDisplay;
  return data;
}

extension RecommendItemExtension on RecommendItem {
  RecommendItem copyWith({
    int? id,
    String? bvid,
    int? cid,
    String? goto,
    String? uri,
    String? pic,
    String? pic43,
    String? title,
    int? duration,
    int? pubdate,
    RecommendItemOwner? owner,
    RecommendItemStat? stat,
    dynamic avFeature,
    int? isFollowed,
    RecommendItemRcmdReason? rcmdReason,
    int? showInfo,
    String? trackId,
    int? pos,
    dynamic roomInfo,
    dynamic ogvInfo,
    dynamic businessInfo,
    int? isStock,
    int? enableVt,
    String? vtDisplay,
  }) {
    return RecommendItem()
      ..id = id ?? this.id
      ..bvid = bvid ?? this.bvid
      ..cid = cid ?? this.cid
      ..goto = goto ?? this.goto
      ..uri = uri ?? this.uri
      ..pic = pic ?? this.pic
      ..pic43 = pic43 ?? this.pic43
      ..title = title ?? this.title
      ..duration = duration ?? this.duration
      ..pubdate = pubdate ?? this.pubdate
      ..owner = owner ?? this.owner
      ..stat = stat ?? this.stat
      ..avFeature = avFeature ?? this.avFeature
      ..isFollowed = isFollowed ?? this.isFollowed
      ..rcmdReason = rcmdReason ?? this.rcmdReason
      ..showInfo = showInfo ?? this.showInfo
      ..trackId = trackId ?? this.trackId
      ..pos = pos ?? this.pos
      ..roomInfo = roomInfo ?? this.roomInfo
      ..ogvInfo = ogvInfo ?? this.ogvInfo
      ..businessInfo = businessInfo ?? this.businessInfo
      ..isStock = isStock ?? this.isStock
      ..enableVt = enableVt ?? this.enableVt
      ..vtDisplay = vtDisplay ?? this.vtDisplay;
  }
}

RecommendItemOwner $RecommendItemOwnerFromJson(Map<String, dynamic> json) {
  final RecommendItemOwner recommendItemOwner = RecommendItemOwner();
  final int? mid = jsonConvert.convert<int>(json['mid']);
  if (mid != null) {
    recommendItemOwner.mid = mid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    recommendItemOwner.name = name;
  }
  final String? face = jsonConvert.convert<String>(json['face']);
  if (face != null) {
    recommendItemOwner.face = face;
  }
  return recommendItemOwner;
}

Map<String, dynamic> $RecommendItemOwnerToJson(RecommendItemOwner entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mid'] = entity.mid;
  data['name'] = entity.name;
  data['face'] = entity.face;
  return data;
}

extension RecommendItemOwnerExtension on RecommendItemOwner {
  RecommendItemOwner copyWith({
    int? mid,
    String? name,
    String? face,
  }) {
    return RecommendItemOwner()
      ..mid = mid ?? this.mid
      ..name = name ?? this.name
      ..face = face ?? this.face;
  }
}

RecommendItemStat $RecommendItemStatFromJson(Map<String, dynamic> json) {
  final RecommendItemStat recommendItemStat = RecommendItemStat();
  final int? view = jsonConvert.convert<int>(json['view']);
  if (view != null) {
    recommendItemStat.view = view;
  }
  final int? like = jsonConvert.convert<int>(json['like']);
  if (like != null) {
    recommendItemStat.like = like;
  }
  final int? danmaku = jsonConvert.convert<int>(json['danmaku']);
  if (danmaku != null) {
    recommendItemStat.danmaku = danmaku;
  }
  final int? vt = jsonConvert.convert<int>(json['vt']);
  if (vt != null) {
    recommendItemStat.vt = vt;
  }
  return recommendItemStat;
}

Map<String, dynamic> $RecommendItemStatToJson(RecommendItemStat entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['view'] = entity.view;
  data['like'] = entity.like;
  data['danmaku'] = entity.danmaku;
  data['vt'] = entity.vt;
  return data;
}

extension RecommendItemStatExtension on RecommendItemStat {
  RecommendItemStat copyWith({
    int? view,
    int? like,
    int? danmaku,
    int? vt,
  }) {
    return RecommendItemStat()
      ..view = view ?? this.view
      ..like = like ?? this.like
      ..danmaku = danmaku ?? this.danmaku
      ..vt = vt ?? this.vt;
  }
}

RecommendItemRcmdReason $RecommendItemRcmdReasonFromJson(
    Map<String, dynamic> json) {
  final RecommendItemRcmdReason recommendItemRcmdReason = RecommendItemRcmdReason();
  final int? reasonType = jsonConvert.convert<int>(json['reason_type']);
  if (reasonType != null) {
    recommendItemRcmdReason.reasonType = reasonType;
  }
  return recommendItemRcmdReason;
}

Map<String, dynamic> $RecommendItemRcmdReasonToJson(
    RecommendItemRcmdReason entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['reason_type'] = entity.reasonType;
  return data;
}

extension RecommendItemRcmdReasonExtension on RecommendItemRcmdReason {
  RecommendItemRcmdReason copyWith({
    int? reasonType,
  }) {
    return RecommendItemRcmdReason()
      ..reasonType = reasonType ?? this.reasonType;
  }
}

RecommendAbtest $RecommendAbtestFromJson(Map<String, dynamic> json) {
  final RecommendAbtest recommendAbtest = RecommendAbtest();
  final String? group = jsonConvert.convert<String>(json['group']);
  if (group != null) {
    recommendAbtest.group = group;
  }
  return recommendAbtest;
}

Map<String, dynamic> $RecommendAbtestToJson(RecommendAbtest entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['group'] = entity.group;
  return data;
}

extension RecommendAbtestExtension on RecommendAbtest {
  RecommendAbtest copyWith({
    String? group,
  }) {
    return RecommendAbtest()
      ..group = group ?? this.group;
  }
}