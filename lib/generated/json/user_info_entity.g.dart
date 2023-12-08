import 'package:flutter_bili/generated/json/base/json_convert_content.dart';
import 'package:flutter_bili/http/entity/user_info_entity.dart';

UserInfoEntity $UserInfoEntityFromJson(Map<String, dynamic> json) {
  final UserInfoEntity userInfoEntity = UserInfoEntity();
  final bool? isLogin = jsonConvert.convert<bool>(json['isLogin']);
  if (isLogin != null) {
    userInfoEntity.isLogin = isLogin;
  }
  final int? emailVerified = jsonConvert.convert<int>(json['email_verified']);
  if (emailVerified != null) {
    userInfoEntity.emailVerified = emailVerified;
  }
  final String? face = jsonConvert.convert<String>(json['face']);
  if (face != null) {
    userInfoEntity.face = face;
  }
  final int? faceNft = jsonConvert.convert<int>(json['face_nft']);
  if (faceNft != null) {
    userInfoEntity.faceNft = faceNft;
  }
  final int? faceNftType = jsonConvert.convert<int>(json['face_nft_type']);
  if (faceNftType != null) {
    userInfoEntity.faceNftType = faceNftType;
  }
  final UserInfoLevelInfo? levelInfo = jsonConvert.convert<UserInfoLevelInfo>(
      json['level_info']);
  if (levelInfo != null) {
    userInfoEntity.levelInfo = levelInfo;
  }
  final int? mid = jsonConvert.convert<int>(json['mid']);
  if (mid != null) {
    userInfoEntity.mid = mid;
  }
  final int? mobileVerified = jsonConvert.convert<int>(json['mobile_verified']);
  if (mobileVerified != null) {
    userInfoEntity.mobileVerified = mobileVerified;
  }
  final double? money = jsonConvert.convert<double>(json['money']);
  if (money != null) {
    userInfoEntity.money = money;
  }
  final int? moral = jsonConvert.convert<int>(json['moral']);
  if (moral != null) {
    userInfoEntity.moral = moral;
  }
  final UserInfoOfficial? official = jsonConvert.convert<UserInfoOfficial>(
      json['official']);
  if (official != null) {
    userInfoEntity.official = official;
  }
  final UserInfoOfficialVerify? officialVerify = jsonConvert.convert<
      UserInfoOfficialVerify>(json['officialVerify']);
  if (officialVerify != null) {
    userInfoEntity.officialVerify = officialVerify;
  }
  final UserInfoPendant? pendant = jsonConvert.convert<UserInfoPendant>(
      json['pendant']);
  if (pendant != null) {
    userInfoEntity.pendant = pendant;
  }
  final int? scores = jsonConvert.convert<int>(json['scores']);
  if (scores != null) {
    userInfoEntity.scores = scores;
  }
  final String? uname = jsonConvert.convert<String>(json['uname']);
  if (uname != null) {
    userInfoEntity.uname = uname;
  }
  final int? vipDueDate = jsonConvert.convert<int>(json['vipDueDate']);
  if (vipDueDate != null) {
    userInfoEntity.vipDueDate = vipDueDate;
  }
  final int? vipStatus = jsonConvert.convert<int>(json['vipStatus']);
  if (vipStatus != null) {
    userInfoEntity.vipStatus = vipStatus;
  }
  final int? vipType = jsonConvert.convert<int>(json['vipType']);
  if (vipType != null) {
    userInfoEntity.vipType = vipType;
  }
  final int? vipPayType = jsonConvert.convert<int>(json['vip_pay_type']);
  if (vipPayType != null) {
    userInfoEntity.vipPayType = vipPayType;
  }
  final int? vipThemeType = jsonConvert.convert<int>(json['vip_theme_type']);
  if (vipThemeType != null) {
    userInfoEntity.vipThemeType = vipThemeType;
  }
  final UserInfoVipLabel? vipLabel = jsonConvert.convert<UserInfoVipLabel>(
      json['vip_label']);
  if (vipLabel != null) {
    userInfoEntity.vipLabel = vipLabel;
  }
  final int? vipAvatarSubscript = jsonConvert.convert<int>(
      json['vip_avatar_subscript']);
  if (vipAvatarSubscript != null) {
    userInfoEntity.vipAvatarSubscript = vipAvatarSubscript;
  }
  final String? vipNicknameColor = jsonConvert.convert<String>(
      json['vip_nickname_color']);
  if (vipNicknameColor != null) {
    userInfoEntity.vipNicknameColor = vipNicknameColor;
  }
  final UserInfoVip? vip = jsonConvert.convert<UserInfoVip>(json['vip']);
  if (vip != null) {
    userInfoEntity.vip = vip;
  }
  final UserInfoWallet? wallet = jsonConvert.convert<UserInfoWallet>(
      json['wallet']);
  if (wallet != null) {
    userInfoEntity.wallet = wallet;
  }
  final bool? hasShop = jsonConvert.convert<bool>(json['has_shop']);
  if (hasShop != null) {
    userInfoEntity.hasShop = hasShop;
  }
  final String? shopUrl = jsonConvert.convert<String>(json['shop_url']);
  if (shopUrl != null) {
    userInfoEntity.shopUrl = shopUrl;
  }
  final int? allowanceCount = jsonConvert.convert<int>(json['allowance_count']);
  if (allowanceCount != null) {
    userInfoEntity.allowanceCount = allowanceCount;
  }
  final int? answerStatus = jsonConvert.convert<int>(json['answer_status']);
  if (answerStatus != null) {
    userInfoEntity.answerStatus = answerStatus;
  }
  final int? isSeniorMember = jsonConvert.convert<int>(
      json['is_senior_member']);
  if (isSeniorMember != null) {
    userInfoEntity.isSeniorMember = isSeniorMember;
  }
  final UserInfoWbiImg? wbiImg = jsonConvert.convert<UserInfoWbiImg>(
      json['wbi_img']);
  if (wbiImg != null) {
    userInfoEntity.wbiImg = wbiImg;
  }
  final bool? isJury = jsonConvert.convert<bool>(json['is_jury']);
  if (isJury != null) {
    userInfoEntity.isJury = isJury;
  }
  return userInfoEntity;
}

