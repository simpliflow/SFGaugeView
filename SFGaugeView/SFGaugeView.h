//
//  SFGaugeView.h
//  SFGaugeView
//
//  Created by Thomas Winkler on 15/11/13.
//  Copyright (c) 2013 Thomas Winkler. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SFGaugeView;

@protocol SFGaugeViewDelegate<NSObject>

@required
- (void) sfGaugeView:(SFGaugeView*) gaugeView didChangeLevel:(NSInteger) level;
@end

@interface SFGaugeView : UIView

@property (nonatomic) NSUInteger maxlevel;
@property (nonatomic) UIColor *needleColor;
@property (nonatomic) UIColor *bgColor;
@property (nonatomic) BOOL hideLevel;
@property (nonatomic) NSString *minImage;
@property (nonatomic) NSString *maxImage;

@property (nonatomic) NSInteger currentLevel;

@property (nonatomic, weak) id<SFGaugeViewDelegate> delegate;

@end
