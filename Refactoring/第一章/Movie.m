//
//  Movie.m
//  第一章
//
//  Created by Vic on 2021/1/18.
//

#import "Movie.h"

@implementation Movie

- (instancetype)initWithTitle:(NSString *)title priceCode:(MovieType)priceCode {
    self = [super init];
    _title = title;
    _priceCode = priceCode;
    return self;
}

@end