Map<String, dynamic> $UserInfoEntityToJson(UserInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['isLogin'] = entity.isLogin;
  data['email_verified'] = entity.emailVerified;
  data['face'] = entity.face;
  data['face_nft'] = entity.faceNft;
  data['face_nft_type'] = entity.faceNftType;
  data['level_info'] = entity.levelInfo?.toJson();
  data['mid'] = entity.mid;
  data['mobile_verified'] = entity.mobileVerified;
  data['money'] = entity.money;
  data['moral'] = entity.moral;
  data['official'] = entity.official?.toJson();
  data['officialVerify'] = entity.officialVerify?.toJson();
  data['pendant'] = entity.pendant?.toJson();
  data['scores'] = entity.scores;
  data['uname'] = entity.uname;
  data['vipDueDate'] = entity.vipDueDate;
  data['vipStatus'] = entity.vipStatus;
  data['vipType'] = entity.vipType;
  data['vip_pay_type'] = entity.vipPayType;
  data['vip_theme_type'] = entity.vipThemeType;
  data['vip_label'] = entity.vipLabel?.toJson();
  data['vip_avatar_subscript'] = entity.vipAvatarSubscript;
  data['vip_nickname_color'] = entity.vipNicknameColor;
  data['vip'] = entity.vip?.toJson();
  data['wallet'] = entity.wallet?.toJson();
  data['has_shop'] = entity.hasShop;
  data['shop_url'] = entity.shopUrl;
  data['allowance_count'] = entity.allowanceCount;
  data['answer_status'] = entity.answerStatus;
  data['is_senior_member'] = entity.isSeniorMember;
  data['wbi_img'] = entity.wbiImg?.toJson();
  data['is_jury'] = entity.isJury;
  return data;
}

