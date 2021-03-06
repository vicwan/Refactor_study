//
//  Customer.m
//  第一章
//
//  Created by Vic on 2021/1/18.
//

#import "Customer.h"

@implementation Customer


- (NSString *)statement {
    double totalAmount = 0;
    int frequentRenterPoints = 0;
    NSString *result = [NSString stringWithFormat:@"Rental Record for %@\n", self.name];
    
    for (Rental *r in self.rentals) {
        double thisAmount = 0;
        
        // determine amounts for each line
        switch (r.movie.priceCode) {
            case MovieTypeRegular:
                thisAmount += 2;
                if (r.daysRented > 2) {
                    thisAmount += (r.daysRented - 2) * 1.5;
                }
                break;
            case MovieTypeNewRelease:
                thisAmount += r.daysRented * 3;
                break;
                
            case MovieTypeChildren:
                thisAmount += 1.5;
                if (r.daysRented > 3) {
                    thisAmount += (r.daysRented - 3) * 1.5;
                }
                break;
            default:
                break;
        }
        
        // add frequent renter points
        frequentRenterPoints ++;
        // add bonus for a two day new release rental
        if (r.movie.priceCode == MovieTypeNewRelease && r.daysRented > 1) {
            frequentRenterPoints ++;
        }
        // show figures for this rental
        result = [result stringByAppendingFormat:@"\t%@\t%.2f\n", r.movie.title, thisAmount];
        totalAmount += thisAmount;
    }
    // add footer lines
    result = [result stringByAppendingFormat:@"Amount owed is %.2f\n", totalAmount];
    result = [result stringByAppendingFormat:@"You earned %d frequent renter points", frequentRenterPoints];
    return result;
}
@end
