//
//  HBDevelopUIDefine.h
//  HBCommonModule
//
//  Created by haobin on 2025/3/10.
//  Copyright © 2025 haobingege. All rights reserved.
//

#ifndef HBDevelopUIDefine_h
#define HBDevelopUIDefine_h

static inline BOOL isFullScreen(void){
    if (@available(iOS 11.0, *)) {
        return UIApplication.sharedApplication.windows.firstObject.safeAreaInsets.bottom > 0.0;
    } else {
        // Fallback on earlier versions
        return false;
    }
}
 

/** main screen width scale with iphone6 width **/
#define MGScale(value) value * [UIScreen mainScreen].bounds.size.width / 375.0

#define UIMainScreenWidth [[UIScreen mainScreen] bounds].size.width
#define UIMainScreenHeight [[UIScreen mainScreen] bounds].size.height

//iPhoneX / iPhoneXS
#define isIphoneX_XS (UIMainScreenWidth == 375.f && UIMainScreenHeight == 812.f ? YES : NO)
//iPhoneXR / iPhoneXSMax
#define isIphoneXR_XSMax (UIMainScreenWidth == 414.f && UIMainScreenHeight == 896.f ? YES : NO)
//全面屏
#define isFullScreen isFullScreen()

#define isiPhone                UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone

#define LargeTitlesHeight       38.f
#define staBarHeight            (isFullScreen ? 44 : 20)
#define navBarHeight            (isiPhone && isFullScreen ? 88 : 64)
#define navBarLargeHeight       (navBarHeight + LargeTitlesHeight)
#define tabBarBottomChinHeight  (isFullScreen ? 34 : 0)
#define tabBarHeight            (isFullScreen ? (64.f+34.f) : 64.f)

//一个像素
#define SCREEN_ONEPX 1.0 / [UIScreen mainScreen].scale


#endif /* HBDevelopUIDefine_h */
