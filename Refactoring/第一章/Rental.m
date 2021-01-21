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
    double result = 0;
    switch (self.movie.priceCode) {
        case MovieTypeRegular:
            result += 2;
            if (self.daysRented > 2) {
                result += (self.daysRented - 2) * 1.5;
            }
            break;
        case MovieTypeNewRelease:
            result += self.daysRented * 3;
            break;
            
        case MovieTypeChildren:
            result += 1.5;
            if (self.daysRented > 3) {
                result += (self.daysRented - 3) * 1.5;
            }
            break;
    }
    return result;
}

- (int)getFrequentRenterPoints {
    if (self.movie.priceCode == MovieTypeNewRelease && self.daysRented > 1) {
        return 2;
    }
    return 1;
}

@end
