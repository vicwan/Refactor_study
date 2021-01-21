//
//  Movie.m
//  第一章
//
//  Created by Vic on 2021/1/18.
//

#import "Movie.h"
#import "ChildrenPrice.h"
#import "NewReleasePrice.h"
#import "RegularPrice.h"

@implementation Movie
{
    Price *_price;
}

- (instancetype)initWithTitle:(NSString *)title priceCode:(MovieType)priceCode {
    self = [super init];
    _title = title;
    self.priceCode = priceCode;
    return self;
}

- (void)setPriceCode:(MovieType)priceCode {
    switch (priceCode) {
        case MovieTypeRegular:
            _price = [[RegularPrice alloc] init];
            break;
        case MovieTypeChildren:
            _price = [[ChildrenPrice alloc] init];
            break;
        case MovieTypeNewRelease:
            _price = [[NewReleasePrice alloc] init];
            break;
        default:
            break;
    }
}

- (int)getFrequentRenterPoints:(int)daysRented {
    return [_price getFrequentRenterPoints:daysRented];
}

- (double)getCharge:(int)daysRented {
    return [_price getCharge:daysRented];
}

@end
