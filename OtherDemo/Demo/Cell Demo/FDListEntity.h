//
//  FDListEntity.h
//  FlowLayoutCell
//
//  Created by Phil on 15/4/9.
//  Copyright (c) 2015年 Phil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FDListEntity : NSObject

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, copy) NSArray *imageArray;
@property (nonatomic, assign) BOOL hasAudioClip, canExpand, isOpening;
@property (nonatomic, assign) CGFloat photoViewHeight;
@end
