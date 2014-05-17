//
//  Food.h
//  ParserDemo
//
//  Created by Josh Newman on 17/05/2014.
//  Copyright (c) 2014 Josh Newman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Food : NSObject

@property NSString *name;
@property double price;
@property NSString *description;
@property int calories;

- (id)initWithName: (NSString *)name
             price: (double)price
       description: (NSString *)description
          calories: (int)calories;

@end
