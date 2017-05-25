//
//  DataManager.m
//  Singleton-Design
//
//  Created by Tonny Son on 26/05/2017.
//  Copyright © 2017 Tonny Son. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

//Không gọi trực tiếp hàm này
- (id)init {
    if (self = [super init]) {
        self.managerData = @"Demo Singleton";
    }
    return self;
}

//Mà gọi class method này để lấy singleton của Class
+ (id)sharedManager {
    static DataManager *sharedDataManager = nil;
    static dispatch_once_t dispatchOnce;
    
    dispatch_once(&dispatchOnce, ^{
        sharedDataManager = [self new];
    });
    return sharedDataManager;
}

@end
