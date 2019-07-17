import 'package:json_annotation/json_annotation.dart';
part 'CardInfoModel.g.dart';

@JsonSerializable()
class CardInfoHomeTownModel {
  String id;

  /// 地址：省 市 区
  String address;

  /// 地址码：省/市/区
  String addressCode;

  /// 问候语
  String greetings;

  /// 问候图片
  String greetingsPic;

  CardInfoHomeTownModel(this.id, this.address, this.addressCode, this.greetings,
      this.greetingsPic);

  factory CardInfoHomeTownModel.fromJson(Map<String, dynamic> json) =>
      _$CardInfoHomeTownModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoHomeTownModelToJson(this);
}

@JsonSerializable()
class ColleagueModel {
  String cardId;
  String cardHeadImage;
  String cardName;
  String cardPosition;

  ColleagueModel(
      this.cardId, this.cardHeadImage, this.cardName, this.cardPosition);

  factory ColleagueModel.fromJson(Map<String, dynamic> json) =>
      _$ColleagueModelFromJson(json);

  Map<String, dynamic> toJson() => _$ColleagueModelToJson(this);
}

@JsonSerializable()
class CardInfoEducationModel {
  String school;
  String educationBackground;
  String greetings;
  String greetingsPic;
  String usedTime;
  String timeString;
  String major;
  String id;

  CardInfoEducationModel(this.school, this.educationBackground, this.greetings,
      this.greetingsPic, this.usedTime, this.timeString, this.major, this.id);

  factory CardInfoEducationModel.fromJson(Map<String, dynamic> json) =>
      _$CardInfoEducationModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoEducationModelToJson(this);
}

@JsonSerializable()
class CardInfoCommentModel {
  String id;
  String avatar;
  String cardId;
  String companyName;
  String content;

/* 状态 ‘实名认证’,0:未认证，1：认证 */
  int isAuth;
  String name;
  String position;
  String publishTime;

/* 在名片中显示,0:不显示，1：显示 */
  int showInCard;
  String stickTime;
  int thumbNum;
  String userId;

  /// 是否置顶（0：不置顶，1：置顶）
  int isStick;

  CardInfoCommentModel(
      this.id,
      this.avatar,
      this.cardId,
      this.companyName,
      this.content,
      this.isAuth,
      this.name,
      this.position,
      this.publishTime,
      this.showInCard,
      this.stickTime,
      this.thumbNum,
      this.userId,
      this.isStick);

  factory CardInfoCommentModel.fromJson(Map<String, dynamic> json) =>
      _$CardInfoCommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoCommentModelToJson(this);
}

/// 只能消息提醒Model
@JsonSerializable()
class CardInfoSmartMessageModel {
  String cardId;
  String companyId;

/* 名片当前设置的模式类型, [0:普通模式 1:智能推送模式 2:静音模式] */
  int currentModelType;

/* 静音模式时长,[0:关闭,1:15分钟,2:1小时,3:4小时,4:8小时,5:第二天08:00前] */
  int duration;
  String endTime;
  String gmtCreate;
  String gmtModified;
  String id;

/* 名片上次设置的模式类型, [0:普通模式 1:智能推送模式 2:静音模式] */
  int lastModelType;
  String startTime;

  CardInfoSmartMessageModel(
      this.cardId,
      this.companyId,
      this.currentModelType,
      this.duration,
      this.endTime,
      this.gmtCreate,
      this.gmtModified,
      this.id,
      this.lastModelType,
      this.startTime);

  factory CardInfoSmartMessageModel.fromJson(Map<String, dynamic> json) =>
      _$CardInfoSmartMessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoSmartMessageModelToJson(this);
}

@JsonSerializable()
class CardInfoGuideModel {
  String cardId;
  String showKey;
  String showType;

  CardInfoGuideModel(this.cardId, this.showKey, this.showType);

  factory CardInfoGuideModel.fromJson(Map<String, dynamic> json) =>
      _$CardInfoGuideModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoGuideModelToJson(this);
}

@JsonSerializable()
class CardInfoModuleModel {
  /// 模块是否全部完成 0 否 1是
  double moduleComplete;

  /// 模块完整度
  double moduleIntegrity;

  /// 模块名
  String moduleName;

  /// 模块对应的整数
  int moduleIndex;

  CardInfoModuleModel(this.moduleComplete, this.moduleIntegrity,
      this.moduleName, this.moduleIndex);

  factory CardInfoModuleModel.fromJson(Map<String, dynamic> json) =>
      _$CardInfoModuleModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoModuleModelToJson(this);
}

@JsonSerializable()
class CardInfoTagModel {
  String labelId;
  String labelName;
  double likeNum;

  CardInfoTagModel(this.labelId, this.labelName, this.likeNum);

  factory CardInfoTagModel.fromJson(Map<String, dynamic> json) =>
      _$CardInfoTagModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoTagModelToJson(this);
}

@JsonSerializable()
class CardInfoProductModel {
  String activityId;
  double activityPrice;
  double discountPrice;

  /// 是否拼团商品 1是 2 否
  int groupProduct;
  int isDiscount;
  String mainPic;
  double marketPrice;

  /// 是否支持在线支付
  int onlinePayment;
  double ordinaryPrice;
  String priceStr;
  String productId;
  String productName;

  /// 1上架 2下架
  int productShelves;
  int recommendProduct;

  /// 语音地址
  String recommendReason;

  /// 推荐的文本
  String recommendText;

  /// 语音时长
  double recordTime;
  int salesVolume;

