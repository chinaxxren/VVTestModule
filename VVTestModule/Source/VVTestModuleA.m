//
// Created by 赵江明 on 2021/10/22.
// Copyright (c) 2021 chinaxxren. All rights reserved.
//

#import "VVTestModuleA.h"

#import <VVModule/VVModule.h>

@implementation VVTestModuleA

VV_FUNCTION_EXPORT(Pre_main, kVVLauncherPriorityDefault)() {
    printf("VVTestModuleA:Pre_main\n");
    [[VVTestModuleA sharedInstance] initMudule];
}

VV_FUNCTION_EXPORT(Stage_A, kVVLauncherPriorityDefault)() {
    printf("VVTestModuleA:Stage_A\n");
}

VV_FUNCTION_EXPORT(Stage_B, kVVLauncherPriorityDefault)() {
    printf("VVTestModuleA:Stage_B\n");
}

+ (instancetype)sharedInstance {
    static VVTestModuleA *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[VVTestModuleA alloc] init];
    });
    return instance;
}

- (void)initMudule {
    NSLog(@"TestModuleA start init ...");
}

@end
