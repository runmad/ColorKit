//
//  RootViewController.h
//  ColorKit
//
//  Created by Rune Madsen on 11-05-16.
//  Copyright 2011 Lakeshore Distribution Inc. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RootViewController : UIViewController {
	UIImageView *imageView;
	BOOL sliderVisible;
	UIView *sliderView;
	UISlider *rSlider;
	UISlider *gSlider;
	UISlider *bSlider;
	UILabel *rLabel;
	UILabel *gLabel;
	UILabel *bLabel;
}

@property (nonatomic, retain) UIImageView *imageView;
@property (nonatomic, getter=isSliderVisible) BOOL sliderVisible;
@property (nonatomic, retain) UIView *sliderView;
@property (nonatomic, retain) UISlider *rSlider;
@property (nonatomic, retain) UISlider *gSlider;
@property (nonatomic, retain) UISlider *bSlider;
@property (nonatomic, retain) UILabel *rLabel;
@property (nonatomic, retain) UILabel *gLabel;
@property (nonatomic, retain) UILabel *bLabel;

-(void)setupSliders;

@end
