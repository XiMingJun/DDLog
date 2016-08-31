//
//  MyLogFormater.m
//  DDLogDemo
//
//  Created by wangjian on 15/9/21.
//  Copyright © 2015年 qhfax. All rights reserved.
//

#import "WJLogFormatter.h"
@implementation WJLogFormatter
-(NSString *)formatLogMessage:(DDLogMessage *)logMessage
{
    NSString *loglevel = nil;
    switch (logMessage.flag)
    {
        case LOG_FLAG_ERROR:
        {
            loglevel = @"[ERROR]->";
        }
            break;
        case LOG_FLAG_WARN:
        {
            loglevel = @"[WARN]-->";
        }
            break;
        case LOG_FLAG_INFO:
        {
            loglevel = @"[INFO]--->";
        }
            break;
        case LOG_FLAG_DEBUG:
        {
            loglevel = @"[DEBUG]---->";
        }
            break;
        case LOG_FLAG_VERBOSE:
        {
            loglevel = @"[VBOSE]----->";
        }
            break;
            
        default:
            break;
    }
    NSString *formatStr = [NSString stringWithFormat:@"%@ %@___line[%ld]__%@", loglevel, logMessage->_function,logMessage->_line, logMessage->_message];
    return formatStr;
}
@end
