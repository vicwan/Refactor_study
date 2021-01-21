//
//  RegularPrice.m
//  第一章
//
//  Created by Vic on 2021/1/21.
//

#import "RegularPrice.h"

@implementation RegularPrice

- (MovieType)getPriceCode {
    return MovieTypeRegular;
}

- (double)getCharge:(int)daysRented {
    double result = 1.5;
    if (daysRented > 3) {
        result += (daysRented - 3) * 1.5;
    }
    return result;
}

- (int)getFrequentRenterPoints:(int)daysRented {
    return 1;
}

@end