extension UserInfoEntityExtension on UserInfoEntity {
  UserInfoEntity copyWith({
    bool? isLogin,
    int? emailVerified,
    String? face,
    int? faceNft,
    int? faceNftType,
    UserInfoLevelInfo? levelInfo,
    int? mid,
    int? mobileVerified,
    double? money,
    int? moral,
    UserInfoOfficial? official,
    UserInfoOfficialVerify? officialVerify,
    UserInfoPendant? pendant,
    int? scores,
    String? uname,
    int? vipDueDate,
    int? vipStatus,
    int? vipType,
    int? vipPayType,
    int? vipThemeType,
    UserInfoVipLabel? vipLabel,
    int? vipAvatarSubscript,
    String? vipNicknameColor,
    UserInfoVip? vip,
    UserInfoWallet? wallet,
    bool? hasShop,
    String? shopUrl,
    int? allowanceCount,
    int? answerStatus,
    int? isSeniorMember,
    UserInfoWbiImg? wbiImg,
    bool? isJury,
  }) {
    return UserInfoEntity()
      ..isLogin = isLogin ?? this.isLogin
      ..emailVerified = emailVerified ?? this.emailVerified
      ..face = face ?? this.face
      ..faceNft = faceNft ?? this.faceNft
      ..faceNftType = faceNftType ?? this.faceNftType
      ..levelInfo = levelInfo ?? this.levelInfo
      ..mid = mid ?? this.mid
      ..mobileVerified = mobileVerified ?? this.mobileVerified
      ..money = money ?? this.money
      ..moral = moral ?? this.moral
      ..official = official ?? this.official
      ..officialVerify = officialVerify ?? this.officialVerify
      ..pendant = pendant ?? this.pendant
      ..scores = scores ?? this.scores
      ..uname = uname ?? this.uname
      ..vipDueDate = vipDueDate ?? this.vipDueDate
      ..vipStatus = vipStatus ?? this.vipStatus
      ..vipType = vipType ?? this.vipType
      ..vipPayType = vipPayType ?? this.vipPayType
      ..vipThemeType = vipThemeType ?? this.vipThemeType
      ..vipLabel = vipLabel ?? this.vipLabel
      ..vipAvatarSubscript = vipAvatarSubscript ?? this.vipAvatarSubscript
      ..vipNicknameColor = vipNicknameColor ?? this.vipNicknameColor
      ..vip = vip ?? this.vip
      ..wallet = wallet ?? this.wallet
      ..hasShop = hasShop ?? this.hasShop
      ..shopUrl = shopUrl ?? this.shopUrl
      ..allowanceCount = allowanceCount ?? this.allowanceCount
      ..answerStatus = answerStatus ?? this.answerStatus
      ..isSeniorMember = isSeniorMember ?? this.isSeniorMember
      ..wbiImg = wbiImg ?? this.wbiImg
      ..isJury = isJury ?? this.isJury;
  }
}

UserInfoLevelInfo $UserInfoLevelInfoFromJson(Map<String, dynamic> json) {
  final UserInfoLevelInfo userInfoLevelInfo = UserInfoLevelInfo();
  final int? currentLevel = jsonConvert.convert<int>(json['current_level']);
  if (currentLevel != null) {
    userInfoLevelInfo.currentLevel = currentLevel;
  }
  final int? currentMin = jsonConvert.convert<int>(json['current_min']);
  if (currentMin != null) {
    userInfoLevelInfo.currentMin = currentMin;
  }
  final int? currentExp = jsonConvert.convert<int>(json['current_exp']);
  if (currentExp != null) {
    userInfoLevelInfo.currentExp = currentExp;
  }
  final String? nextExp = jsonConvert.convert<String>(json['next_exp']);
  if (nextExp != null) {
    userInfoLevelInfo.nextExp = nextExp;
  }
  return userInfoLevelInfo;
}

Map<String, dynamic> $UserInfoLevelInfoToJson(UserInfoLevelInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['current_level'] = entity.currentLevel;
  data['current_min'] = entity.currentMin;
  data['current_exp'] = entity.currentExp;
  data['next_exp'] = entity.nextExp;
  return data;
}

