import 'package:flutter_bili/generated/json/base/json_field.dart';
import 'package:flutter_bili/generated/json/recommend_entity.g.dart';
import 'dart:convert';
export 'package:flutter_bili/generated/json/recommend_entity.g.dart';

@JsonSerializable()
class RecommendEntity {
	List<RecommendItem>? item;
	@JSONField(name: "side_bar_column")
	dynamic sideBarColumn;
	@JSONField(name: "business_card")
	dynamic businessCard;
	@JSONField(name: "floor_info")
	dynamic floorInfo;
	@JSONField(name: "user_feature")
	dynamic userFeature;
	RecommendAbtest? abtest;
	@JSONField(name: "preload_expose_pct")
	int? preloadExposePct;
	@JSONField(name: "preload_floor_expose_pct")
	int? preloadFloorExposePct;
	int? mid;

	RecommendEntity();

	factory RecommendEntity.fromJson(Map<String, dynamic> json) => $RecommendEntityFromJson(json);

	Map<String, dynamic> toJson() => $RecommendEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendItem {
	int? id;
	String? bvid;
	int? cid;
	String? goto;
	String? uri;
	String? pic;
	@JSONField(name: "pic_4_3")
	String? pic43;
	String? title;
	int? duration;
	int? pubdate;
	RecommendItemOwner? owner;
	RecommendItemStat? stat;
	@JSONField(name: "av_feature")
	dynamic avFeature;
	@JSONField(name: "is_followed")
	int? isFollowed;
	@JSONField(name: "rcmd_reason")
	RecommendItemRcmdReason? rcmdReason;
	@JSONField(name: "show_info")
	int? showInfo;
	@JSONField(name: "track_id")
	String? trackId;
	int? pos;
	@JSONField(name: "room_info")
	dynamic roomInfo;
	@JSONField(name: "ogv_info")
	dynamic ogvInfo;
	@JSONField(name: "business_info")
	dynamic businessInfo;
	@JSONField(name: "is_stock")
	int? isStock;
	@JSONField(name: "enable_vt")
	int? enableVt;
	@JSONField(name: "vt_display")
	String? vtDisplay;

	RecommendItem();

	factory RecommendItem.fromJson(Map<String, dynamic> json) => $RecommendItemFromJson(json);

	Map<String, dynamic> toJson() => $RecommendItemToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendItemOwner {
	int? mid;
	String? name;
	String? face;

	RecommendItemOwner();

	factory RecommendItemOwner.fromJson(Map<String, dynamic> json) => $RecommendItemOwnerFromJson(json);

	Map<String, dynamic> toJson() => $RecommendItemOwnerToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendItemStat {
	int? view;
	int? like;
	int? danmaku;
	int? vt;

	RecommendItemStat();

	factory RecommendItemStat.fromJson(Map<String, dynamic> json) => $RecommendItemStatFromJson(json);

	Map<String, dynamic> toJson() => $RecommendItemStatToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendItemRcmdReason {
	@JSONField(name: "reason_type")
	int? reasonType;

	RecommendItemRcmdReason();

	factory RecommendItemRcmdReason.fromJson(Map<String, dynamic> json) => $RecommendItemRcmdReasonFromJson(json);

	Map<String, dynamic> toJson() => $RecommendItemRcmdReasonToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendAbtest {
	String? group;

	RecommendAbtest();

	factory RecommendAbtest.fromJson(Map<String, dynamic> json) => $RecommendAbtestFromJson(json);

	Map<String, dynamic> toJson() => $RecommendAbtestToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}