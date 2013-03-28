//
//  BNRMapPoint.m
//  Whereami
//
//  Created by Sean Riggle on 3/27/13.
//  Copyright (c) 2013 Sean Riggle. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

-(id)init{
    return [self initWithCoordinate: CLLocationCoordinate2DMake(80.07, -89.2) title:@"home"];
}
-(id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self)
    {
        _coordinate = c;
        //[self title];
        _title = t;
    }
    return self;
}

@end
