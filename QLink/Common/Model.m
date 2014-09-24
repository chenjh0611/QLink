//
//  Model.m
//  QLink
//
//  Created by 尤日华 on 14-9-21.
//  Copyright (c) 2014年 SANSAN. All rights reserved.
//

#import "Model.h"
#import "DataUtil.h"

/********************************************************************/

@implementation GlobalAttr

+(GlobalAttr *)shareInstance
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSDictionary *globalAttrDic = [ud objectForKey:@"GLOBALATTR_UD"];
    
    GlobalAttr *obj = [[GlobalAttr alloc] init];
    obj.LayerId = [globalAttrDic objectForKey:@"LayerId"];
    obj.RoomId = [globalAttrDic objectForKey:@"RoomId"];
    obj.HouseId = [globalAttrDic objectForKey:@"HouseId"];
    
    return obj;
}

//更新房间号
+(void)setGlobalAttr:(NSString *)roomId
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSDictionary *globalAttrDic = [ud objectForKey:@"GLOBALATTR_UD"];
    NSMutableDictionary *newDic = [NSMutableDictionary dictionaryWithDictionary:globalAttrDic];
    [newDic setObject:roomId forKey:@"RoomId"];
    [ud setObject:newDic forKey:@"GLOBALATTR_UD"];
    [ud synchronize];
}

@end

@implementation Control

+(Control *)setIp:(NSString *)ip
        andSendType:(NSString *)sendType
            andPort:(NSString *)port
          andDomain:(NSString *)domain
             andUrl:(NSString *)url
       andUpdatever:(NSString *)updatever
{
    Control *obj = [[Control alloc] init];
    obj.Ip = ip;
    obj.SendType = sendType;
    obj.Port = port;
    obj.Domain = domain;
    obj.Url = url;
    obj.Updatever = updatever;
    
    return obj;
}
                                                                                                                                                        
@end

/********************************************************************/

@implementation Device

+(Device *)setDeviceId:(NSString *)deviceId
     andDeviceName:(NSString *)deviceName
           andType:(NSString *)type
        andHouseId:(NSString *)houseId
        andLayerId:(NSString *)layerId
         andRoomId:(NSString *)roomId
       andIconType:(NSString *)iconType
{
    Device *obj = [[Device alloc] init];
    obj.DeviceId = deviceId;
    obj.DeviceName = deviceName;
    obj.Type = type;
    obj.HouseId = houseId;
    obj.LayerId = layerId;
    obj.RoomId = roomId;
    obj.IconType = iconType;
    
    return obj;
}
@end

/********************************************************************/

@implementation Order

+(Order *)setOrderId:(NSString *)orderId
     andOrderName:(NSString *)orderName
          andType:(NSString *)type
       andSubType:(NSString *)subType
      andOrderCmd:(NSString *)orderCmd
       andAddress:(NSString *)address
      andStudyCmd:(NSString *)studyCmd
       andHouseId:(NSString *)houseId
       andLayerId:(NSString *)layerId
        andRoomId:(NSString *)roomId
      andDeviceId:(NSString *)deviceId
{
    Order *obj = [[Order alloc] init];
    obj.OrderId = orderId;
    obj.OrderName = orderName;
    obj.Type = type;
    obj.SubType = subType;
    obj.OrderCmd = orderCmd;
    obj.Address = address;
    obj.StudyCmd = studyCmd;
    obj.HouseId = houseId;
    obj.LayerId = layerId;
    obj.RoomId = roomId;
    obj.DeviceId = deviceId;
    
    return obj;
}

@end

/********************************************************************/

@implementation Room

+(Room *)setRoomId:(NSString *)roomId
     andRoomName:(NSString *)roomName
      andHouseId:(NSString *)houseId
      andLayerId:(NSString *)layerId
{
    Room *obj = [[Room alloc] init];
    obj.RoomId = roomId;
    obj.RoomName = roomName;
    obj.HouseId = houseId;
    obj.LayerId = layerId;
    
    return obj;
}

@end

/********************************************************************/

@implementation Sence

+(Sence *)setSenceId:(NSString *)senceId
     andSenceName:(NSString *)senceName
      andMacrocmd:(NSString *)macrocmd
          andType:(NSString *)type
       andCmdList:(NSString *)cmdList
       andHouseId:(NSString *)houseId
       andLayerId:(NSString *)layerId
        andRoomId:(NSString *)roomId
      andIconType:(NSString *)iconType
{
    Sence *obj = [[Sence alloc] init];
    obj.SenceId = senceId;
    obj.SenceName = senceName;
    obj.Macrocmd = macrocmd;
    obj.Type = type;
    obj.CmdList = cmdList;
    obj.HouseId = houseId;
    obj.LayerId = layerId;
    obj.RoomId = roomId;
    obj.IconType = iconType;
    
    return obj;
}


@end