//
//  TestCase.m
//  第一章
//
//  Created by Vic Wan on 2021/1/19.
//

#import "TestCase.h"
#import "Customer.h"
#import "Rental.h"
#import "Movie.h"

@implementation TestCase

+ (void)testRun1 {
    Movie *m1 = [[Movie alloc] initWithTitle:@"a" priceCode:MovieTypeRegular];
    Movie *m2 = [[Movie alloc] initWithTitle:@"b" priceCode:MovieTypeNewRelease];
    Movie *m3 = [[Movie alloc] initWithTitle:@"c" priceCode:MovieTypeChildren];
    
    Rental *r1 = [[Rental alloc] initWithMovie:m1 daysRented:2];
    Rental *r2 = [[Rental alloc] initWithMovie:m2 daysRented:3];
    Rental *r3 = [[Rental alloc] initWithMovie:m3 daysRented:1];
    
    Customer *c1 = [[Customer alloc] initWithName:@"Mike"];
    [c1 addRental:r1];
    [c1 addRental:r2];
    [c1 addRental:r3];
    
    NSLog(@"%@", [c1 statement]);
}

+ (void)run {
    [self testRun1];
}

@end
