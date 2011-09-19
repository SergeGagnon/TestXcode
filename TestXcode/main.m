//
//  main.m
//  TestXcode
//
//  Created by Gagnon Serge on 11-09-19.
//  Copyright 2011 Maniko. All rights reserved.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Fraction : NSObject {
    int numerator;
    int denominator;
}

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
@end

// ---- Implementation section ----

@implementation Fraction

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

@end


// ---- Program section ----

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    Fraction *myFraction;
    
    // Create instance of Fraction
    myFraction = [Fraction alloc];
    myFraction = [myFraction init];
    
    // Set fraction to 1/3
    [myFraction setNumerator:1];
    [myFraction setDenominator:3];
    
    // Display the fractoin using the print method
    
    NSLog(@"The value of myFraction is:");
    [myFraction print];
    [myFraction release];

    [pool drain];
    return 0;
}

