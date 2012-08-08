//
//  RootViewController.h
//  ColorKit
//
//  Created by Rune Madsen on 11-05-16.
//  Copyright 2012 The App Boutique. All rights reserved.
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
    UISegmentedControl *segmentedControl;
}

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, getter=isSliderVisible, setter=isSliderVisible:) BOOL sliderVisible;
@property (nonatomic, strong) UIView *sliderView;
@property (nonatomic, strong) UISlider *rSlider;
@property (nonatomic, strong) UISlider *gSlider;
@property (nonatomic, strong) UISlider *bSlider;
@property (nonatomic, strong) UILabel *rLabel;
@property (nonatomic, strong) UILabel *gLabel;
@property (nonatomic, strong) UILabel *bLabel;
@property (nonatomic, strong) UISegmentedControl *segmentedControl;

@end
