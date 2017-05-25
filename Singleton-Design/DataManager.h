//
//  DataManager.h
//  Singleton-Design
//
//  Created by Tonny Son on 26/05/2017.
//  Copyright © 2017 Tonny Son. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject

@property (nonatomic, strong) NSString *managerData;
+ (id)sharedManager;

@end
