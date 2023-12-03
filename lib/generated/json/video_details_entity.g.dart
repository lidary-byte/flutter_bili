import 'package:flutter_bili/generated/json/base/json_convert_content.dart';
import 'package:flutter_bili/http/entity/video_details_entity.dart';

VideoDetailsEntity $VideoDetailsEntityFromJson(Map<String, dynamic> json) {
  final VideoDetailsEntity videoDetailsEntity = VideoDetailsEntity();
  final String? bvid = jsonConvert.convert<String>(json['bvid']);
  if (bvid != null) {
    videoDetailsEntity.bvid = bvid;
  }
  final int? aid = jsonConvert.convert<int>(json['aid']);
  if (aid != null) {
    videoDetailsEntity.aid = aid;
  }
  final int? videos = jsonConvert.convert<int>(json['videos']);
  if (videos != null) {
    videoDetailsEntity.videos = videos;
  }
  final int? tid = jsonConvert.convert<int>(json['tid']);
  if (tid != null) {
    videoDetailsEntity.tid = tid;
  }
  final String? tname = jsonConvert.convert<String>(json['tname']);
  if (tname != null) {
    videoDetailsEntity.tname = tname;
  }
  final int? copyright = jsonConvert.convert<int>(json['copyright']);
  if (copyright != null) {
    videoDetailsEntity.copyright = copyright;
  }
  final String? pic = jsonConvert.convert<String>(json['pic']);
  if (pic != null) {
    videoDetailsEntity.pic = pic;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    videoDetailsEntity.title = title;
  }
  final int? pubdate = jsonConvert.convert<int>(json['pubdate']);
  if (pubdate != null) {
    videoDetailsEntity.pubdate = pubdate;
  }
  final int? ctime = jsonConvert.convert<int>(json['ctime']);
  if (ctime != null) {
    videoDetailsEntity.ctime = ctime;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    videoDetailsEntity.desc = desc;
  }
  final List<VideoDetailsDescV2>? descV2 = (json['desc_v2'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<VideoDetailsDescV2>(e) as VideoDetailsDescV2)
      .toList();
  if (descV2 != null) {
    videoDetailsEntity.descV2 = descV2;
  }
  final int? state = jsonConvert.convert<int>(json['state']);
  if (state != null) {
    videoDetailsEntity.state = state;
  }
  final int? duration = jsonConvert.convert<int>(json['duration']);
  if (duration != null) {
    videoDetailsEntity.duration = duration;
  }
  final int? missionId = jsonConvert.convert<int>(json['mission_id']);
  if (missionId != null) {
    videoDetailsEntity.missionId = missionId;
  }
  final VideoDetailsRights? rights = jsonConvert.convert<VideoDetailsRights>(
      json['rights']);
  if (rights != null) {
    videoDetailsEntity.rights = rights;
  }
  final VideoDetailsOwner? owner = jsonConvert.convert<VideoDetailsOwner>(
      json['owner']);
  if (owner != null) {
    videoDetailsEntity.owner = owner;
  }
  final VideoDetailsStat? stat = jsonConvert.convert<VideoDetailsStat>(
      json['stat']);
  if (stat != null) {
    videoDetailsEntity.stat = stat;
  }
  final String? dynamicString = jsonConvert.convert<String>(json['dynamic']);
  if (dynamicString != null) {
    videoDetailsEntity.dynamicString = dynamicString;
  }
  final int? cid = jsonConvert.convert<int>(json['cid']);
  if (cid != null) {
    videoDetailsEntity.cid = cid;
  }
  final VideoDetailsDimension? dimension = jsonConvert.convert<
      VideoDetailsDimension>(json['dimension']);
  if (dimension != null) {
    videoDetailsEntity.dimension = dimension;
  }
  final dynamic premiere = json['premiere'];
  if (premiere != null) {
    videoDetailsEntity.premiere = premiere;
  }
  final int? teenageMode = jsonConvert.convert<int>(json['teenage_mode']);
  if (teenageMode != null) {
    videoDetailsEntity.teenageMode = teenageMode;
  }
  final bool? isChargeableSeason = jsonConvert.convert<bool>(
      json['is_chargeable_season']);
  if (isChargeableSeason != null) {
    videoDetailsEntity.isChargeableSeason = isChargeableSeason;
  }
  final bool? isStory = jsonConvert.convert<bool>(json['is_story']);
  if (isStory != null) {
    videoDetailsEntity.isStory = isStory;
  }
  final bool? isUpowerExclusive = jsonConvert.convert<bool>(
      json['is_upower_exclusive']);
  if (isUpowerExclusive != null) {
    videoDetailsEntity.isUpowerExclusive = isUpowerExclusive;
  }
  final bool? isUpowerPlay = jsonConvert.convert<bool>(json['is_upower_play']);
  if (isUpowerPlay != null) {
    videoDetailsEntity.isUpowerPlay = isUpowerPlay;
  }
  final int? enableVt = jsonConvert.convert<int>(json['enable_vt']);
  if (enableVt != null) {
    videoDetailsEntity.enableVt = enableVt;
  }
  final String? vtDisplay = jsonConvert.convert<String>(json['vt_display']);
  if (vtDisplay != null) {
    videoDetailsEntity.vtDisplay = vtDisplay;
  }
  final bool? noCache = jsonConvert.convert<bool>(json['no_cache']);
  if (noCache != null) {
    videoDetailsEntity.noCache = noCache;
  }
  final List<VideoDetailsPages>? pages = (json['pages'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<VideoDetailsPages>(e) as VideoDetailsPages)
      .toList();
  if (pages != null) {
    videoDetailsEntity.pages = pages;
  }
  final VideoDetailsSubtitle? subtitle = jsonConvert.convert<
      VideoDetailsSubtitle>(json['subtitle']);
  if (subtitle != null) {
    videoDetailsEntity.subtitle = subtitle;
  }
  final List<VideoDetailsStaff>? staff = (json['staff'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<VideoDetailsStaff>(e) as VideoDetailsStaff)
      .toList();
  if (staff != null) {
    videoDetailsEntity.staff = staff;
  }
  final bool? isSeasonDisplay = jsonConvert.convert<bool>(
      json['is_season_display']);
  if (isSeasonDisplay != null) {
    videoDetailsEntity.isSeasonDisplay = isSeasonDisplay;
  }
  final VideoDetailsUserGarb? userGarb = jsonConvert.convert<
      VideoDetailsUserGarb>(json['user_garb']);
  if (userGarb != null) {
    videoDetailsEntity.userGarb = userGarb;
  }
  final VideoDetailsHonorReply? honorReply = jsonConvert.convert<
      VideoDetailsHonorReply>(json['honor_reply']);
  if (honorReply != null) {
    videoDetailsEntity.honorReply = honorReply;
  }
  final String? likeIcon = jsonConvert.convert<String>(json['like_icon']);
  if (likeIcon != null) {
    videoDetailsEntity.likeIcon = likeIcon;
  }
  final bool? needJumpBv = jsonConvert.convert<bool>(json['need_jump_bv']);
  if (needJumpBv != null) {
    videoDetailsEntity.needJumpBv = needJumpBv;
  }
  final bool? disableShowUpInfo = jsonConvert.convert<bool>(
      json['disable_show_up_info']);
  if (disableShowUpInfo != null) {
    videoDetailsEntity.disableShowUpInfo = disableShowUpInfo;
  }
  return videoDetailsEntity;
}

Map<String, dynamic> $VideoDetailsEntityToJson(VideoDetailsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['bvid'] = entity.bvid;
  data['aid'] = entity.aid;
  data['videos'] = entity.videos;
  data['tid'] = entity.tid;
  data['tname'] = entity.tname;
  data['copyright'] = entity.copyright;
  data['pic'] = entity.pic;
  data['title'] = entity.title;
  data['pubdate'] = entity.pubdate;
  data['ctime'] = entity.ctime;
  data['desc'] = entity.desc;
  data['desc_v2'] = entity.descV2?.map((v) => v.toJson()).toList();
  data['state'] = entity.state;
  data['duration'] = entity.duration;
  data['mission_id'] = entity.missionId;
  data['rights'] = entity.rights?.toJson();
  data['owner'] = entity.owner?.toJson();
  data['stat'] = entity.stat?.toJson();
  data['dynamic'] = entity.dynamicString;
  data['cid'] = entity.cid;
  data['dimension'] = entity.dimension?.toJson();
  data['premiere'] = entity.premiere;
  data['teenage_mode'] = entity.teenageMode;
  data['is_chargeable_season'] = entity.isChargeableSeason;
  data['is_story'] = entity.isStory;
  data['is_upower_exclusive'] = entity.isUpowerExclusive;
  data['is_upower_play'] = entity.isUpowerPlay;
  data['enable_vt'] = entity.enableVt;
  data['vt_display'] = entity.vtDisplay;
  data['no_cache'] = entity.noCache;
  data['pages'] = entity.pages?.map((v) => v.toJson()).toList();
  data['subtitle'] = entity.subtitle?.toJson();
  data['staff'] = entity.staff?.map((v) => v.toJson()).toList();
  data['is_season_display'] = entity.isSeasonDisplay;
  data['user_garb'] = entity.userGarb?.toJson();
  data['honor_reply'] = entity.honorReply?.toJson();
  data['like_icon'] = entity.likeIcon;
  data['need_jump_bv'] = entity.needJumpBv;
  data['disable_show_up_info'] = entity.disableShowUpInfo;
  return data;
}

extension VideoDetailsEntityExtension on VideoDetailsEntity {
  VideoDetailsEntity copyWith({
    String? bvid,
    int? aid,
    int? videos,
    int? tid,
    String? tname,
    int? copyright,
    String? pic,
    String? title,
    int? pubdate,
    int? ctime,
    String? desc,
    List<VideoDetailsDescV2>? descV2,
    int? state,
    int? duration,
    int? missionId,
    VideoDetailsRights? rights,
    VideoDetailsOwner? owner,
    VideoDetailsStat? stat,
    String? dynamicString,
    int? cid,
    VideoDetailsDimension? dimension,
    dynamic premiere,
    int? teenageMode,
    bool? isChargeableSeason,
    bool? isStory,
    bool? isUpowerExclusive,
    bool? isUpowerPlay,
    int? enableVt,
    String? vtDisplay,
    bool? noCache,
    List<VideoDetailsPages>? pages,
    VideoDetailsSubtitle? subtitle,
    List<VideoDetailsStaff>? staff,
    bool? isSeasonDisplay,
    VideoDetailsUserGarb? userGarb,
    VideoDetailsHonorReply? honorReply,
    String? likeIcon,
    bool? needJumpBv,
    bool? disableShowUpInfo,
  }) {
    return VideoDetailsEntity()
      ..bvid = bvid ?? this.bvid
      ..aid = aid ?? this.aid
      ..videos = videos ?? this.videos
      ..tid = tid ?? this.tid
      ..tname = tname ?? this.tname
      ..copyright = copyright ?? this.copyright
      ..pic = pic ?? this.pic
      ..title = title ?? this.title
      ..pubdate = pubdate ?? this.pubdate
      ..ctime = ctime ?? this.ctime
      ..desc = desc ?? this.desc
      ..descV2 = descV2 ?? this.descV2
      ..state = state ?? this.state
      ..duration = duration ?? this.duration
      ..missionId = missionId ?? this.missionId
      ..rights = rights ?? this.rights
      ..owner = owner ?? this.owner
      ..stat = stat ?? this.stat
      ..dynamicString = dynamicString ?? this.dynamicString
      ..cid = cid ?? this.cid
      ..dimension = dimension ?? this.dimension
      ..premiere = premiere ?? this.premiere
      ..teenageMode = teenageMode ?? this.teenageMode
      ..isChargeableSeason = isChargeableSeason ?? this.isChargeableSeason
      ..isStory = isStory ?? this.isStory
      ..isUpowerExclusive = isUpowerExclusive ?? this.isUpowerExclusive
      ..isUpowerPlay = isUpowerPlay ?? this.isUpowerPlay
      ..enableVt = enableVt ?? this.enableVt
      ..vtDisplay = vtDisplay ?? this.vtDisplay
      ..noCache = noCache ?? this.noCache
      ..pages = pages ?? this.pages
      ..subtitle = subtitle ?? this.subtitle
      ..staff = staff ?? this.staff
      ..isSeasonDisplay = isSeasonDisplay ?? this.isSeasonDisplay
      ..userGarb = userGarb ?? this.userGarb
      ..honorReply = honorReply ?? this.honorReply
      ..likeIcon = likeIcon ?? this.likeIcon
      ..needJumpBv = needJumpBv ?? this.needJumpBv
      ..disableShowUpInfo = disableShowUpInfo ?? this.disableShowUpInfo;
  }
}

VideoDetailsDescV2 $VideoDetailsDescV2FromJson(Map<String, dynamic> json) {
  final VideoDetailsDescV2 videoDetailsDescV2 = VideoDetailsDescV2();
  final String? rawText = jsonConvert.convert<String>(json['raw_text']);
  if (rawText != null) {
    videoDetailsDescV2.rawText = rawText;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    videoDetailsDescV2.type = type;
  }
  final int? bizId = jsonConvert.convert<int>(json['biz_id']);
  if (bizId != null) {
    videoDetailsDescV2.bizId = bizId;
  }
  return videoDetailsDescV2;
}

Map<String, dynamic> $VideoDetailsDescV2ToJson(VideoDetailsDescV2 entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['raw_text'] = entity.rawText;
  data['type'] = entity.type;
  data['biz_id'] = entity.bizId;
  return data;
}

extension VideoDetailsDescV2Extension on VideoDetailsDescV2 {
  VideoDetailsDescV2 copyWith({
    String? rawText,
    int? type,
    int? bizId,
  }) {
    return VideoDetailsDescV2()
      ..rawText = rawText ?? this.rawText
      ..type = type ?? this.type
      ..bizId = bizId ?? this.bizId;
  }
}

VideoDetailsRights $VideoDetailsRightsFromJson(Map<String, dynamic> json) {
  final VideoDetailsRights videoDetailsRights = VideoDetailsRights();
  final int? bp = jsonConvert.convert<int>(json['bp']);
  if (bp != null) {
    videoDetailsRights.bp = bp;
  }
  final int? elec = jsonConvert.convert<int>(json['elec']);
  if (elec != null) {
    videoDetailsRights.elec = elec;
  }
  final int? download = jsonConvert.convert<int>(json['download']);
  if (download != null) {
    videoDetailsRights.download = download;
  }
  final int? movie = jsonConvert.convert<int>(json['movie']);
  if (movie != null) {
    videoDetailsRights.movie = movie;
  }
  final int? pay = jsonConvert.convert<int>(json['pay']);
  if (pay != null) {
    videoDetailsRights.pay = pay;
  }
  final int? hd5 = jsonConvert.convert<int>(json['hd5']);
  if (hd5 != null) {
    videoDetailsRights.hd5 = hd5;
  }
  final int? noReprint = jsonConvert.convert<int>(json['no_reprint']);
  if (noReprint != null) {
    videoDetailsRights.noReprint = noReprint;
  }
  final int? autoplay = jsonConvert.convert<int>(json['autoplay']);
  if (autoplay != null) {
    videoDetailsRights.autoplay = autoplay;
  }
  final int? ugcPay = jsonConvert.convert<int>(json['ugc_pay']);
  if (ugcPay != null) {
    videoDetailsRights.ugcPay = ugcPay;
  }
  final int? isCooperation = jsonConvert.convert<int>(json['is_cooperation']);
  if (isCooperation != null) {
    videoDetailsRights.isCooperation = isCooperation;
  }
  final int? ugcPayPreview = jsonConvert.convert<int>(json['ugc_pay_preview']);
  if (ugcPayPreview != null) {
    videoDetailsRights.ugcPayPreview = ugcPayPreview;
  }
  final int? noBackground = jsonConvert.convert<int>(json['no_background']);
  if (noBackground != null) {
    videoDetailsRights.noBackground = noBackground;
  }
  final int? cleanMode = jsonConvert.convert<int>(json['clean_mode']);
  if (cleanMode != null) {
    videoDetailsRights.cleanMode = cleanMode;
  }
  final int? isSteinGate = jsonConvert.convert<int>(json['is_stein_gate']);
  if (isSteinGate != null) {
    videoDetailsRights.isSteinGate = isSteinGate;
  }
  final int? is360 = jsonConvert.convert<int>(json['is_360']);
  if (is360 != null) {
    videoDetailsRights.is360 = is360;
  }
  final int? noShare = jsonConvert.convert<int>(json['no_share']);
  if (noShare != null) {
    videoDetailsRights.noShare = noShare;
  }
  final int? arcPay = jsonConvert.convert<int>(json['arc_pay']);
  if (arcPay != null) {
    videoDetailsRights.arcPay = arcPay;
  }
  final int? freeWatch = jsonConvert.convert<int>(json['free_watch']);
  if (freeWatch != null) {
    videoDetailsRights.freeWatch = freeWatch;
  }
  return videoDetailsRights;
}

Map<String, dynamic> $VideoDetailsRightsToJson(VideoDetailsRights entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['bp'] = entity.bp;
  data['elec'] = entity.elec;
  data['download'] = entity.download;
  data['movie'] = entity.movie;
  data['pay'] = entity.pay;
  data['hd5'] = entity.hd5;
  data['no_reprint'] = entity.noReprint;
  data['autoplay'] = entity.autoplay;
  data['ugc_pay'] = entity.ugcPay;
  data['is_cooperation'] = entity.isCooperation;
  data['ugc_pay_preview'] = entity.ugcPayPreview;
  data['no_background'] = entity.noBackground;
  data['clean_mode'] = entity.cleanMode;
  data['is_stein_gate'] = entity.isSteinGate;
  data['is_360'] = entity.is360;
  data['no_share'] = entity.noShare;
  data['arc_pay'] = entity.arcPay;
  data['free_watch'] = entity.freeWatch;
  return data;
}

extension VideoDetailsRightsExtension on VideoDetailsRights {
  VideoDetailsRights copyWith({
    int? bp,
    int? elec,
    int? download,
    int? movie,
    int? pay,
    int? hd5,
    int? noReprint,
    int? autoplay,
    int? ugcPay,
    int? isCooperation,
    int? ugcPayPreview,
    int? noBackground,
    int? cleanMode,
    int? isSteinGate,
    int? is360,
    int? noShare,
    int? arcPay,
    int? freeWatch,
  }) {
    return VideoDetailsRights()
      ..bp = bp ?? this.bp
      ..elec = elec ?? this.elec
      ..download = download ?? this.download
      ..movie = movie ?? this.movie
      ..pay = pay ?? this.pay
      ..hd5 = hd5 ?? this.hd5
      ..noReprint = noReprint ?? this.noReprint
      ..autoplay = autoplay ?? this.autoplay
      ..ugcPay = ugcPay ?? this.ugcPay
      ..isCooperation = isCooperation ?? this.isCooperation
      ..ugcPayPreview = ugcPayPreview ?? this.ugcPayPreview
      ..noBackground = noBackground ?? this.noBackground
      ..cleanMode = cleanMode ?? this.cleanMode
      ..isSteinGate = isSteinGate ?? this.isSteinGate
      ..is360 = is360 ?? this.is360
      ..noShare = noShare ?? this.noShare
      ..arcPay = arcPay ?? this.arcPay
      ..freeWatch = freeWatch ?? this.freeWatch;
  }
}

VideoDetailsOwner $VideoDetailsOwnerFromJson(Map<String, dynamic> json) {
  final VideoDetailsOwner videoDetailsOwner = VideoDetailsOwner();
  final int? mid = jsonConvert.convert<int>(json['mid']);
  if (mid != null) {
    videoDetailsOwner.mid = mid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    videoDetailsOwner.name = name;
  }
  final String? face = jsonConvert.convert<String>(json['face']);
  if (face != null) {
    videoDetailsOwner.face = face;
  }
  return videoDetailsOwner;
}

Map<String, dynamic> $VideoDetailsOwnerToJson(VideoDetailsOwner entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mid'] = entity.mid;
  data['name'] = entity.name;
  data['face'] = entity.face;
  return data;
}

extension VideoDetailsOwnerExtension on VideoDetailsOwner {
  VideoDetailsOwner copyWith({
    int? mid,
    String? name,
    String? face,
  }) {
    return VideoDetailsOwner()
      ..mid = mid ?? this.mid
      ..name = name ?? this.name
      ..face = face ?? this.face;
  }
}

VideoDetailsStat $VideoDetailsStatFromJson(Map<String, dynamic> json) {
  final VideoDetailsStat videoDetailsStat = VideoDetailsStat();
  final int? aid = jsonConvert.convert<int>(json['aid']);
  if (aid != null) {
    videoDetailsStat.aid = aid;
  }
  final int? view = jsonConvert.convert<int>(json['view']);
  if (view != null) {
    videoDetailsStat.view = view;
  }
  final int? danmaku = jsonConvert.convert<int>(json['danmaku']);
  if (danmaku != null) {
    videoDetailsStat.danmaku = danmaku;
  }
  final int? reply = jsonConvert.convert<int>(json['reply']);
  if (reply != null) {
    videoDetailsStat.reply = reply;
  }
  final int? favorite = jsonConvert.convert<int>(json['favorite']);
  if (favorite != null) {
    videoDetailsStat.favorite = favorite;
  }
  final int? coin = jsonConvert.convert<int>(json['coin']);
  if (coin != null) {
    videoDetailsStat.coin = coin;
  }
  final int? share = jsonConvert.convert<int>(json['share']);
  if (share != null) {
    videoDetailsStat.share = share;
  }
  final int? nowRank = jsonConvert.convert<int>(json['now_rank']);
  if (nowRank != null) {
    videoDetailsStat.nowRank = nowRank;
  }
  final int? hisRank = jsonConvert.convert<int>(json['his_rank']);
  if (hisRank != null) {
    videoDetailsStat.hisRank = hisRank;
  }
  final int? like = jsonConvert.convert<int>(json['like']);
  if (like != null) {
    videoDetailsStat.like = like;
  }
  final int? dislike = jsonConvert.convert<int>(json['dislike']);
  if (dislike != null) {
    videoDetailsStat.dislike = dislike;
  }
  final String? evaluation = jsonConvert.convert<String>(json['evaluation']);
  if (evaluation != null) {
    videoDetailsStat.evaluation = evaluation;
  }
  final String? argueMsg = jsonConvert.convert<String>(json['argue_msg']);
  if (argueMsg != null) {
    videoDetailsStat.argueMsg = argueMsg;
  }
  final int? vt = jsonConvert.convert<int>(json['vt']);
  if (vt != null) {
    videoDetailsStat.vt = vt;
  }
  return videoDetailsStat;
}

Map<String, dynamic> $VideoDetailsStatToJson(VideoDetailsStat entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['aid'] = entity.aid;
  data['view'] = entity.view;
  data['danmaku'] = entity.danmaku;
  data['reply'] = entity.reply;
  data['favorite'] = entity.favorite;
  data['coin'] = entity.coin;
  data['share'] = entity.share;
  data['now_rank'] = entity.nowRank;
  data['his_rank'] = entity.hisRank;
  data['like'] = entity.like;
  data['dislike'] = entity.dislike;
  data['evaluation'] = entity.evaluation;
  data['argue_msg'] = entity.argueMsg;
  data['vt'] = entity.vt;
  return data;
}

extension VideoDetailsStatExtension on VideoDetailsStat {
  VideoDetailsStat copyWith({
    int? aid,
    int? view,
    int? danmaku,
    int? reply,
    int? favorite,
    int? coin,
    int? share,
    int? nowRank,
    int? hisRank,
    int? like,
    int? dislike,
    String? evaluation,
    String? argueMsg,
    int? vt,
  }) {
    return VideoDetailsStat()
      ..aid = aid ?? this.aid
      ..view = view ?? this.view
      ..danmaku = danmaku ?? this.danmaku
      ..reply = reply ?? this.reply
      ..favorite = favorite ?? this.favorite
      ..coin = coin ?? this.coin
      ..share = share ?? this.share
      ..nowRank = nowRank ?? this.nowRank
      ..hisRank = hisRank ?? this.hisRank
      ..like = like ?? this.like
      ..dislike = dislike ?? this.dislike
      ..evaluation = evaluation ?? this.evaluation
      ..argueMsg = argueMsg ?? this.argueMsg
      ..vt = vt ?? this.vt;
  }
}

VideoDetailsDimension $VideoDetailsDimensionFromJson(
    Map<String, dynamic> json) {
  final VideoDetailsDimension videoDetailsDimension = VideoDetailsDimension();
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    videoDetailsDimension.width = width;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    videoDetailsDimension.height = height;
  }
  final int? rotate = jsonConvert.convert<int>(json['rotate']);
  if (rotate != null) {
    videoDetailsDimension.rotate = rotate;
  }
  return videoDetailsDimension;
}

Map<String, dynamic> $VideoDetailsDimensionToJson(
    VideoDetailsDimension entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['width'] = entity.width;
  data['height'] = entity.height;
  data['rotate'] = entity.rotate;
  return data;
}

extension VideoDetailsDimensionExtension on VideoDetailsDimension {
  VideoDetailsDimension copyWith({
    int? width,
    int? height,
    int? rotate,
  }) {
    return VideoDetailsDimension()
      ..width = width ?? this.width
      ..height = height ?? this.height
      ..rotate = rotate ?? this.rotate;
  }
}

VideoDetailsPages $VideoDetailsPagesFromJson(Map<String, dynamic> json) {
  final VideoDetailsPages videoDetailsPages = VideoDetailsPages();
  final int? cid = jsonConvert.convert<int>(json['cid']);
  if (cid != null) {
    videoDetailsPages.cid = cid;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    videoDetailsPages.page = page;
  }
  final String? from = jsonConvert.convert<String>(json['from']);
  if (from != null) {
    videoDetailsPages.from = from;
  }
  final String? part = jsonConvert.convert<String>(json['part']);
  if (part != null) {
    videoDetailsPages.part = part;
  }
  final int? duration = jsonConvert.convert<int>(json['duration']);
  if (duration != null) {
    videoDetailsPages.duration = duration;
  }
  final String? vid = jsonConvert.convert<String>(json['vid']);
  if (vid != null) {
    videoDetailsPages.vid = vid;
  }
  final String? weblink = jsonConvert.convert<String>(json['weblink']);
  if (weblink != null) {
    videoDetailsPages.weblink = weblink;
  }
  final VideoDetailsPagesDimension? dimension = jsonConvert.convert<
      VideoDetailsPagesDimension>(json['dimension']);
  if (dimension != null) {
    videoDetailsPages.dimension = dimension;
  }
  return videoDetailsPages;
}

Map<String, dynamic> $VideoDetailsPagesToJson(VideoDetailsPages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['cid'] = entity.cid;
  data['page'] = entity.page;
  data['from'] = entity.from;
  data['part'] = entity.part;
  data['duration'] = entity.duration;
  data['vid'] = entity.vid;
  data['weblink'] = entity.weblink;
  data['dimension'] = entity.dimension?.toJson();
  return data;
}

extension VideoDetailsPagesExtension on VideoDetailsPages {
  VideoDetailsPages copyWith({
    int? cid,
    int? page,
    String? from,
    String? part,
    int? duration,
    String? vid,
    String? weblink,
    VideoDetailsPagesDimension? dimension,
  }) {
    return VideoDetailsPages()
      ..cid = cid ?? this.cid
      ..page = page ?? this.page
      ..from = from ?? this.from
      ..part = part ?? this.part
      ..duration = duration ?? this.duration
      ..vid = vid ?? this.vid
      ..weblink = weblink ?? this.weblink
      ..dimension = dimension ?? this.dimension;
  }
}

VideoDetailsPagesDimension $VideoDetailsPagesDimensionFromJson(
    Map<String, dynamic> json) {
  final VideoDetailsPagesDimension videoDetailsPagesDimension = VideoDetailsPagesDimension();
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    videoDetailsPagesDimension.width = width;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    videoDetailsPagesDimension.height = height;
  }
  final int? rotate = jsonConvert.convert<int>(json['rotate']);
  if (rotate != null) {
    videoDetailsPagesDimension.rotate = rotate;
  }
  return videoDetailsPagesDimension;
}

Map<String, dynamic> $VideoDetailsPagesDimensionToJson(
    VideoDetailsPagesDimension entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['width'] = entity.width;
  data['height'] = entity.height;
  data['rotate'] = entity.rotate;
  return data;
}

extension VideoDetailsPagesDimensionExtension on VideoDetailsPagesDimension {
  VideoDetailsPagesDimension copyWith({
    int? width,
    int? height,
    int? rotate,
  }) {
    return VideoDetailsPagesDimension()
      ..width = width ?? this.width
      ..height = height ?? this.height
      ..rotate = rotate ?? this.rotate;
  }
}

VideoDetailsSubtitle $VideoDetailsSubtitleFromJson(Map<String, dynamic> json) {
  final VideoDetailsSubtitle videoDetailsSubtitle = VideoDetailsSubtitle();
  final bool? allowSubmit = jsonConvert.convert<bool>(json['allow_submit']);
  if (allowSubmit != null) {
    videoDetailsSubtitle.allowSubmit = allowSubmit;
  }
  final List<VideoDetailsSubtitleList>? list = (json['list'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<VideoDetailsSubtitleList>(
          e) as VideoDetailsSubtitleList)
      .toList();
  if (list != null) {
    videoDetailsSubtitle.list = list;
  }
  return videoDetailsSubtitle;
}

Map<String, dynamic> $VideoDetailsSubtitleToJson(VideoDetailsSubtitle entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['allow_submit'] = entity.allowSubmit;
  data['list'] = entity.list?.map((v) => v.toJson()).toList();
  return data;
}

extension VideoDetailsSubtitleExtension on VideoDetailsSubtitle {
  VideoDetailsSubtitle copyWith({
    bool? allowSubmit,
    List<VideoDetailsSubtitleList>? list,
  }) {
    return VideoDetailsSubtitle()
      ..allowSubmit = allowSubmit ?? this.allowSubmit
      ..list = list ?? this.list;
  }
}

VideoDetailsSubtitleList $VideoDetailsSubtitleListFromJson(
    Map<String, dynamic> json) {
  final VideoDetailsSubtitleList videoDetailsSubtitleList = VideoDetailsSubtitleList();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    videoDetailsSubtitleList.id = id;
  }
  final String? lan = jsonConvert.convert<String>(json['lan']);
  if (lan != null) {
    videoDetailsSubtitleList.lan = lan;
  }
  final String? lanDoc = jsonConvert.convert<String>(json['lan_doc']);
  if (lanDoc != null) {
    videoDetailsSubtitleList.lanDoc = lanDoc;
  }
  final bool? isLock = jsonConvert.convert<bool>(json['is_lock']);
  if (isLock != null) {
    videoDetailsSubtitleList.isLock = isLock;
  }
  final String? subtitleUrl = jsonConvert.convert<String>(json['subtitle_url']);
  if (subtitleUrl != null) {
    videoDetailsSubtitleList.subtitleUrl = subtitleUrl;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    videoDetailsSubtitleList.type = type;
  }
  final String? idStr = jsonConvert.convert<String>(json['id_str']);
  if (idStr != null) {
    videoDetailsSubtitleList.idStr = idStr;
  }
  final int? aiType = jsonConvert.convert<int>(json['ai_type']);
  if (aiType != null) {
    videoDetailsSubtitleList.aiType = aiType;
  }
  final int? aiStatus = jsonConvert.convert<int>(json['ai_status']);
  if (aiStatus != null) {
    videoDetailsSubtitleList.aiStatus = aiStatus;
  }
  final VideoDetailsSubtitleListAuthor? author = jsonConvert.convert<
      VideoDetailsSubtitleListAuthor>(json['author']);
  if (author != null) {
    videoDetailsSubtitleList.author = author;
  }
  return videoDetailsSubtitleList;
}

Map<String, dynamic> $VideoDetailsSubtitleListToJson(
    VideoDetailsSubtitleList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['lan'] = entity.lan;
  data['lan_doc'] = entity.lanDoc;
  data['is_lock'] = entity.isLock;
  data['subtitle_url'] = entity.subtitleUrl;
  data['type'] = entity.type;
  data['id_str'] = entity.idStr;
  data['ai_type'] = entity.aiType;
  data['ai_status'] = entity.aiStatus;
  data['author'] = entity.author?.toJson();
  return data;
}

extension VideoDetailsSubtitleListExtension on VideoDetailsSubtitleList {
  VideoDetailsSubtitleList copyWith({
    int? id,
    String? lan,
    String? lanDoc,
    bool? isLock,
    String? subtitleUrl,
    int? type,
    String? idStr,
    int? aiType,
    int? aiStatus,
    VideoDetailsSubtitleListAuthor? author,
  }) {
    return VideoDetailsSubtitleList()
      ..id = id ?? this.id
      ..lan = lan ?? this.lan
      ..lanDoc = lanDoc ?? this.lanDoc
      ..isLock = isLock ?? this.isLock
      ..subtitleUrl = subtitleUrl ?? this.subtitleUrl
      ..type = type ?? this.type
      ..idStr = idStr ?? this.idStr
      ..aiType = aiType ?? this.aiType
      ..aiStatus = aiStatus ?? this.aiStatus
      ..author = author ?? this.author;
  }
}

VideoDetailsSubtitleListAuthor $VideoDetailsSubtitleListAuthorFromJson(
    Map<String, dynamic> json) {
  final VideoDetailsSubtitleListAuthor videoDetailsSubtitleListAuthor = VideoDetailsSubtitleListAuthor();
  final int? mid = jsonConvert.convert<int>(json['mid']);
  if (mid != null) {
    videoDetailsSubtitleListAuthor.mid = mid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    videoDetailsSubtitleListAuthor.name = name;
  }
  final String? sex = jsonConvert.convert<String>(json['sex']);
  if (sex != null) {
    videoDetailsSubtitleListAuthor.sex = sex;
  }
  final String? face = jsonConvert.convert<String>(json['face']);
  if (face != null) {
    videoDetailsSubtitleListAuthor.face = face;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    videoDetailsSubtitleListAuthor.sign = sign;
  }
  final int? rank = jsonConvert.convert<int>(json['rank']);
  if (rank != null) {
    videoDetailsSubtitleListAuthor.rank = rank;
  }
  final int? birthday = jsonConvert.convert<int>(json['birthday']);
  if (birthday != null) {
    videoDetailsSubtitleListAuthor.birthday = birthday;
  }
  final int? isFakeAccount = jsonConvert.convert<int>(json['is_fake_account']);
  if (isFakeAccount != null) {
    videoDetailsSubtitleListAuthor.isFakeAccount = isFakeAccount;
  }
  final int? isDeleted = jsonConvert.convert<int>(json['is_deleted']);
  if (isDeleted != null) {
    videoDetailsSubtitleListAuthor.isDeleted = isDeleted;
  }
  final int? inRegAudit = jsonConvert.convert<int>(json['in_reg_audit']);
  if (inRegAudit != null) {
    videoDetailsSubtitleListAuthor.inRegAudit = inRegAudit;
  }
  final int? isSeniorMember = jsonConvert.convert<int>(
      json['is_senior_member']);
  if (isSeniorMember != null) {
    videoDetailsSubtitleListAuthor.isSeniorMember = isSeniorMember;
  }
  return videoDetailsSubtitleListAuthor;
}

Map<String, dynamic> $VideoDetailsSubtitleListAuthorToJson(
    VideoDetailsSubtitleListAuthor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mid'] = entity.mid;
  data['name'] = entity.name;
  data['sex'] = entity.sex;
  data['face'] = entity.face;
  data['sign'] = entity.sign;
  data['rank'] = entity.rank;
  data['birthday'] = entity.birthday;
  data['is_fake_account'] = entity.isFakeAccount;
  data['is_deleted'] = entity.isDeleted;
  data['in_reg_audit'] = entity.inRegAudit;
  data['is_senior_member'] = entity.isSeniorMember;
  return data;
}

extension VideoDetailsSubtitleListAuthorExtension on VideoDetailsSubtitleListAuthor {
  VideoDetailsSubtitleListAuthor copyWith({
    int? mid,
    String? name,
    String? sex,
    String? face,
    String? sign,
    int? rank,
    int? birthday,
    int? isFakeAccount,
    int? isDeleted,
    int? inRegAudit,
    int? isSeniorMember,
  }) {
    return VideoDetailsSubtitleListAuthor()
      ..mid = mid ?? this.mid
      ..name = name ?? this.name
      ..sex = sex ?? this.sex
      ..face = face ?? this.face
      ..sign = sign ?? this.sign
      ..rank = rank ?? this.rank
      ..birthday = birthday ?? this.birthday
      ..isFakeAccount = isFakeAccount ?? this.isFakeAccount
      ..isDeleted = isDeleted ?? this.isDeleted
      ..inRegAudit = inRegAudit ?? this.inRegAudit
      ..isSeniorMember = isSeniorMember ?? this.isSeniorMember;
  }
}

VideoDetailsStaff $VideoDetailsStaffFromJson(Map<String, dynamic> json) {
  final VideoDetailsStaff videoDetailsStaff = VideoDetailsStaff();
  final int? mid = jsonConvert.convert<int>(json['mid']);
  if (mid != null) {
    videoDetailsStaff.mid = mid;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    videoDetailsStaff.title = title;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    videoDetailsStaff.name = name;
  }
  final String? face = jsonConvert.convert<String>(json['face']);
  if (face != null) {
    videoDetailsStaff.face = face;
  }
  final VideoDetailsStaffVip? vip = jsonConvert.convert<VideoDetailsStaffVip>(
      json['vip']);
  if (vip != null) {
    videoDetailsStaff.vip = vip;
  }
  final VideoDetailsStaffOfficial? official = jsonConvert.convert<
      VideoDetailsStaffOfficial>(json['official']);
  if (official != null) {
    videoDetailsStaff.official = official;
  }
  final int? follower = jsonConvert.convert<int>(json['follower']);
  if (follower != null) {
    videoDetailsStaff.follower = follower;
  }
  final int? labelStyle = jsonConvert.convert<int>(json['label_style']);
  if (labelStyle != null) {
    videoDetailsStaff.labelStyle = labelStyle;
  }
  return videoDetailsStaff;
}

Map<String, dynamic> $VideoDetailsStaffToJson(VideoDetailsStaff entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mid'] = entity.mid;
  data['title'] = entity.title;
  data['name'] = entity.name;
  data['face'] = entity.face;
  data['vip'] = entity.vip?.toJson();
  data['official'] = entity.official?.toJson();
  data['follower'] = entity.follower;
  data['label_style'] = entity.labelStyle;
  return data;
}

extension VideoDetailsStaffExtension on VideoDetailsStaff {
  VideoDetailsStaff copyWith({
    int? mid,
    String? title,
    String? name,
    String? face,
    VideoDetailsStaffVip? vip,
    VideoDetailsStaffOfficial? official,
    int? follower,
    int? labelStyle,
  }) {
    return VideoDetailsStaff()
      ..mid = mid ?? this.mid
      ..title = title ?? this.title
      ..name = name ?? this.name
      ..face = face ?? this.face
      ..vip = vip ?? this.vip
      ..official = official ?? this.official
      ..follower = follower ?? this.follower
      ..labelStyle = labelStyle ?? this.labelStyle;
  }
}

VideoDetailsStaffVip $VideoDetailsStaffVipFromJson(Map<String, dynamic> json) {
  final VideoDetailsStaffVip videoDetailsStaffVip = VideoDetailsStaffVip();
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    videoDetailsStaffVip.type = type;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    videoDetailsStaffVip.status = status;
  }
  final int? dueDate = jsonConvert.convert<int>(json['due_date']);
  if (dueDate != null) {
    videoDetailsStaffVip.dueDate = dueDate;
  }
  final int? vipPayType = jsonConvert.convert<int>(json['vip_pay_type']);
  if (vipPayType != null) {
    videoDetailsStaffVip.vipPayType = vipPayType;
  }
  final int? themeType = jsonConvert.convert<int>(json['theme_type']);
  if (themeType != null) {
    videoDetailsStaffVip.themeType = themeType;
  }
  final VideoDetailsStaffVipLabel? label = jsonConvert.convert<
      VideoDetailsStaffVipLabel>(json['label']);
  if (label != null) {
    videoDetailsStaffVip.label = label;
  }
  final int? avatarSubscript = jsonConvert.convert<int>(
      json['avatar_subscript']);
  if (avatarSubscript != null) {
    videoDetailsStaffVip.avatarSubscript = avatarSubscript;
  }
  final String? nicknameColor = jsonConvert.convert<String>(
      json['nickname_color']);
  if (nicknameColor != null) {
    videoDetailsStaffVip.nicknameColor = nicknameColor;
  }
  final int? role = jsonConvert.convert<int>(json['role']);
  if (role != null) {
    videoDetailsStaffVip.role = role;
  }
  final String? avatarSubscriptUrl = jsonConvert.convert<String>(
      json['avatar_subscript_url']);
  if (avatarSubscriptUrl != null) {
    videoDetailsStaffVip.avatarSubscriptUrl = avatarSubscriptUrl;
  }
  final int? tvVipStatus = jsonConvert.convert<int>(json['tv_vip_status']);
  if (tvVipStatus != null) {
    videoDetailsStaffVip.tvVipStatus = tvVipStatus;
  }
  final int? tvVipPayType = jsonConvert.convert<int>(json['tv_vip_pay_type']);
  if (tvVipPayType != null) {
    videoDetailsStaffVip.tvVipPayType = tvVipPayType;
  }
  final int? tvDueDate = jsonConvert.convert<int>(json['tv_due_date']);
  if (tvDueDate != null) {
    videoDetailsStaffVip.tvDueDate = tvDueDate;
  }
  return videoDetailsStaffVip;
}

