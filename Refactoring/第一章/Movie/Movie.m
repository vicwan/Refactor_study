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

- (double)getCharge:(NSInteger)daysRented {
    double result = 0;
    switch (self.priceCode) {
        case MovieTypeRegular:
            result += 2;
            if (daysRented > 2) {
                result += (daysRented - 2) * 1.5;
            }
            break;
        case MovieTypeNewRelease:
            result += daysRented * 3;
            break;

        case MovieTypeChildren:
            result += 1.5;
            if (daysRented > 3) {
                result += (daysRented - 3) * 1.5;
            }
            break;
    }
    return result;
}

- (int)getFrequentRenterPoints:(int)daysRented {
    if (self.priceCode == MovieTypeNewRelease && daysRented > 1) {
        return 2;
    }
    return 1;
}

@end
