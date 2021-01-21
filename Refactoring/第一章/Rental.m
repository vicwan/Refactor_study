//
//  Rental.m
//  第一章
//
//  Created by Vic on 2021/1/18.
//

#import "Rental.h"

@implementation Rental

- (instancetype)initWithMovie:(Movie *)movie daysRented:(NSInteger)daysRented {
    self = [super init];
    _movie = movie;
    _daysRented = daysRented;
    return self;
}

- (double)getCharge {
    return [self.movie getCharge:self.daysRented];
}

- (int)getFrequentRenterPoints {
    return [self.movie getFrequentRenterPoints:self.daysRented];
}

@end
