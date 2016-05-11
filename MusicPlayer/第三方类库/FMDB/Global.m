//
//  Global.m
//  Chinese
//
//  Created by chenfei on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Global.h"

NSString *pathForMainBundleResource(NSString *resource)
{
    NSString *fileName = [[resource componentsSeparatedByString:@"."] objectAtIndex:0];
    NSString *extension =[resource pathExtension];
    return [[NSBundle mainBundle] pathForResource:fileName ofType:extension];
}

NSString *cacheDirPath()
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

void copyMainBundleResourceToCacheDir(NSString *fileName)
{
    NSString *srcPath = pathForMainBundleResource(fileName);
    NSString *dstPath = [cacheDirPath() stringByAppendingPathComponent:fileName];
    if (![[NSFileManager defaultManager] fileExistsAtPath:dstPath]) {
        NSError *error = nil;
        [[NSFileManager defaultManager] copyItemAtPath:srcPath toPath:dstPath error:&error];
        if (error)
#ifdef DEBUG
            NSLog(@"%@", error);
#endif
    }
}

NSString *dbPath()
{
    return [cacheDirPath() stringByAppendingPathComponent:kDBName];
}

@implementation Global

@end
