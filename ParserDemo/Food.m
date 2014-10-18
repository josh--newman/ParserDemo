//
//  Food.m
//  ParserDemo
//
//  Created by Josh Newman on 17/05/2014.
//  Copyright (c) 2014 Josh Newman. All rights reserved.
//

#import "Food.h"

@implementation Food

- (id)initWithName: (NSString *)name
             price: (double)price
       foodDescription: (NSString *)foodDescription
          calories: (int)calories {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.price = price;
        self.foodDescription = foodDescription;
        self.calories = calories;
    }
    return self;
}

@end
