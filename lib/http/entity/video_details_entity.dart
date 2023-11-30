import 'package:flutter_bili/generated/json/base/json_field.dart';
import 'package:flutter_bili/generated/json/video_details_entity.g.dart';
import 'dart:convert';
export 'package:flutter_bili/generated/json/video_details_entity.g.dart';

@JsonSerializable()
class VideoDetailsEntity {
	String? bvid;
	int? aid;
	int? videos;
	int? tid;
	String? tname;
	int? copyright;
	String? pic;
	String? title;
	int? pubdate;
	int? ctime;
	String? desc;
	@JSONField(name: "desc_v2")
	List<VideoDetailsDescV2>? descV2;
	int? state;
	int? duration;
	@JSONField(name: "mission_id")
	int? missionId;
	VideoDetailsRights? rights;
	VideoDetailsOwner? owner;
	VideoDetailsStat? stat;
	@JSONField(name: "dynamic")
	String? dynamicString;
	int? cid;
	VideoDetailsDimension? dimension;
	dynamic premiere;
	@JSONField(name: "teenage_mode")
	int? teenageMode;
	@JSONField(name: "is_chargeable_season")
	bool? isChargeableSeason;
	@JSONField(name: "is_story")
	bool? isStory;
	@JSONField(name: "is_upower_exclusive")
	bool? isUpowerExclusive;
	@JSONField(name: "is_upower_play")
	bool? isUpowerPlay;
	@JSONField(name: "enable_vt")
	int? enableVt;
	@JSONField(name: "vt_display")
	String? vtDisplay;
	@JSONField(name: "no_cache")
	bool? noCache;
	List<VideoDetailsPages>? pages;
	VideoDetailsSubtitle? subtitle;
	List<VideoDetailsStaff>? staff;
	@JSONField(name: "is_season_display")
	bool? isSeasonDisplay;
	@JSONField(name: "user_garb")
	VideoDetailsUserGarb? userGarb;
	@JSONField(name: "honor_reply")
	VideoDetailsHonorReply? honorReply;
	@JSONField(name: "like_icon")
	String? likeIcon;
	@JSONField(name: "need_jump_bv")
	bool? needJumpBv;
	@JSONField(name: "disable_show_up_info")
	bool? disableShowUpInfo;

	VideoDetailsEntity();

