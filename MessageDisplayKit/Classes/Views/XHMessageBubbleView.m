//
//  XHMessageBubbleView.m
//  MessageDisplayExample
//
//  Created by qtone-1 on 14-4-24.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import "XHMessageBubbleView.h"

@implementation XHMessageBubbleView

+ (CGFloat)calculateCellHeightWithMessage:(id <XHMessageModel>)message {
    return 44;
}

#pragma mark - Life cycle

- (instancetype)initWithFrame:(CGRect)frame
                   bubbleType:(XHBubbleMessageType)bubleType {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        // Action Button
        //bubble image
        UIImageView *bubbleImageView = [XHMessageBubbleFactory bubbleImageViewForType:bubleType style:XHBubbleImageViewStyleWeChat meidaType:XHBubbleMessageText];
        bubbleImageView.frame = self.bounds;
        [self addSubview:bubbleImageView];
        
        CGRect labelFrame;
        switch (bubleType) {
            case XHBubbleMessageTypeSending:
                labelFrame = CGRectMake(14, 8, CGRectGetWidth(self.bounds) - 34, CGRectGetHeight(self.bounds) - 16);
                break;
            case XHBubbleMessageTypeReceiving:
                labelFrame = CGRectMake(22, 8, CGRectGetWidth(self.bounds) - 34, CGRectGetHeight(self.bounds) - 16);
                break;
            default:
                break;
        }
        
        // demo label
        UILabel *label = [[UILabel alloc] initWithFrame:labelFrame];
        label.font = [UIFont systemFontOfSize:16.0];
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor blackColor];
        label.numberOfLines = 0;
        label.lineBreakMode = NSLineBreakByCharWrapping;
        label.text = @"这是华捷微信，为什么模仿这个页面效果呢？希望微信团队能看到我们在努力，请微信团队给个机会，让我好好的努力靠近大神，希望自己也能发亮，好像有点过分的希望了，如果大家喜欢这个开源库，请大家帮帮忙支持这个开源库吧！我是Jack，叫华仔也行，曾宪华就是我啦！Call Me 15915895880";
        [self addSubview:label];
        
        
    }
    return self;
}

- (void)dealloc {
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
