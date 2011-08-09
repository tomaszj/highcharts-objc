//
//  HighchartsObjCViewController.m
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-05.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HighchartsObjCViewController.h"
#import "HighchartsHelper.h"
#import "HighchartsXYOptions.h"
#import "HighChartsPieOptions.h"
#import "ExamplePieSection.h"

@implementation HighchartsObjCViewController
@synthesize webView=_webView;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
    NSArray *xValues = [NSArray arrayWithObjects:[NSNumber numberWithFloat:3.0], [NSNumber numberWithFloat:4.0], [NSNumber numberWithFloat:5.0], nil];
    NSArray *yValues = [NSArray arrayWithObjects:[NSNumber numberWithFloat:6.0], [NSNumber numberWithFloat:-2.0], [NSNumber numberWithFloat:5.0], nil];
    
    HighchartsXYOptions *options = [[HighchartsXYOptions alloc] initWithTitle:@"ChartTitle" andXValues:xValues andYValues:yValues];
    options.yAxisTitle = @"My Title";
    
    /*HighChartsPieOptions *options = [HighChartsPieOptions new];
    options.chartTitle = @"My title";
    ExamplePieSection *section1 = [ExamplePieSection pieSectionWithName:@"Car" andValue:[NSNumber numberWithInt:4] andColor:[UIColor redColor]];
    ExamplePieSection *section2 = [ExamplePieSection pieSectionWithName:@"Credit Card" andValue:[NSNumber numberWithInt:1] andColor:[UIColor redColor]];
    ExamplePieSection *section3 = [ExamplePieSection pieSectionWithName:@"Salary" andValue:[NSNumber numberWithInt:6] andColor:[UIColor greenColor]];
    [options addObject: section1];
    [options addObject: section2];
    [options addObject: section3];*/
    
    [HighchartsHelper createLineChartInWebView:self.webView withOptions:options];
    //[HighchartsHelper createPieChartInWebView:self.webView withOptions:options];
    
    [options release];
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"main" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    
}


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