extension UserInfoLevelInfoExtension on UserInfoLevelInfo {
  UserInfoLevelInfo copyWith({
    int? currentLevel,
    int? currentMin,
    int? currentExp,
    String? nextExp,
  }) {
    return UserInfoLevelInfo()
      ..currentLevel = currentLevel ?? this.currentLevel
      ..currentMin = currentMin ?? this.currentMin
      ..currentExp = currentExp ?? this.currentExp
      ..nextExp = nextExp ?? this.nextExp;
  }
}

UserInfoOfficial $UserInfoOfficialFromJson(Map<String, dynamic> json) {
  final UserInfoOfficial userInfoOfficial = UserInfoOfficial();
  final int? role = jsonConvert.convert<int>(json['role']);
  if (role != null) {
    userInfoOfficial.role = role;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    userInfoOfficial.title = title;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    userInfoOfficial.desc = desc;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    userInfoOfficial.type = type;
  }
  return userInfoOfficial;
}

Map<String, dynamic> $UserInfoOfficialToJson(UserInfoOfficial entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['role'] = entity.role;
  data['title'] = entity.title;
  data['desc'] = entity.desc;
  data['type'] = entity.type;
  return data;
}

extension UserInfoOfficialExtension on UserInfoOfficial {
  UserInfoOfficial copyWith({
    int? role,
    String? title,
    String? desc,
    int? type,
  }) {
    return UserInfoOfficial()
      ..role = role ?? this.role
      ..title = title ?? this.title
      ..desc = desc ?? this.desc
      ..type = type ?? this.type;
  }
}

UserInfoOfficialVerify $UserInfoOfficialVerifyFromJson(
    Map<String, dynamic> json) {
  final UserInfoOfficialVerify userInfoOfficialVerify = UserInfoOfficialVerify();
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    userInfoOfficialVerify.type = type;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    userInfoOfficialVerify.desc = desc;
  }
  return userInfoOfficialVerify;
}

Map<String, dynamic> $UserInfoOfficialVerifyToJson(
    UserInfoOfficialVerify entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['type'] = entity.type;
  data['desc'] = entity.desc;
  return data;
}

extension UserInfoOfficialVerifyExtension on UserInfoOfficialVerify {
  UserInfoOfficialVerify copyWith({
    int? type,
    String? desc,
  }) {
    return UserInfoOfficialVerify()
      ..type = type ?? this.type
      ..desc = desc ?? this.desc;
  }
}

UserInfoPendant $UserInfoPendantFromJson(Map<String, dynamic> json) {
  final UserInfoPendant userInfoPendant = UserInfoPendant();
  final int? pid = jsonConvert.convert<int>(json['pid']);
  if (pid != null) {
    userInfoPendant.pid = pid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userInfoPendant.name = name;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    userInfoPendant.image = image;
  }
  final int? expire = jsonConvert.convert<int>(json['expire']);
  if (expire != null) {
    userInfoPendant.expire = expire;
  }
  final String? imageEnhance = jsonConvert.convert<String>(
      json['image_enhance']);
  if (imageEnhance != null) {
    userInfoPendant.imageEnhance = imageEnhance;
  }
  final String? imageEnhanceFrame = jsonConvert.convert<String>(
      json['image_enhance_frame']);
  if (imageEnhanceFrame != null) {
    userInfoPendant.imageEnhanceFrame = imageEnhanceFrame;
  }
  return userInfoPendant;
}

Map<String, dynamic> $UserInfoPendantToJson(UserInfoPendant entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['pid'] = entity.pid;
  data['name'] = entity.name;
  data['image'] = entity.image;
  data['expire'] = entity.expire;
  data['image_enhance'] = entity.imageEnhance;
  data['image_enhance_frame'] = entity.imageEnhanceFrame;
  return data;
}

