//
//  SNESEmulatorBridge.h
//  SNESDeltaCore
//
//  Created by Darlion on 9/12/15.
//  Copyright © 2015 Riley Testut. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DLTAEmulatorBridging;

NS_ASSUME_NONNULL_BEGIN

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Weverything" // Silence "Cannot find protocol definition" warning due to forward declaration.
@interface SNESEmulatorBridge : NSObject <DLTAEmulatorBridging>
#pragma clang diagnostic pop

@property (class, nonatomic, readonly) SNESEmulatorBridge *sharedBridge;

@end

NS_ASSUME_NONNULL_END
