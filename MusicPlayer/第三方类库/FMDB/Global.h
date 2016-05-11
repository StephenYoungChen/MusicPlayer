//
//  Global.h
//  Chinese
//
//  Created by chenfei on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kDBName @"golf.db"

NSString *pathForMainBundleResource(NSString *resource);
NSString *cacheDirPath();
void copyMainBundleResourceToCacheDir(NSString *fileName);
NSString *dbPath();



@interface Global : NSObject

@end