extension UserInfoPendantExtension on UserInfoPendant {
  UserInfoPendant copyWith({
    int? pid,
    String? name,
    String? image,
    int? expire,
    String? imageEnhance,
    String? imageEnhanceFrame,
  }) {
    return UserInfoPendant()
      ..pid = pid ?? this.pid
      ..name = name ?? this.name
      ..image = image ?? this.image
      ..expire = expire ?? this.expire
      ..imageEnhance = imageEnhance ?? this.imageEnhance
      ..imageEnhanceFrame = imageEnhanceFrame ?? this.imageEnhanceFrame;
  }
}

UserInfoVipLabel $UserInfoVipLabelFromJson(Map<String, dynamic> json) {
  final UserInfoVipLabel userInfoVipLabel = UserInfoVipLabel();
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    userInfoVipLabel.path = path;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    userInfoVipLabel.text = text;
  }
  final String? labelTheme = jsonConvert.convert<String>(json['label_theme']);
  if (labelTheme != null) {
    userInfoVipLabel.labelTheme = labelTheme;
  }
  final String? textColor = jsonConvert.convert<String>(json['text_color']);
  if (textColor != null) {
    userInfoVipLabel.textColor = textColor;
  }
  final int? bgStyle = jsonConvert.convert<int>(json['bg_style']);
  if (bgStyle != null) {
    userInfoVipLabel.bgStyle = bgStyle;
  }
  final String? bgColor = jsonConvert.convert<String>(json['bg_color']);
  if (bgColor != null) {
    userInfoVipLabel.bgColor = bgColor;
  }
  final String? borderColor = jsonConvert.convert<String>(json['border_color']);
  if (borderColor != null) {
    userInfoVipLabel.borderColor = borderColor;
  }
  final bool? useImgLabel = jsonConvert.convert<bool>(json['use_img_label']);
  if (useImgLabel != null) {
    userInfoVipLabel.useImgLabel = useImgLabel;
  }
  final String? imgLabelUriHans = jsonConvert.convert<String>(
      json['img_label_uri_hans']);
  if (imgLabelUriHans != null) {
    userInfoVipLabel.imgLabelUriHans = imgLabelUriHans;
  }
  final String? imgLabelUriHant = jsonConvert.convert<String>(
      json['img_label_uri_hant']);
  if (imgLabelUriHant != null) {
    userInfoVipLabel.imgLabelUriHant = imgLabelUriHant;
  }
  final String? imgLabelUriHansStatic = jsonConvert.convert<String>(
      json['img_label_uri_hans_static']);
  if (imgLabelUriHansStatic != null) {
    userInfoVipLabel.imgLabelUriHansStatic = imgLabelUriHansStatic;
  }
  final String? imgLabelUriHantStatic = jsonConvert.convert<String>(
      json['img_label_uri_hant_static']);
  if (imgLabelUriHantStatic != null) {
    userInfoVipLabel.imgLabelUriHantStatic = imgLabelUriHantStatic;
  }
  return userInfoVipLabel;
}

Map<String, dynamic> $UserInfoVipLabelToJson(UserInfoVipLabel entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['path'] = entity.path;
  data['text'] = entity.text;
  data['label_theme'] = entity.labelTheme;
  data['text_color'] = entity.textColor;
  data['bg_style'] = entity.bgStyle;
  data['bg_color'] = entity.bgColor;
  data['border_color'] = entity.borderColor;
  data['use_img_label'] = entity.useImgLabel;
  data['img_label_uri_hans'] = entity.imgLabelUriHans;
  data['img_label_uri_hant'] = entity.imgLabelUriHant;
  data['img_label_uri_hans_static'] = entity.imgLabelUriHansStatic;
  data['img_label_uri_hant_static'] = entity.imgLabelUriHantStatic;
  return data;
}

