//
//  Price.h
//  第一章
//
//  Created by Vic on 2021/1/21.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface Price : NSObject

- (MovieType)getPriceCode;
- (double)getCharge:(int)daysRented;
- (int)getFrequentRenterPoints:(int)daysRented;

@end

NS_ASSUME_NONNULL_END
