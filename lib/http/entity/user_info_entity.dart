import 'package:flutter_bili/generated/json/base/json_field.dart';
import 'package:flutter_bili/generated/json/user_info_entity.g.dart';
import 'dart:convert';
export 'package:flutter_bili/generated/json/user_info_entity.g.dart';

@JsonSerializable()
class UserInfoEntity {
	bool? isLogin;
	@JSONField(name: "email_verified")
	int? emailVerified;
	String? face;
	@JSONField(name: "face_nft")
	int? faceNft;
	@JSONField(name: "face_nft_type")
	int? faceNftType;
	@JSONField(name: "level_info")
	UserInfoLevelInfo? levelInfo;
	int? mid;
	@JSONField(name: "mobile_verified")
	int? mobileVerified;
	double? money;
	int? moral;
	UserInfoOfficial? official;
	UserInfoOfficialVerify? officialVerify;
	UserInfoPendant? pendant;
	int? scores;
	String? uname;
	int? vipDueDate;
	int? vipStatus;
	int? vipType;
	@JSONField(name: "vip_pay_type")
	int? vipPayType;
	@JSONField(name: "vip_theme_type")
	int? vipThemeType;
	@JSONField(name: "vip_label")
	UserInfoVipLabel? vipLabel;
	@JSONField(name: "vip_avatar_subscript")
	int? vipAvatarSubscript;
	@JSONField(name: "vip_nickname_color")
	String? vipNicknameColor;
	UserInfoVip? vip;
	UserInfoWallet? wallet;
	@JSONField(name: "has_shop")
	bool? hasShop;
	@JSONField(name: "shop_url")
	String? shopUrl;
	@JSONField(name: "allowance_count")
	int? allowanceCount;
	@JSONField(name: "answer_status")
	int? answerStatus;
	@JSONField(name: "is_senior_member")
	int? isSeniorMember;
	@JSONField(name: "wbi_img")
	UserInfoWbiImg? wbiImg;
	@JSONField(name: "is_jury")
	bool? isJury;

	UserInfoEntity();

	factory UserInfoEntity.fromJson(Map<String, dynamic> json) => $UserInfoEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserInfoEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserInfoLevelInfo {
	@JSONField(name: "current_level")
	int? currentLevel;
	@JSONField(name: "current_min")
	int? currentMin;
	@JSONField(name: "current_exp")
	int? currentExp;
	@JSONField(name: "next_exp")
	String? nextExp;

	UserInfoLevelInfo();

	factory UserInfoLevelInfo.fromJson(Map<String, dynamic> json) => $UserInfoLevelInfoFromJson(json);

	Map<String, dynamic> toJson() => $UserInfoLevelInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserInfoOfficial {
	int? role;
	String? title;
	String? desc;
	int? type;

	UserInfoOfficial();

	factory UserInfoOfficial.fromJson(Map<String, dynamic> json) => $UserInfoOfficialFromJson(json);

	Map<String, dynamic> toJson() => $UserInfoOfficialToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserInfoOfficialVerify {
	int? type;
	String? desc;

	UserInfoOfficialVerify();

	factory UserInfoOfficialVerify.fromJson(Map<String, dynamic> json) => $UserInfoOfficialVerifyFromJson(json);

	Map<String, dynamic> toJson() => $UserInfoOfficialVerifyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserInfoPendant {
	int? pid;
	String? name;
	String? image;
	int? expire;
	@JSONField(name: "image_enhance")
	String? imageEnhance;
	@JSONField(name: "image_enhance_frame")
	String? imageEnhanceFrame;

	UserInfoPendant();

	factory UserInfoPendant.fromJson(Map<String, dynamic> json) => $UserInfoPendantFromJson(json);

	Map<String, dynamic> toJson() => $UserInfoPendantToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserInfoVipLabel {
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

	UserInfoVipLabel();

	factory UserInfoVipLabel.fromJson(Map<String, dynamic> json) => $UserInfoVipLabelFromJson(json);

	Map<String, dynamic> toJson() => $UserInfoVipLabelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserInfoVip {
	int? type;
	int? status;
	@JSONField(name: "due_date")
	int? dueDate;
	@JSONField(name: "vip_pay_type")
	int? vipPayType;
	@JSONField(name: "theme_type")
	int? themeType;
	UserInfoVipLabel? label;
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

	UserInfoVip();

	factory UserInfoVip.fromJson(Map<String, dynamic> json) => $UserInfoVipFromJson(json);

	Map<String, dynamic> toJson() => $UserInfoVipToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserInfoWallet {
	int? mid;
	@JSONField(name: "bcoin_balance")
	int? bcoinBalance;
	@JSONField(name: "coupon_balance")
	int? couponBalance;
	@JSONField(name: "coupon_due_time")
	int? couponDueTime;

	UserInfoWallet();

	factory UserInfoWallet.fromJson(Map<String, dynamic> json) => $UserInfoWalletFromJson(json);

	Map<String, dynamic> toJson() => $UserInfoWalletToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserInfoWbiImg {
	@JSONField(name: "img_url")
	String? imgUrl;
	@JSONField(name: "sub_url")
	String? subUrl;

	UserInfoWbiImg();

	factory UserInfoWbiImg.fromJson(Map<String, dynamic> json) => $UserInfoWbiImgFromJson(json);

	Map<String, dynamic> toJson() => $UserInfoWbiImgToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}