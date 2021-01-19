//
//  Rental.h
//  第一章
//
//  Created by Vic on 2021/1/18.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rental : NSObject

@property (nonatomic, strong, readonly) Movie *movie;
@property (nonatomic, assign, readonly) NSInteger daysRented;

- (instancetype)initWithMovie:(Movie *)movie daysRented:(NSInteger)daysRented;
- (double)getCharge;
@end

NS_ASSUME_NONNULL_END
