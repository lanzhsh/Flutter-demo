// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CardInfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardInfoHomeTownModel _$CardInfoHomeTownModelFromJson(
    Map<String, dynamic> json) {
  return CardInfoHomeTownModel(
      json['id'] as String,
      json['address'] as String,
      json['addressCode'] as String,
      json['greetings'] as String,
      json['greetingsPic'] as String);
}

Map<String, dynamic> _$CardInfoHomeTownModelToJson(
        CardInfoHomeTownModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'addressCode': instance.addressCode,
      'greetings': instance.greetings,
      'greetingsPic': instance.greetingsPic
    };

ColleagueModel _$ColleagueModelFromJson(Map<String, dynamic> json) {
  return ColleagueModel(
      json['cardId'] as String,
      json['cardHeadImage'] as String,
      json['cardName'] as String,
      json['cardPosition'] as String);
}

Map<String, dynamic> _$ColleagueModelToJson(ColleagueModel instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'cardHeadImage': instance.cardHeadImage,
      'cardName': instance.cardName,
      'cardPosition': instance.cardPosition
    };

CardInfoEducationModel _$CardInfoEducationModelFromJson(
    Map<String, dynamic> json) {
  return CardInfoEducationModel(
      json['school'] as String,
      json['educationBackground'] as String,
      json['greetings'] as String,
      json['greetingsPic'] as String,
      json['usedTime'] as String,
      json['timeString'] as String,
      json['major'] as String,
      json['id'] as String);
}

Map<String, dynamic> _$CardInfoEducationModelToJson(
        CardInfoEducationModel instance) =>
    <String, dynamic>{
      'school': instance.school,
      'educationBackground': instance.educationBackground,
      'greetings': instance.greetings,
      'greetingsPic': instance.greetingsPic,
      'usedTime': instance.usedTime,
      'timeString': instance.timeString,
      'major': instance.major,
      'id': instance.id
    };

CardInfoCommentModel _$CardInfoCommentModelFromJson(Map<String, dynamic> json) {
  return CardInfoCommentModel(
      json['id'] as String,
      json['avatar'] as String,
      json['cardId'] as String,
      json['companyName'] as String,
      json['content'] as String,
      json['isAuth'] as int,
      json['name'] as String,
      json['position'] as String,
      json['publishTime'] as String,
      json['showInCard'] as int,
      json['stickTime'] as String,
      json['thumbNum'] as int,
      json['userId'] as String,
      json['isStick'] as int);
}

Map<String, dynamic> _$CardInfoCommentModelToJson(
        CardInfoCommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'cardId': instance.cardId,
      'companyName': instance.companyName,
      'content': instance.content,
      'isAuth': instance.isAuth,
      'name': instance.name,
      'position': instance.position,
      'publishTime': instance.publishTime,
      'showInCard': instance.showInCard,
      'stickTime': instance.stickTime,
      'thumbNum': instance.thumbNum,
      'userId': instance.userId,
      'isStick': instance.isStick
    };

CardInfoSmartMessageModel _$CardInfoSmartMessageModelFromJson(
    Map<String, dynamic> json) {
  return CardInfoSmartMessageModel(
      json['cardId'] as String,
      json['companyId'] as String,
      json['currentModelType'] as int,
      json['duration'] as int,
      json['endTime'] as String,
      json['gmtCreate'] as String,
      json['gmtModified'] as String,
      json['id'] as String,
      json['lastModelType'] as int,
      json['startTime'] as String);
}

Map<String, dynamic> _$CardInfoSmartMessageModelToJson(
        CardInfoSmartMessageModel instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'companyId': instance.companyId,
      'currentModelType': instance.currentModelType,
      'duration': instance.duration,
      'endTime': instance.endTime,
      'gmtCreate': instance.gmtCreate,
      'gmtModified': instance.gmtModified,
      'id': instance.id,
      'lastModelType': instance.lastModelType,
      'startTime': instance.startTime
    };

CardInfoGuideModel _$CardInfoGuideModelFromJson(Map<String, dynamic> json) {
  return CardInfoGuideModel(json['cardId'] as String, json['showKey'] as String,
      json['showType'] as String);
}

Map<String, dynamic> _$CardInfoGuideModelToJson(CardInfoGuideModel instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'showKey': instance.showKey,
      'showType': instance.showType
    };

