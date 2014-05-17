//
//  FoodParser.m
//  ParserDemo
//
//  Created by Josh Newman on 17/05/2014.
//  Copyright (c) 2014 Josh Newman. All rights reserved.
//

#import "FoodParser.h"
#import "Food.h"

@interface FoodParser ()

@property NSXMLParser *parser;
@property NSString *element;

// Food properties
@property NSString *currentName;
@property double currentPrice;
@property NSString *currentDescription;
@property int currentCalories;

@end

@implementation FoodParser

- (id)initWithArray: (NSMutableArray *)foodArray {
    self = [super init];
    if (self) {
        self.foodArray = foodArray;
    }
    return self;
}

- (void)parseXMLFile {
    
    NSURL *xmlPath = [[NSBundle mainBundle] URLForResource:@"menu"
                                             withExtension:@"xml"];
    
    self.parser = [[NSXMLParser alloc] initWithContentsOfURL:xmlPath];
    self.parser.delegate = self;
    [self.parser parse];
}

- (void)parser:(NSXMLParser *)parser
didStartElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qualifiedName
    attributes:(NSDictionary *)attributeDict {
    
    self.element = elementName;
}

- (void)parser:(NSXMLParser *)parser
foundCharacters:(NSString *)string {
    
    if ([self.element isEqualToString:@"name"]) {
        self.currentName = string;
    }
    else if ([self.element isEqualToString:@"price"]) {
        self.currentPrice = string.doubleValue;
    }
    else if ([self.element isEqualToString:@"description"]) {
        self.currentDescription = string;
    }
    else if ([self.element isEqualToString:@"calories"]) {
        self.currentCalories = string.intValue;
    }
}

- (void)parser:(NSXMLParser *)parser
 didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName {
    
    if ([elementName isEqualToString:@"food"]) {
        Food *thisFood = [[Food alloc] initWithName:self.currentName
                                              price:self.currentPrice
                                        description:self.currentDescription
                                           calories:self.currentCalories];
        [self.foodArray addObject:thisFood];
    }
    self.element = nil;
}

@end
