//
//  NewReleasePrice.m
//  第一章
//
//  Created by Vic on 2021/1/21.
//

#import "NewReleasePrice.h"

@implementation NewReleasePrice

- (MovieType)getPriceCode {
    return MovieTypeNewRelease;
}

- (double)getCharge:(int)daysRented {
    return daysRented * 3;
}

- (int)getFrequentRenterPoints:(int)daysRented {
    if (daysRented > 1) {
        return 2;
    }
    return 1;
}

@end
