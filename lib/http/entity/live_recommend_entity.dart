import 'package:flutter_bili/generated/json/base/json_field.dart';
import 'package:flutter_bili/generated/json/live_recommend_entity.g.dart';
import 'dart:convert';
export 'package:flutter_bili/generated/json/live_recommend_entity.g.dart';

@JsonSerializable()
class LiveRecommendEntity {
	List<LiveRecommendList>? list;
	@JSONField(name: "has_more")
	int? hasMore;

	LiveRecommendEntity();

	factory LiveRecommendEntity.fromJson(Map<String, dynamic> json) => $LiveRecommendEntityFromJson(json);

	Map<String, dynamic> toJson() => $LiveRecommendEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LiveRecommendList {
	int? roomid;
	int? uid;
	String? title;
	String? uname;
	int? online;
	@JSONField(name: "user_cover")
	String? userCover;
	@JSONField(name: "user_cover_flag")
	int? userCoverFlag;
	@JSONField(name: "system_cover")
	String? systemCover;
	String? cover;
	@JSONField(name: "show_cover")
	String? showCover;
	String? link;
	String? face;
	@JSONField(name: "parent_id")
	int? parentId;
	@JSONField(name: "parent_name")
	String? parentName;
	@JSONField(name: "area_id")
	int? areaId;
	@JSONField(name: "area_name")
	String? areaName;
	@JSONField(name: "area_v2_parent_id")
	int? areaV2ParentId;
	@JSONField(name: "area_v2_parent_name")
	String? areaV2ParentName;
	@JSONField(name: "area_v2_id")
	int? areaV2Id;
	@JSONField(name: "area_v2_name")
	String? areaV2Name;
	@JSONField(name: "session_id")
	String? sessionId;
	@JSONField(name: "group_id")
	int? groupId;
	@JSONField(name: "show_callback")
	String? showCallback;
	@JSONField(name: "click_callback")
	String? clickCallback;
	@JSONField(name: "web_pendent")
	String? webPendent;
	@JSONField(name: "pk_id")
	int? pkId;
	@JSONField(name: "pendant_info")
	LiveRecommendListPendantInfo? pendantInfo;
	LiveRecommendListVerify? verify;
	@JSONField(name: "head_box")
	LiveRecommendListHeadBox? headBox;
	@JSONField(name: "head_box_type")
	int? headBoxType;
	@JSONField(name: "is_auto_play")
	int? isAutoPlay;
	int? flag;
	@JSONField(name: "watched_show")
	LiveRecommendListWatchedShow? watchedShow;
	@JSONField(name: "is_nft")
	int? isNft;
	@JSONField(name: "nft_dmark")
	String? nftDmark;
	@JSONField(name: "play_together_goods")
	dynamic playTogetherGoods;

	LiveRecommendList();

	factory LiveRecommendList.fromJson(Map<String, dynamic> json) => $LiveRecommendListFromJson(json);

	Map<String, dynamic> toJson() => $LiveRecommendListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LiveRecommendListPendantInfo {
	@JSONField(name: "2")
	LiveRecommendListPendantInfo2? info2;

	LiveRecommendListPendantInfo();

	factory LiveRecommendListPendantInfo.fromJson(Map<String, dynamic> json) => $LiveRecommendListPendantInfoFromJson(json);

	Map<String, dynamic> toJson() => $LiveRecommendListPendantInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LiveRecommendListPendantInfo2 {
	@JSONField(name: "pendent_id")
	int? pendentId;
	String? content;
	String? color;
	String? pic;
	int? position;
	String? type;
	String? name;

	LiveRecommendListPendantInfo2();

	factory LiveRecommendListPendantInfo2.fromJson(Map<String, dynamic> json) => $LiveRecommendListPendantInfo2FromJson(json);

	Map<String, dynamic> toJson() => $LiveRecommendListPendantInfo2ToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LiveRecommendListVerify {
	int? role;
	String? desc;
	int? type;

	LiveRecommendListVerify();

	factory LiveRecommendListVerify.fromJson(Map<String, dynamic> json) => $LiveRecommendListVerifyFromJson(json);

	Map<String, dynamic> toJson() => $LiveRecommendListVerifyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LiveRecommendListHeadBox {
	String? name;
	String? value;
	String? desc;

	LiveRecommendListHeadBox();

	factory LiveRecommendListHeadBox.fromJson(Map<String, dynamic> json) => $LiveRecommendListHeadBoxFromJson(json);

	Map<String, dynamic> toJson() => $LiveRecommendListHeadBoxToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LiveRecommendListWatchedShow {
	@JSONField(name: "switch")
	bool? switchBoolean;
	int? num;
	@JSONField(name: "text_small")
	String? textSmall;
	@JSONField(name: "text_large")
	String? textLarge;
	String? icon;
	@JSONField(name: "icon_location")
	int? iconLocation;
	@JSONField(name: "icon_web")
	String? iconWeb;

	LiveRecommendListWatchedShow();

	factory LiveRecommendListWatchedShow.fromJson(Map<String, dynamic> json) => $LiveRecommendListWatchedShowFromJson(json);

	Map<String, dynamic> toJson() => $LiveRecommendListWatchedShowToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}