	factory VideoDetailsEntity.fromJson(Map<String, dynamic> json) => $VideoDetailsEntityFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsDescV2 {
	@JSONField(name: "raw_text")
	String? rawText;
	int? type;
	@JSONField(name: "biz_id")
	int? bizId;

	VideoDetailsDescV2();

	factory VideoDetailsDescV2.fromJson(Map<String, dynamic> json) => $VideoDetailsDescV2FromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsDescV2ToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsRights {
	int? bp;
	int? elec;
	int? download;
	int? movie;
	int? pay;
	int? hd5;
	@JSONField(name: "no_reprint")
	int? noReprint;
	int? autoplay;
	@JSONField(name: "ugc_pay")
	int? ugcPay;
	@JSONField(name: "is_cooperation")
	int? isCooperation;
	@JSONField(name: "ugc_pay_preview")
	int? ugcPayPreview;
	@JSONField(name: "no_background")
	int? noBackground;
	@JSONField(name: "clean_mode")
	int? cleanMode;
	@JSONField(name: "is_stein_gate")
	int? isSteinGate;
	@JSONField(name: "is_360")
	int? is360;
	@JSONField(name: "no_share")
	int? noShare;
	@JSONField(name: "arc_pay")
	int? arcPay;
	@JSONField(name: "free_watch")
	int? freeWatch;

	VideoDetailsRights();

	factory VideoDetailsRights.fromJson(Map<String, dynamic> json) => $VideoDetailsRightsFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsRightsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsOwner {
	int? mid;
	String? name;
	String? face;

	VideoDetailsOwner();

	factory VideoDetailsOwner.fromJson(Map<String, dynamic> json) => $VideoDetailsOwnerFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsOwnerToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsStat {
	int? aid;
	int? view;
	int? danmaku;
	int? reply;
	int? favorite;
	int? coin;
	int? share;
	@JSONField(name: "now_rank")
	int? nowRank;
	@JSONField(name: "his_rank")
	int? hisRank;
	int? like;
	int? dislike;
	String? evaluation;
	@JSONField(name: "argue_msg")
	String? argueMsg;
	int? vt;

	VideoDetailsStat();

	factory VideoDetailsStat.fromJson(Map<String, dynamic> json) => $VideoDetailsStatFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsStatToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsDimension {
	int? width;
	int? height;
	int? rotate;

	VideoDetailsDimension();

	factory VideoDetailsDimension.fromJson(Map<String, dynamic> json) => $VideoDetailsDimensionFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsDimensionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsPages {
	int? cid;
	int? page;
	String? from;
	String? part;
	int? duration;
	String? vid;
	String? weblink;
	VideoDetailsPagesDimension? dimension;

	VideoDetailsPages();

	factory VideoDetailsPages.fromJson(Map<String, dynamic> json) => $VideoDetailsPagesFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsPagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsPagesDimension {
	int? width;
	int? height;
	int? rotate;

	VideoDetailsPagesDimension();

	factory VideoDetailsPagesDimension.fromJson(Map<String, dynamic> json) => $VideoDetailsPagesDimensionFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsPagesDimensionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsSubtitle {
	@JSONField(name: "allow_submit")
	bool? allowSubmit;
	List<VideoDetailsSubtitleList>? list;

	VideoDetailsSubtitle();

	factory VideoDetailsSubtitle.fromJson(Map<String, dynamic> json) => $VideoDetailsSubtitleFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsSubtitleToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsSubtitleList {
	int? id;
	String? lan;
	@JSONField(name: "lan_doc")
	String? lanDoc;
	@JSONField(name: "is_lock")
	bool? isLock;
	@JSONField(name: "subtitle_url")
	String? subtitleUrl;
	int? type;
	@JSONField(name: "id_str")
	String? idStr;
	@JSONField(name: "ai_type")
	int? aiType;
	@JSONField(name: "ai_status")
	int? aiStatus;
	VideoDetailsSubtitleListAuthor? author;

	VideoDetailsSubtitleList();

	factory VideoDetailsSubtitleList.fromJson(Map<String, dynamic> json) => $VideoDetailsSubtitleListFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsSubtitleListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsSubtitleListAuthor {
	int? mid;
	String? name;
	String? sex;
	String? face;
	String? sign;
	int? rank;
	int? birthday;
	@JSONField(name: "is_fake_account")
	int? isFakeAccount;
	@JSONField(name: "is_deleted")
	int? isDeleted;
	@JSONField(name: "in_reg_audit")
	int? inRegAudit;
	@JSONField(name: "is_senior_member")
	int? isSeniorMember;

	VideoDetailsSubtitleListAuthor();

	factory VideoDetailsSubtitleListAuthor.fromJson(Map<String, dynamic> json) => $VideoDetailsSubtitleListAuthorFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsSubtitleListAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsStaff {
	int? mid;
	String? title;
	String? name;
	String? face;
	VideoDetailsStaffVip? vip;
	VideoDetailsStaffOfficial? official;
	int? follower;
	@JSONField(name: "label_style")
	int? labelStyle;

	VideoDetailsStaff();

	factory VideoDetailsStaff.fromJson(Map<String, dynamic> json) => $VideoDetailsStaffFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsStaffToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsStaffVip {
	int? type;
	int? status;
	@JSONField(name: "due_date")
	int? dueDate;
	@JSONField(name: "vip_pay_type")
	int? vipPayType;
	@JSONField(name: "theme_type")
	int? themeType;
	VideoDetailsStaffVipLabel? label;
	@JSONField(name: "avatar_subscript")
	int? avatarSubscript;
	@JSONField(name: "nickname_color")
	String? nicknameColor;
	int? role;
	@JSONField(name: "avatar_subscript_url")
	String? avatarSubscriptUrl;
	@JSONField(name: "tv_vip_status")
	int? tvVipStatus;
	@JSONField(name: "tv_vip_pay_type")
	int? tvVipPayType;
	@JSONField(name: "tv_due_date")
	int? tvDueDate;

	VideoDetailsStaffVip();

	factory VideoDetailsStaffVip.fromJson(Map<String, dynamic> json) => $VideoDetailsStaffVipFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsStaffVipToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsStaffVipLabel {
	String? path;
	String? text;
	@JSONField(name: "label_theme")
	String? labelTheme;
	@JSONField(name: "text_color")
	String? textColor;
	@JSONField(name: "bg_style")
	int? bgStyle;
	@JSONField(name: "bg_color")
	String? bgColor;
	@JSONField(name: "border_color")
	String? borderColor;
	@JSONField(name: "use_img_label")
	bool? useImgLabel;
	@JSONField(name: "img_label_uri_hans")
	String? imgLabelUriHans;
	@JSONField(name: "img_label_uri_hant")
	String? imgLabelUriHant;
	@JSONField(name: "img_label_uri_hans_static")
	String? imgLabelUriHansStatic;
	@JSONField(name: "img_label_uri_hant_static")
	String? imgLabelUriHantStatic;

	VideoDetailsStaffVipLabel();

	factory VideoDetailsStaffVipLabel.fromJson(Map<String, dynamic> json) => $VideoDetailsStaffVipLabelFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsStaffVipLabelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsStaffOfficial {
	int? role;
	String? title;
	String? desc;
	int? type;

	VideoDetailsStaffOfficial();

	factory VideoDetailsStaffOfficial.fromJson(Map<String, dynamic> json) => $VideoDetailsStaffOfficialFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsStaffOfficialToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsUserGarb {
	@JSONField(name: "url_image_ani_cut")
	String? urlImageAniCut;

	VideoDetailsUserGarb();

	factory VideoDetailsUserGarb.fromJson(Map<String, dynamic> json) => $VideoDetailsUserGarbFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsUserGarbToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsHonorReply {
	List<VideoDetailsHonorReplyHonor>? honor;

	VideoDetailsHonorReply();

	factory VideoDetailsHonorReply.fromJson(Map<String, dynamic> json) => $VideoDetailsHonorReplyFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsHonorReplyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoDetailsHonorReplyHonor {
	int? aid;
	int? type;
	String? desc;
	@JSONField(name: "weekly_recommend_num")
	int? weeklyRecommendNum;

	VideoDetailsHonorReplyHonor();

	factory VideoDetailsHonorReplyHonor.fromJson(Map<String, dynamic> json) => $VideoDetailsHonorReplyHonorFromJson(json);

	Map<String, dynamic> toJson() => $VideoDetailsHonorReplyHonorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}