//
//  MGSingleton.h
//  MGDevelopKit
//
//  Created by zhaoyang on 2019/6/26.
//  Copyright © 2019 zhaoyang. All rights reserved.
//

#ifndef MGSingleton_h
#define MGSingleton_h


#define MGSingletonH(methodName) + (instancetype)methodName;
// .m文件
#define MGSingletonM(methodName) \
static id _instance; \
\
+ (instancetype)allocWithZone:(struct _NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
} \
\
+ (instancetype)methodName \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[self alloc] init]; \
}); \
return _instance; \
} \
\
- (id)copyWithZone:(NSZone *)zone \
{ \
return _instance; \
}



#endif /* MGSingleton_h */