Map<String, dynamic> $VideoDetailsStaffVipToJson(VideoDetailsStaffVip entity) {
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

extension VideoDetailsStaffVipExtension on VideoDetailsStaffVip {
  VideoDetailsStaffVip copyWith({
    int? type,
    int? status,
    int? dueDate,
    int? vipPayType,
    int? themeType,
    VideoDetailsStaffVipLabel? label,
    int? avatarSubscript,
    String? nicknameColor,
    int? role,
    String? avatarSubscriptUrl,
    int? tvVipStatus,
    int? tvVipPayType,
    int? tvDueDate,
  }) {
    return VideoDetailsStaffVip()
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

VideoDetailsStaffVipLabel $VideoDetailsStaffVipLabelFromJson(
    Map<String, dynamic> json) {
  final VideoDetailsStaffVipLabel videoDetailsStaffVipLabel = VideoDetailsStaffVipLabel();
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    videoDetailsStaffVipLabel.path = path;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    videoDetailsStaffVipLabel.text = text;
  }
  final String? labelTheme = jsonConvert.convert<String>(json['label_theme']);
  if (labelTheme != null) {
    videoDetailsStaffVipLabel.labelTheme = labelTheme;
  }
  final String? textColor = jsonConvert.convert<String>(json['text_color']);
  if (textColor != null) {
    videoDetailsStaffVipLabel.textColor = textColor;
  }
  final int? bgStyle = jsonConvert.convert<int>(json['bg_style']);
  if (bgStyle != null) {
    videoDetailsStaffVipLabel.bgStyle = bgStyle;
  }
  final String? bgColor = jsonConvert.convert<String>(json['bg_color']);
  if (bgColor != null) {
    videoDetailsStaffVipLabel.bgColor = bgColor;
  }
  final String? borderColor = jsonConvert.convert<String>(json['border_color']);
  if (borderColor != null) {
    videoDetailsStaffVipLabel.borderColor = borderColor;
  }
  final bool? useImgLabel = jsonConvert.convert<bool>(json['use_img_label']);
  if (useImgLabel != null) {
    videoDetailsStaffVipLabel.useImgLabel = useImgLabel;
  }
  final String? imgLabelUriHans = jsonConvert.convert<String>(
      json['img_label_uri_hans']);
  if (imgLabelUriHans != null) {
    videoDetailsStaffVipLabel.imgLabelUriHans = imgLabelUriHans;
  }
  final String? imgLabelUriHant = jsonConvert.convert<String>(
      json['img_label_uri_hant']);
  if (imgLabelUriHant != null) {
    videoDetailsStaffVipLabel.imgLabelUriHant = imgLabelUriHant;
  }
  final String? imgLabelUriHansStatic = jsonConvert.convert<String>(
      json['img_label_uri_hans_static']);
  if (imgLabelUriHansStatic != null) {
    videoDetailsStaffVipLabel.imgLabelUriHansStatic = imgLabelUriHansStatic;
  }
  final String? imgLabelUriHantStatic = jsonConvert.convert<String>(
      json['img_label_uri_hant_static']);
  if (imgLabelUriHantStatic != null) {
    videoDetailsStaffVipLabel.imgLabelUriHantStatic = imgLabelUriHantStatic;
  }
  return videoDetailsStaffVipLabel;
}

Map<String, dynamic> $VideoDetailsStaffVipLabelToJson(
    VideoDetailsStaffVipLabel entity) {
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

extension VideoDetailsStaffVipLabelExtension on VideoDetailsStaffVipLabel {
  VideoDetailsStaffVipLabel copyWith({
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
    return VideoDetailsStaffVipLabel()
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

VideoDetailsStaffOfficial $VideoDetailsStaffOfficialFromJson(
    Map<String, dynamic> json) {
  final VideoDetailsStaffOfficial videoDetailsStaffOfficial = VideoDetailsStaffOfficial();
  final int? role = jsonConvert.convert<int>(json['role']);
  if (role != null) {
    videoDetailsStaffOfficial.role = role;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    videoDetailsStaffOfficial.title = title;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    videoDetailsStaffOfficial.desc = desc;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    videoDetailsStaffOfficial.type = type;
  }
  return videoDetailsStaffOfficial;
}

Map<String, dynamic> $VideoDetailsStaffOfficialToJson(
    VideoDetailsStaffOfficial entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['role'] = entity.role;
  data['title'] = entity.title;
  data['desc'] = entity.desc;
  data['type'] = entity.type;
  return data;
}

extension VideoDetailsStaffOfficialExtension on VideoDetailsStaffOfficial {
  VideoDetailsStaffOfficial copyWith({
    int? role,
    String? title,
    String? desc,
    int? type,
  }) {
    return VideoDetailsStaffOfficial()
      ..role = role ?? this.role
      ..title = title ?? this.title
      ..desc = desc ?? this.desc
      ..type = type ?? this.type;
  }
}

VideoDetailsUserGarb $VideoDetailsUserGarbFromJson(Map<String, dynamic> json) {
  final VideoDetailsUserGarb videoDetailsUserGarb = VideoDetailsUserGarb();
  final String? urlImageAniCut = jsonConvert.convert<String>(
      json['url_image_ani_cut']);
  if (urlImageAniCut != null) {
    videoDetailsUserGarb.urlImageAniCut = urlImageAniCut;
  }
  return videoDetailsUserGarb;
}

Map<String, dynamic> $VideoDetailsUserGarbToJson(VideoDetailsUserGarb entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url_image_ani_cut'] = entity.urlImageAniCut;
  return data;
}

extension VideoDetailsUserGarbExtension on VideoDetailsUserGarb {
  VideoDetailsUserGarb copyWith({
    String? urlImageAniCut,
  }) {
    return VideoDetailsUserGarb()
      ..urlImageAniCut = urlImageAniCut ?? this.urlImageAniCut;
  }
}

VideoDetailsHonorReply $VideoDetailsHonorReplyFromJson(
    Map<String, dynamic> json) {
  final VideoDetailsHonorReply videoDetailsHonorReply = VideoDetailsHonorReply();
  final List<VideoDetailsHonorReplyHonor>? honor = (json['honor'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<VideoDetailsHonorReplyHonor>(
          e) as VideoDetailsHonorReplyHonor).toList();
  if (honor != null) {
    videoDetailsHonorReply.honor = honor;
  }
  return videoDetailsHonorReply;
}

Map<String, dynamic> $VideoDetailsHonorReplyToJson(
    VideoDetailsHonorReply entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['honor'] = entity.honor?.map((v) => v.toJson()).toList();
  return data;
}

extension VideoDetailsHonorReplyExtension on VideoDetailsHonorReply {
  VideoDetailsHonorReply copyWith({
    List<VideoDetailsHonorReplyHonor>? honor,
  }) {
    return VideoDetailsHonorReply()
      ..honor = honor ?? this.honor;
  }
}

VideoDetailsHonorReplyHonor $VideoDetailsHonorReplyHonorFromJson(
    Map<String, dynamic> json) {
  final VideoDetailsHonorReplyHonor videoDetailsHonorReplyHonor = VideoDetailsHonorReplyHonor();
  final int? aid = jsonConvert.convert<int>(json['aid']);
  if (aid != null) {
    videoDetailsHonorReplyHonor.aid = aid;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    videoDetailsHonorReplyHonor.type = type;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    videoDetailsHonorReplyHonor.desc = desc;
  }
  final int? weeklyRecommendNum = jsonConvert.convert<int>(
      json['weekly_recommend_num']);
  if (weeklyRecommendNum != null) {
    videoDetailsHonorReplyHonor.weeklyRecommendNum = weeklyRecommendNum;
  }
  return videoDetailsHonorReplyHonor;
}

Map<String, dynamic> $VideoDetailsHonorReplyHonorToJson(
    VideoDetailsHonorReplyHonor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['aid'] = entity.aid;
  data['type'] = entity.type;
  data['desc'] = entity.desc;
  data['weekly_recommend_num'] = entity.weeklyRecommendNum;
  return data;
}

extension VideoDetailsHonorReplyHonorExtension on VideoDetailsHonorReplyHonor {
  VideoDetailsHonorReplyHonor copyWith({
    int? aid,
    int? type,
    String? desc,
    int? weeklyRecommendNum,
  }) {
    return VideoDetailsHonorReplyHonor()
      ..aid = aid ?? this.aid
      ..type = type ?? this.type
      ..desc = desc ?? this.desc
      ..weeklyRecommendNum = weeklyRecommendNum ?? this.weeklyRecommendNum;
  }
}