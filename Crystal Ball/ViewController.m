//
//  ViewController.m
//  Crystal Ball
//
//  Created by Chung Wu on 11/10/2013.
//  Copyright (c) 2013 Kode Creative. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize predictionLabel;
@synthesize predictionArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage imageNamed:@"background.png"];
    self.imageView = [[UIImageView alloc] initWithImage:image];
    [self.view insertSubview:self.imageView atIndex:0];
    self.imageView.animationImages = [[NSArray alloc] initWithObjects:
    [UIImage imageNamed:@"cball00001"],[UIImage imageNamed:@"cball00002"],
                        [UIImage imageNamed:@"cball00003"],
                        [UIImage imageNamed:@"cball00004"],
                        [UIImage imageNamed:@"cball00005"],
                        [UIImage imageNamed:@"cball00006"],
                        [UIImage imageNamed:@"cball00007"],
                        [UIImage imageNamed:@"cball00008"],
                        [UIImage imageNamed:@"cball00009"],
                        [UIImage imageNamed:@"cball00010"],
                        [UIImage imageNamed:@"cball00011"],
                        [UIImage imageNamed:@"cball00012"],
                        [UIImage imageNamed:@"cball00013"],
                        [UIImage imageNamed:@"cball00014"],
                        [UIImage imageNamed:@"cball00015"],
                        [UIImage imageNamed:@"cball00016"],
                        [UIImage imageNamed:@"cball00017"],
                        [UIImage imageNamed:@"cball00018"],
                        [UIImage imageNamed:@"cball00019"],
                        [UIImage imageNamed:@"cball00020"],
                        [UIImage imageNamed:@"cball00021"],
                        [UIImage imageNamed:@"cball00022"],
                        [UIImage imageNamed:@"cball00023"],
                        [UIImage imageNamed:@"cball00024"], nil];
    self.imageView.animationDuration = 1.0;
    self.imageView.animationRepeatCount = 1;
    
    
    self.predictionArray = [[NSArray alloc] initWithObjects:@"It is certain",@"It is decidely so",@"All signs say yes",@"The stars are not aligned",@"My reply is no",@"It is doubtful",@"Better not tell you now",@"Concentrate and ask again",@"Unable to answer now", nil];

}

- (void) makePrediction {
    NSInteger index = arc4random_uniform(self.predictionArray.count);
    self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
    [self.imageView startAnimating];
    [UIView animateWithDuration:2.0 animations:^{
        self.predictionLabel.alpha=1.0;
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) canBecomeFirstResponder {
    return YES;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
    
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
    
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"Motion Cancelled");
}

@end
