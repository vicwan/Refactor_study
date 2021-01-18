//
//  Customer.h
//  第一章
//
//  Created by Vic on 2021/1/18.
//

#import <Foundation/Foundation.h>
#import "Rental.h"

NS_ASSUME_NONNULL_BEGIN

@interface Customer : NSObject

@property (nonatomic, copy, readonly) NSString *name;

- (instancetype)initWithName:(NSString *)name;

- (void)addRental:(Rental *)rental;
- (NSArray *)getRentals;
- (NSString *)statement;
@end

NS_ASSUME_NONNULL_END
