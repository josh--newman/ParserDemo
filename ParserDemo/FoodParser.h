//
//  FoodParser.h
//  ParserDemo
//
//  Created by Josh Newman on 17/05/2014.
//  Copyright (c) 2014 Josh Newman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FoodParser : NSObject <NSXMLParserDelegate>

@property NSMutableArray *foodArray;

- (id)initWithArray: (NSMutableArray *)foodArray;

- (void)parseXMLFile;

@end