CardInfoModuleModel _$CardInfoModuleModelFromJson(Map<String, dynamic> json) {
  return CardInfoModuleModel(
      (json['moduleComplete'] as num)?.toDouble(),
      (json['moduleIntegrity'] as num)?.toDouble(),
      json['moduleName'] as String,
      json['moduleIndex'] as int);
}

Map<String, dynamic> _$CardInfoModuleModelToJson(
        CardInfoModuleModel instance) =>
    <String, dynamic>{
      'moduleComplete': instance.moduleComplete,
      'moduleIntegrity': instance.moduleIntegrity,
      'moduleName': instance.moduleName,
      'moduleIndex': instance.moduleIndex
    };

CardInfoTagModel _$CardInfoTagModelFromJson(Map<String, dynamic> json) {
  return CardInfoTagModel(json['labelId'] as String,
      json['labelName'] as String, (json['likeNum'] as num)?.toDouble());
}

Map<String, dynamic> _$CardInfoTagModelToJson(CardInfoTagModel instance) =>
    <String, dynamic>{
      'labelId': instance.labelId,
      'labelName': instance.labelName,
      'likeNum': instance.likeNum
    };

CardInfoProductModel _$CardInfoProductModelFromJson(Map<String, dynamic> json) {
  return CardInfoProductModel(
      json['activityId'] as String,
      (json['activityPrice'] as num)?.toDouble(),
      (json['discountPrice'] as num)?.toDouble(),
      json['groupProduct'] as int,
      json['isDiscount'] as int,
      json['mainPic'] as String,
      (json['marketPrice'] as num)?.toDouble(),
      json['onlinePayment'] as int,
      (json['ordinaryPrice'] as num)?.toDouble(),
      json['priceStr'] as String,
      json['productId'] as String,
      json['productName'] as String,
      json['productShelves'] as int,
      json['recommendProduct'] as int,
      json['recommendReason'] as String,
      json['recommendText'] as String,
      (json['recordTime'] as num)?.toDouble(),
      json['salesVolume'] as int,
      json['singlePrice'] as int,
      json['sort'] as int,
      (json['upShelvesTime'] as num)?.toDouble(),
      json['upShelvesTimeStr'] as String);
}

Map<String, dynamic> _$CardInfoProductModelToJson(
        CardInfoProductModel instance) =>
    <String, dynamic>{
      'activityId': instance.activityId,
      'activityPrice': instance.activityPrice,
      'discountPrice': instance.discountPrice,
      'groupProduct': instance.groupProduct,
      'isDiscount': instance.isDiscount,
      'mainPic': instance.mainPic,
      'marketPrice': instance.marketPrice,
      'onlinePayment': instance.onlinePayment,
      'ordinaryPrice': instance.ordinaryPrice,
      'priceStr': instance.priceStr,
      'productId': instance.productId,
      'productName': instance.productName,
      'productShelves': instance.productShelves,
      'recommendProduct': instance.recommendProduct,
      'recommendReason': instance.recommendReason,
      'recommendText': instance.recommendText,
      'recordTime': instance.recordTime,
      'salesVolume': instance.salesVolume,
      'singlePrice': instance.singlePrice,
      'sort': instance.sort,
      'upShelvesTime': instance.upShelvesTime,
      'upShelvesTimeStr': instance.upShelvesTimeStr
    };

