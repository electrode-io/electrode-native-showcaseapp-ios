//
//  ElectrodeWrapper.m
//  ElectrodeNativeIOSShowCaseApp
//
//  Created by Randy Haid on 12/21/17.
//  Copyright © 2017 WalmartLabs. All rights reserved.
//

#import "ElectrodeWrapper.h"
#import "ElectrodeContainer/ElectrodeReactNative.h"

@implementation ElectrodeWrapper

/**
 Performs a simple initialization of the Electrode Container with default config.
 */
+ (void)setupContainer
{
    ElectrodeContainerConfig *config = [ElectrodeContainerConfig new];
    [ElectrodeReactNative startWithConfigurations:config];
}

@end
