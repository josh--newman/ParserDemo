//
//  DetailViewController.h
//  ParserDemo
//
//  Created by Josh Newman on 17/05/2014.
//  Copyright (c) 2014 Josh Newman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Food.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Food *foodItem;

- (void)setDetailItem:(id)newDetailItem;
@end