CardInfoModel _$CardInfoModelFromJson(Map<String, dynamic> json) {
  return CardInfoModel(
      (json['appMakeCard'] as num)?.toDouble(),
      json['address'] as String,
      json['aqcodeURL'] as String,
      (json['audioTime'] as num)?.toDouble(),
      json['audioUrl'] as String,
      json['cardEmail'] as String,
      json['cardForwardStatus'] as int,
      json['cardHeadImage'] as String,
      json['avatar'] as String,
      json['cardId'] as String,
      json['cardName'] as String,
      json['cardPosition'] as String,
      json['cardShowPhone'] as String,
      json['onlyShowPhoneForExchangeCard'] as int,
      json['onlyShowWeChatForExchangeCard'] as int,
      json['cardVideoImageUrl'] as String,
      json['cardVideoUrl'] as String,
      json['companyAddress'] as String,
      json['companyId'] as String,
      json['companyLogo'] as String,
      json['companyName'] as String,
      json['companyType'] as int,
      json['copywriting'] as String,
      json['countryCode'] as int,
      json['countryName'] as String,
      json['customTemplateUrl'] as String,
      json['foreignAddress'] as String,
      json['guideStatus'] as int,
      (json['recommendCommodity'] as List)
          ?.map((e) => e == null
              ? null
              : CardInfoProductModel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['imageUrls'] as List)?.map((e) => e as String)?.toList(),
      json['integrity'] as int,
      json['integrityRank'] as int,
      (json['labels'] as List)
          ?.map((e) => e == null
              ? null
              : CardInfoTagModel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['mallSwitch'] as int,
      json['mobileHideStatus'] as int,
      (json['moduleInfos'] as List)
          ?.map((e) => e == null
              ? null
              : CardInfoModuleModel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['guideVoList'] as List)
          ?.map((e) => e == null
              ? null
              : CardInfoGuideModel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['personalIntroduce'] as String,
      json['region'] as String,
      json['shortName'] as String,
      json['telephone'] as String,
      json['templateType'] as int,
      json['wechat'] as String,
      json['welcomesSwitchStatus'] as int,
      json['workHandoverStatus'] as int,
      json['wxBindPhone'] as String,
      json['longitude'] as String,
      json['latitude'] as String,
      (json['priorityType'] as num)?.toDouble(),
      (json['officialAccountsAuthStatus'] as num)?.toDouble(),
      (json['cardRole'] as num)?.toDouble(),
      (json['isReceiveMsg'] as num)?.toDouble(),
      json['smartMessageModel'] == null
          ? null
          : CardInfoSmartMessageModel.fromJson(
              json['smartMessageModel'] as Map<String, dynamic>),
      json['homeTown'] == null
          ? null
          : CardInfoHomeTownModel.fromJson(
              json['homeTown'] as Map<String, dynamic>),
      (json['educations'] as List)
          ?.map((e) => e == null
              ? null
              : CardInfoEducationModel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['comments'] as List)
          ?.map((e) => e == null
              ? null
              : CardInfoCommentModel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['colleagues'] as List)
          ?.map((e) => e == null
              ? null
              : ColleagueModel.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$CardInfoModelToJson(CardInfoModel instance) =>
    <String, dynamic>{
      'appMakeCard': instance.appMakeCard,
      'address': instance.address,
      'aqcodeURL': instance.aqcodeURL,
      'audioTime': instance.audioTime,
      'audioUrl': instance.audioUrl,
      'cardEmail': instance.cardEmail,
      'cardForwardStatus': instance.cardForwardStatus,
      'cardHeadImage': instance.cardHeadImage,
      'avatar': instance.avatar,
      'cardId': instance.cardId,
      'cardName': instance.cardName,
      'cardPosition': instance.cardPosition,
      'cardShowPhone': instance.cardShowPhone,
      'onlyShowPhoneForExchangeCard': instance.onlyShowPhoneForExchangeCard,
      'onlyShowWeChatForExchangeCard': instance.onlyShowWeChatForExchangeCard,
      'cardVideoImageUrl': instance.cardVideoImageUrl,
      'cardVideoUrl': instance.cardVideoUrl,
      'companyAddress': instance.companyAddress,
      'companyId': instance.companyId,
      'companyLogo': instance.companyLogo,
      'companyName': instance.companyName,
      'companyType': instance.companyType,
      'copywriting': instance.copywriting,
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
      'customTemplateUrl': instance.customTemplateUrl,
      'foreignAddress': instance.foreignAddress,
      'guideStatus': instance.guideStatus,
      'recommendCommodity': instance.recommendCommodity,
      'imageUrls': instance.imageUrls,
      'integrity': instance.integrity,
      'integrityRank': instance.integrityRank,
      'labels': instance.labels,
      'mallSwitch': instance.mallSwitch,
      'mobileHideStatus': instance.mobileHideStatus,
      'moduleInfos': instance.moduleInfos,
      'guideVoList': instance.guideVoList,
      'personalIntroduce': instance.personalIntroduce,
      'region': instance.region,
      'shortName': instance.shortName,
      'telephone': instance.telephone,
      'templateType': instance.templateType,
      'wechat': instance.wechat,
      'welcomesSwitchStatus': instance.welcomesSwitchStatus,
      'workHandoverStatus': instance.workHandoverStatus,
      'wxBindPhone': instance.wxBindPhone,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'priorityType': instance.priorityType,
      'officialAccountsAuthStatus': instance.officialAccountsAuthStatus,
      'cardRole': instance.cardRole,
      'isReceiveMsg': instance.isReceiveMsg,
      'smartMessageModel': instance.smartMessageModel,
      'homeTown': instance.homeTown,
      'educations': instance.educations,
      'comments': instance.comments,
      'colleagues': instance.colleagues
    };
