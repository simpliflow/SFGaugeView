//
//  SFGaugeView.h
//  SFGaugeView
//
//  Created by Thomas Winkler on 15/11/13.
//  Copyright (c) 2013 Thomas Winkler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SFGaugeView : UIView

@property (nonatomic) NSUInteger maxlevel;
@property (nonatomic) UIColor *needleColor;
@property (nonatomic) UIColor *bgColor;
@property (nonatomic) BOOL hideLevel;
@property (nonatomic) NSString *minImage;
@property (nonatomic) NSString *maxImage;

- (NSInteger) currentLevel;

@end