extension UserInfoVipLabelExtension on UserInfoVipLabel {
  UserInfoVipLabel copyWith({
    String? path,
    String? text,
    String? labelTheme,
    String? textColor,
    int? bgStyle,
    String? bgColor,
    String? borderColor,
    bool? useImgLabel,
    String? imgLabelUriHans,
    String? imgLabelUriHant,
    String? imgLabelUriHansStatic,
    String? imgLabelUriHantStatic,
  }) {
    return UserInfoVipLabel()
      ..path = path ?? this.path
      ..text = text ?? this.text
      ..labelTheme = labelTheme ?? this.labelTheme
      ..textColor = textColor ?? this.textColor
      ..bgStyle = bgStyle ?? this.bgStyle
      ..bgColor = bgColor ?? this.bgColor
      ..borderColor = borderColor ?? this.borderColor
      ..useImgLabel = useImgLabel ?? this.useImgLabel
      ..imgLabelUriHans = imgLabelUriHans ?? this.imgLabelUriHans
      ..imgLabelUriHant = imgLabelUriHant ?? this.imgLabelUriHant
      ..imgLabelUriHansStatic = imgLabelUriHansStatic ??
          this.imgLabelUriHansStatic
      ..imgLabelUriHantStatic = imgLabelUriHantStatic ??
          this.imgLabelUriHantStatic;
  }
}

UserInfoVip $UserInfoVipFromJson(Map<String, dynamic> json) {
  final UserInfoVip userInfoVip = UserInfoVip();
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    userInfoVip.type = type;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    userInfoVip.status = status;
  }
  final int? dueDate = jsonConvert.convert<int>(json['due_date']);
  if (dueDate != null) {
    userInfoVip.dueDate = dueDate;
  }
  final int? vipPayType = jsonConvert.convert<int>(json['vip_pay_type']);
  if (vipPayType != null) {
    userInfoVip.vipPayType = vipPayType;
  }
  final int? themeType = jsonConvert.convert<int>(json['theme_type']);
  if (themeType != null) {
    userInfoVip.themeType = themeType;
  }
  final UserInfoVipLabel? label = jsonConvert.convert<UserInfoVipLabel>(
      json['label']);
  if (label != null) {
    userInfoVip.label = label;
  }
  final int? avatarSubscript = jsonConvert.convert<int>(
      json['avatar_subscript']);
  if (avatarSubscript != null) {
    userInfoVip.avatarSubscript = avatarSubscript;
  }
  final String? nicknameColor = jsonConvert.convert<String>(
      json['nickname_color']);
  if (nicknameColor != null) {
    userInfoVip.nicknameColor = nicknameColor;
  }
  final int? role = jsonConvert.convert<int>(json['role']);
  if (role != null) {
    userInfoVip.role = role;
  }
  final String? avatarSubscriptUrl = jsonConvert.convert<String>(
      json['avatar_subscript_url']);
  if (avatarSubscriptUrl != null) {
    userInfoVip.avatarSubscriptUrl = avatarSubscriptUrl;
  }
  final int? tvVipStatus = jsonConvert.convert<int>(json['tv_vip_status']);
  if (tvVipStatus != null) {
    userInfoVip.tvVipStatus = tvVipStatus;
  }
  final int? tvVipPayType = jsonConvert.convert<int>(json['tv_vip_pay_type']);
  if (tvVipPayType != null) {
    userInfoVip.tvVipPayType = tvVipPayType;
  }
  final int? tvDueDate = jsonConvert.convert<int>(json['tv_due_date']);
  if (tvDueDate != null) {
    userInfoVip.tvDueDate = tvDueDate;
  }
  return userInfoVip;
}

Map<String, dynamic> $UserInfoVipToJson(UserInfoVip entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['type'] = entity.type;
  data['status'] = entity.status;
  data['due_date'] = entity.dueDate;
  data['vip_pay_type'] = entity.vipPayType;
  data['theme_type'] = entity.themeType;
  data['label'] = entity.label?.toJson();
  data['avatar_subscript'] = entity.avatarSubscript;
  data['nickname_color'] = entity.nicknameColor;
  data['role'] = entity.role;
  data['avatar_subscript_url'] = entity.avatarSubscriptUrl;
  data['tv_vip_status'] = entity.tvVipStatus;
  data['tv_vip_pay_type'] = entity.tvVipPayType;
  data['tv_due_date'] = entity.tvDueDate;
  return data;
}

