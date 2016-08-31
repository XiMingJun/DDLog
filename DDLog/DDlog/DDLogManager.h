//
//  DDLogManager.h
//  DDLogDemo
//
//  Created by wangjian on 15/9/22.
//  Copyright © 2015年 qhfax. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CocoaLumberjack.h"
#import "WJLogFormatter.h"
#import "DDLegacyMacros.h"

#if DEBUG
static const DDLogLevel ddLogLevel = DDLogLevelVerbose;
#else 
static const DDLogLevel ddLogLevel = DDLogLevelError;
#endif

@interface DDLogManager : NSObject
@property(nonatomic,strong)DDFileLogger *fileLogger;
/**
 *  初始化
 *
 *  @return 日志系统管理器对象
 */
+ (instancetype)shareInstence;


/**配置日志信息*/
- (void)config;


/**获得系统日志的路径*/
-(NSArray*)getLogPath;

/**获取记录的日志文件的内容*/
-(NSMutableArray *)getLoggerFileContent;
@end
