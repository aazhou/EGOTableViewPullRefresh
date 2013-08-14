//
//  UIScrollView+Utils.m
//
//  Created by aazhou on 13-7-26.
//  Copyright (c) 2013年 joyotime. All rights reserved.
//

#import "UIScrollView+Utils.h"
#import <objc/runtime.h>


@interface UIEdgeInsetsObject : NSObject

@property (nonatomic,assign) NSInteger top;
@property (nonatomic,assign) NSInteger left;
@property (nonatomic,assign) NSInteger bottom;
@property (nonatomic,assign) NSInteger right;
@end

@implementation UIEdgeInsetsObject
@synthesize top,left,bottom,right;
@end

@implementation UIScrollView (Utils)

static const char *kOriginalContentInsetPropertyKey = "kOriginalContentInsetPropertyKey";

- (void)setOriginalContentInset:(UIEdgeInsets)originalContentInset {
    UIEdgeInsetsObject *inset = [[UIEdgeInsetsObject alloc] init];
    inset.top = originalContentInset.top;
    inset.left = originalContentInset.left;
    inset.bottom = originalContentInset.bottom;
    inset.right = originalContentInset.right;
    
    objc_setAssociatedObject(self, kOriginalContentInsetPropertyKey, inset, OBJC_ASSOCIATION_RETAIN);
}

- (UIEdgeInsets)originalContentInset {
    UIEdgeInsetsObject *inset = objc_getAssociatedObject(self, kOriginalContentInsetPropertyKey);
    return UIEdgeInsetsMake(inset.top, inset.left, inset.bottom, inset.right);
}

@end
