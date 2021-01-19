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
    double totalAmount = 0;
    int frequentRenterPoints = 0;
    NSString *result = [NSString stringWithFormat:@"\n*****\n\nRental Record for %@\n", self.name];
    
    for (Rental *r in self.rentals) {
        
        // add frequent renter points
        frequentRenterPoints ++;
        // add bonus for a two day new release rental
        if (r.movie.priceCode == MovieTypeNewRelease && r.daysRented > 1) {
            frequentRenterPoints ++;
        }
        // show figures for this rental
        result = [result stringByAppendingFormat:@"\t%@\t%.2f\n", r.movie.title, [r getCharge]];
        totalAmount += [r getCharge];
    }
    // add footer lines
    result = [result stringByAppendingFormat:@"Amount owed is %.2f\n", totalAmount];
    result = [result stringByAppendingFormat:@"You earned %d frequent renter points\n\n*****", frequentRenterPoints];
    return result;
}

@end
