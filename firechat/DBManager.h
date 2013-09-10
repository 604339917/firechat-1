//
//  DBManager.h
//  firechat
//
//  Created by davidchen on 13/9/10.
//  Copyright (c) 2013年 davidchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DBManager : NSObject
{
    NSString *databasePath;
}

+ (DBManager *)getSharedInstance;
- (BOOL) createDB;
- (BOOL) saveData:(NSString *)registerNumber name:(NSString *)name
       department:(NSString *)department year:(NSString *)year;
- (NSArray *)findByRegisterNumber:(NSString *)registerNumber;

@end
