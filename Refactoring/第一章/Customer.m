//
//  Customer.m
//  第一章
//
//  Created by Vic on 2021/1/18.
//

#import "Customer.h"

@interface Customer ()
@property (nonatomic, copy) NSMutableArray *rentals;
@end

@implementation Customer

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    _name = name;
    _rentals = [NSMutableArray array];
    return self;
}

- (void)addRental:(Rental *)rental {
    [self.rentals addObject:rental];
}

- (NSString *)statement {
    NSString *result = [NSString stringWithFormat:@"\n*****\n\nRental Record for %@\n", self.name];
    
    for (Rental *r in self.rentals) {
        // show figures for this rental
        result = [result stringByAppendingFormat:@"\t%@\t%.2f\n", r.movie.title, [r getCharge]];
    }
    // add footer lines
    result = [result stringByAppendingFormat:@"Amount owed is %.2f\n", [self getTotalCharge]];
    result = [result stringByAppendingFormat:@"You earned %d frequent renter points\n\n*****", [self getTotalFrequentPoints]];
    return result;
}

#pragma mark - Private
- (double)getTotalCharge {
    double ret = 0;
    for (Rental *r in self.rentals) {
        ret += [r getCharge];
    }
    return ret;
}

- (int)getTotalFrequentPoints {
    int ret = 0;
    for (Rental *r in self.rentals) {
        ret += [r getFrequentRenterPoints];
    }
    return ret;
}

@end