extension UserInfoVipExtension on UserInfoVip {
  UserInfoVip copyWith({
    int? type,
    int? status,
    int? dueDate,
    int? vipPayType,
    int? themeType,
    UserInfoVipLabel? label,
    int? avatarSubscript,
    String? nicknameColor,
    int? role,
    String? avatarSubscriptUrl,
    int? tvVipStatus,
    int? tvVipPayType,
    int? tvDueDate,
  }) {
    return UserInfoVip()
      ..type = type ?? this.type
      ..status = status ?? this.status
      ..dueDate = dueDate ?? this.dueDate
      ..vipPayType = vipPayType ?? this.vipPayType
      ..themeType = themeType ?? this.themeType
      ..label = label ?? this.label
      ..avatarSubscript = avatarSubscript ?? this.avatarSubscript
      ..nicknameColor = nicknameColor ?? this.nicknameColor
      ..role = role ?? this.role
      ..avatarSubscriptUrl = avatarSubscriptUrl ?? this.avatarSubscriptUrl
      ..tvVipStatus = tvVipStatus ?? this.tvVipStatus
      ..tvVipPayType = tvVipPayType ?? this.tvVipPayType
      ..tvDueDate = tvDueDate ?? this.tvDueDate;
  }
}

UserInfoWallet $UserInfoWalletFromJson(Map<String, dynamic> json) {
  final UserInfoWallet userInfoWallet = UserInfoWallet();
  final int? mid = jsonConvert.convert<int>(json['mid']);
  if (mid != null) {
    userInfoWallet.mid = mid;
  }
  final int? bcoinBalance = jsonConvert.convert<int>(json['bcoin_balance']);
  if (bcoinBalance != null) {
    userInfoWallet.bcoinBalance = bcoinBalance;
  }
  final int? couponBalance = jsonConvert.convert<int>(json['coupon_balance']);
  if (couponBalance != null) {
    userInfoWallet.couponBalance = couponBalance;
  }
  final int? couponDueTime = jsonConvert.convert<int>(json['coupon_due_time']);
  if (couponDueTime != null) {
    userInfoWallet.couponDueTime = couponDueTime;
  }
  return userInfoWallet;
}

Map<String, dynamic> $UserInfoWalletToJson(UserInfoWallet entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mid'] = entity.mid;
  data['bcoin_balance'] = entity.bcoinBalance;
  data['coupon_balance'] = entity.couponBalance;
  data['coupon_due_time'] = entity.couponDueTime;
  return data;
}

extension UserInfoWalletExtension on UserInfoWallet {
  UserInfoWallet copyWith({
    int? mid,
    int? bcoinBalance,
    int? couponBalance,
    int? couponDueTime,
  }) {
    return UserInfoWallet()
      ..mid = mid ?? this.mid
      ..bcoinBalance = bcoinBalance ?? this.bcoinBalance
      ..couponBalance = couponBalance ?? this.couponBalance
      ..couponDueTime = couponDueTime ?? this.couponDueTime;
  }
}

UserInfoWbiImg $UserInfoWbiImgFromJson(Map<String, dynamic> json) {
  final UserInfoWbiImg userInfoWbiImg = UserInfoWbiImg();
  final String? imgUrl = jsonConvert.convert<String>(json['img_url']);
  if (imgUrl != null) {
    userInfoWbiImg.imgUrl = imgUrl;
  }
  final String? subUrl = jsonConvert.convert<String>(json['sub_url']);
  if (subUrl != null) {
    userInfoWbiImg.subUrl = subUrl;
  }
  return userInfoWbiImg;
}

Map<String, dynamic> $UserInfoWbiImgToJson(UserInfoWbiImg entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['img_url'] = entity.imgUrl;
  data['sub_url'] = entity.subUrl;
  return data;
}

extension UserInfoWbiImgExtension on UserInfoWbiImg {
  UserInfoWbiImg copyWith({
    String? imgUrl,
    String? subUrl,
  }) {
    return UserInfoWbiImg()
      ..imgUrl = imgUrl ?? this.imgUrl
      ..subUrl = subUrl ?? this.subUrl;
  }
}