//
//  XHMessageBubbleView.h
//  MessageDisplayExample
//
//  Created by qtone-1 on 14-4-24.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XHMessageBubbleView : UIView

- (instancetype)initWithFrame:(CGRect)frame
                   bubbleType:(XHBubbleMessageType)bubleType;


+ (CGFloat)calculateCellHeightWithMessage:(id <XHMessageModel>)message;

@end