  /// 拼团单买价格
  int singlePrice;
  int sort;
  double upShelvesTime;
  String upShelvesTimeStr;

  CardInfoProductModel(
      this.activityId,
      this.activityPrice,
      this.discountPrice,
      this.groupProduct,
      this.isDiscount,
      this.mainPic,
      this.marketPrice,
      this.onlinePayment,
      this.ordinaryPrice,
      this.priceStr,
      this.productId,
      this.productName,
      this.productShelves,
      this.recommendProduct,
      this.recommendReason,
      this.recommendText,
      this.recordTime,
      this.salesVolume,
      this.singlePrice,
      this.sort,
      this.upShelvesTime,
      this.upShelvesTimeStr);

  factory CardInfoProductModel.fromJson(Map<String, dynamic> json) =>
      _$CardInfoProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoProductModelToJson(this);
}

@JsonSerializable()
class CardInfoModel {
// 1-已制作，0-未制作
  double appMakeCard;

// 国内详细地址
  String address;
  String aqcodeURL;
  double audioTime;
  String audioUrl;
  String cardEmail;
  int cardForwardStatus;

  /// 卡片的头像, 所有的图片以逗号隔开
  String cardHeadImage;

  /// 个人用户头像
  String avatar;
  String cardId;
  String cardName;

  /// 职位
  String cardPosition;

  /// 名片展示手机号
  String cardShowPhone;

  /// 直对名片交换者展示手机号
  int onlyShowPhoneForExchangeCard;

  /// 直对名片交换者展示微信号
  int onlyShowWeChatForExchangeCard;
  String cardVideoImageUrl;
  String cardVideoUrl;
  String companyAddress;
  String companyId;
  String companyLogo;
  String companyName;

  /// 企业类型0企业版,1门店版
  int companyType;
  String copywriting;
  int countryCode;
  String countryName;

  /// 自定义名片图片地址
  String customTemplateUrl;

  /// 国外详细地址
  String foreignAddress;
  int guideStatus;

  /// 推荐商品
  List<CardInfoProductModel> recommendCommodity;

  /// 图片列表
  List<String> imageUrls;

  /// 名片完整度
  int integrity;

  /// 名片完整度排名百分比
  int integrityRank;

  /// 我的标签列表
  List<CardInfoTagModel> labels;

  /// 0关闭商城,1启用商城
  int mallSwitch;

  int mobileHideStatus;

  /// 名片模块信息
  List<CardInfoModuleModel> moduleInfos;

  /// 指示性的model
  List<CardInfoGuideModel> guideVoList;

  /// 个人介绍
  String personalIntroduce;

  /// 地区名
  String region;

  /// 公司简称
  String shortName;

  /// 座机
  String telephone;

  /// 1-正规版，2 -青春版，3 -商务版，4 -上下版
  int templateType;

  /// 微信
  String wechat;

  /// 欢迎语开关
  int welcomesSwitchStatus;

  /// 工作交接状态
  int workHandoverStatus;

  /// 微信绑定手机号
  String wxBindPhone;

  /// 国内经度
  String longitude;

  /// 纬度
  String latitude;

/* 角色类型：1-免费企业普通用户，2-免费企业管理员，3-付费企业未开通雷达用户，4-付费企业已开通雷达用户 */
  double priorityType;

/* value = "企业公众号授权状态", notes = "0 未授权 1 已授权" */
  double officialAccountsAuthStatus;

/* (value = "名片角色", notes = "0普通,1管理员") */
  double cardRole;

/* 是否接收推送消息 0：不接收 1：接收 */
  double isReceiveMsg;

/* 只能消息提醒 */
  CardInfoSmartMessageModel smartMessageModel;

  /// 2019-03-08新增字段
  CardInfoHomeTownModel homeTown;
  List<CardInfoEducationModel> educations;
  List<CardInfoCommentModel> comments;
  List<ColleagueModel> colleagues;

  CardInfoModel(
      this.appMakeCard,
      this.address,
      this.aqcodeURL,
      this.audioTime,
      this.audioUrl,
      this.cardEmail,
      this.cardForwardStatus,
      this.cardHeadImage,
      this.avatar,
      this.cardId,
      this.cardName,
      this.cardPosition,
      this.cardShowPhone,
      this.onlyShowPhoneForExchangeCard,
      this.onlyShowWeChatForExchangeCard,
      this.cardVideoImageUrl,
      this.cardVideoUrl,
      this.companyAddress,
      this.companyId,
      this.companyLogo,
      this.companyName,
      this.companyType,
      this.copywriting,
      this.countryCode,
      this.countryName,
      this.customTemplateUrl,
      this.foreignAddress,
      this.guideStatus,
      this.recommendCommodity,
      this.imageUrls,
      this.integrity,
      this.integrityRank,
      this.labels,
      this.mallSwitch,
      this.mobileHideStatus,
      this.moduleInfos,
      this.guideVoList,
      this.personalIntroduce,
      this.region,
      this.shortName,
      this.telephone,
      this.templateType,
      this.wechat,
      this.welcomesSwitchStatus,
      this.workHandoverStatus,
      this.wxBindPhone,
      this.longitude,
      this.latitude,
      this.priorityType,
      this.officialAccountsAuthStatus,
      this.cardRole,
      this.isReceiveMsg,
      this.smartMessageModel,
      this.homeTown,
      this.educations,
      this.comments,
      this.colleagues);

  factory CardInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CardInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoModelToJson(this);
}
