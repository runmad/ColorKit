//
//  RootViewController.m
//  ColorKit
//
//  Created by Rune Madsen on 11-05-16.
//  Copyright 2011 Lakeshore Distribution Inc. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController

@synthesize imageView;
@synthesize sliderView;
@synthesize rSlider;
@synthesize gSlider;
@synthesize bSlider;
@synthesize rLabel;
@synthesize gLabel;
@synthesize bLabel;

- (id)init {
    self = [super init];
    if (self) {
		self.navigationItem.title = @"ColorKit";
		
        self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];

        imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
		[self.view addSubview:imageView];
		
		[self setupSliders];
    }
    return self;
}

-(void)setupSliders {
	self.sliderView = [[UIView alloc] initWithFrame:CGRectMake(0, 200, 320, 240)];
	sliderView.backgroundColor = [UIColor redColor];
	
	rSlider = [[UISlider alloc] init];
	CGRect frame = rSlider.frame;
	frame.origin.x = 20;
	frame.origin.y = 20;
	frame.size.width = 240;
	rSlider.frame = frame;
	[rSlider addTarget:self action:@selector(colorUpdate:) forControlEvents:UIControlEventValueChanged];
	[sliderView addSubview:rSlider];
	
	rLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(rSlider.frame) + 10, CGRectGetMinY(rSlider.frame), 35, 20)];
	rLabel.text = @"0";
	[sliderView addSubview:rLabel];
	
	gSlider = [[UISlider alloc] init];
	frame = gSlider.frame;
	frame.origin.x = 20;
	frame.origin.y = CGRectGetMaxY(rSlider.frame) + 20;
	frame.size.width = 240;
	gSlider.frame = frame;
	[gSlider addTarget:self action:@selector(colorUpdate:) forControlEvents:UIControlEventValueChanged];
	[sliderView addSubview:gSlider];
	
	gLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(gSlider.frame) + 10, CGRectGetMinY(gSlider.frame), 35, 20)];
	gLabel.text = @"0";
	[sliderView addSubview:gLabel];
	
	bSlider = [[UISlider alloc] init];
	frame = bSlider.frame;
	frame.origin.x = 20;
	frame.origin.y = CGRectGetMaxY(gSlider.frame) + 20;
	frame.size.width = 240;
	bSlider.frame = frame;
	[bSlider addTarget:self action:@selector(colorUpdate:) forControlEvents:UIControlEventValueChanged];
	[sliderView addSubview:bSlider];
	
	bLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(bSlider.frame) + 10, CGRectGetMinY(bSlider.frame), 35, 20)];
	bLabel.text = @"0";
	[sliderView addSubview:bLabel];
	
	[self.view insertSubview:sliderView aboveSubview:imageView];
}

-(void)colorUpdate:(id)sender {
	rLabel.text = [NSString stringWithFormat:@"%.0f", rSlider.value * 255];
	gLabel.text = [NSString stringWithFormat:@"%.0f", gSlider.value * 255];
	bLabel.text = [NSString stringWithFormat:@"%.0f", bSlider.value * 255];
	[self.navigationController.navigationBar setTintColor:[UIColor colorWithRed:rSlider.value green:gSlider.value blue:bSlider.value alpha:1.0]];
	[self.navigationController.toolbar setTintColor:[UIColor colorWithRed:rSlider.value green:gSlider.value blue:bSlider.value alpha:1.0]];
}

- (void)dealloc {
    [imageView release];
    [sliderView release];
    [rSlider release];
    [gSlider release];
    [bSlider release];
    [rLabel release];
    [gLabel release];
    [bLabel release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
