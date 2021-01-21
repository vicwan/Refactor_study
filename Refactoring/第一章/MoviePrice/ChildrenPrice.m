//
//  ChildrenPrice.m
//  第一章
//
//  Created by Vic on 2021/1/21.
//

#import "ChildrenPrice.h"

@implementation ChildrenPrice

- (MovieType)getPriceCode {
    return MovieTypeChildren;
}

- (double)getCharge:(int)daysRented {
    double result = 2;
    if (daysRented > 2) {
        result += (daysRented - 2) * 1.5;
    }
    return result;
}

- (int)getFrequentRenterPoints:(int)daysRented {
    return 1;
}


@end
