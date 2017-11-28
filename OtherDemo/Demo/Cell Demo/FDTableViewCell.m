//
//  FDTableViewCell.m
//  FlowLayoutCell
//
//  Created by Phil on 15/4/9.
//  Copyright (c) 2015年 Phil. All rights reserved.
//

#import "FDTableViewCell.h"
#import "FDListEntity.h"
#import "UIView+FDCollapsibleConstraints.h"
#import "SDWeiXinPhotoContainerView.h"
@interface FDTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel     *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel     *contentLabel;
@property (weak, nonatomic) IBOutlet UIView      *audioBubble;

@property (weak, nonatomic) IBOutlet UIButton *expendBtn;

@property (weak, nonatomic) IBOutlet SDWeiXinPhotoContainerView *photoView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *photoViewH;

@end

@implementation FDTableViewCell

- (void)setEntity:(FDListEntity *)entity
{
    _entity = entity;
    
        self.titleLabel.text = entity.title;
        self.contentLabel.text = entity.content;
        self.audioBubble.fd_collapsed = !entity.hasAudioClip;
    if (entity.canExpand && !entity.isOpening) {
        self.contentLabel.numberOfLines = 5;
    } else {
        self.contentLabel.numberOfLines = 0;
    }
    self.expendBtn.selected = entity.isOpening;
        self.expendBtn.fd_collapsed = !entity.canExpand;
        self.photoViewH.constant = entity.photoViewHeight;
        self.photoView.picPathStringsArray = entity.imageArray;
        self.photoView.fd_collapsed = !entity.imageArray.count;
}

- (IBAction)expandBtnClicked:(UIButton *)sender {
    if (self.returnCellBlock) {
        self.returnCellBlock(self);
    }
}









@end
