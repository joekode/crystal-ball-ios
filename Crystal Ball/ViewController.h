//
//  ViewController.h
//  Crystal Ball
//
//  Created by Chung Wu on 11/10/2013.
//  Copyright (c) 2013 Kode Creative. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictionArray;
@property (strong, nonatomic) UIImageView *imageView;
- (void) makePrediction;

@end
