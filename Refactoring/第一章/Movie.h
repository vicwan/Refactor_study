//
//  Movie.h
//  第一章
//
//  Created by Vic on 2021/1/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, MovieType) {
    MovieTypeRegular,
    MovieTypeNewRelease,
    MovieTypeChildren,
};

@interface Movie : NSObject

@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, assign) MovieType priceCode;

- (instancetype)initWithTitle:(NSString *)title priceCode:(MovieType)priceCode;
- (int)getFrequentRenterPoints:(int)daysRented;
- (double)getCharge:(int)daysRented;
@end

NS_ASSUME_NONNULL_END
