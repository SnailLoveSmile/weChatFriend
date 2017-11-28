//
//  FDListEntity.m
//  FlowLayoutCell
//
//  Created by Phil on 15/4/9.
//  Copyright (c) 2015年 Phil. All rights reserved.
//

#import "FDListEntity.h"
#import "SDWeiXinPhotoContainerView.h"
@implementation FDListEntity

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = super.init;
    if (self) {
        self.title = dictionary[@"title"];
        self.content = dictionary[@"content"];
        self.imageArray = dictionary[@"imageCount"];
        self.hasAudioClip = [dictionary[@"audio"] boolValue];
        self.photoViewHeight = [SDWeiXinPhotoContainerView getContainerSizeWithPicPathStringsArray:self.imageArray].height;
        self.isOpening = NO;
        UIFont *font = [UIFont systemFontOfSize:14.f];
        NSDictionary *dic = @{NSFontAttributeName : font};
        CGFloat textHeight = [self.content boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 20 * 2, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size.height;

        if (textHeight > font.lineHeight * 5) {
            self.canExpand = YES;
        } else {
            self.canExpand = NO;
        }
        
    }
    return self;
}

@end
