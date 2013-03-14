//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Sean Riggle on 3/12/13.
//  Copyright (c) 2013 Sean Riggle. All rights reserved.
//

#import "WhereamiViewController.h"

@implementation WhereamiViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
        //create the location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate:self];
        
        //and we want it to be as accurate as possible
        //regardless of how much time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        //tell out manager to start looking for its location immediately
        [locationManager startUpdatingLocation];
    }
    return self;
}

- (void)locationManager:(CLLocationManager *)manager
            didUpdateToLocation:(CLLocation *)newLocation
                fromLocation:(CLLocation *)oldLocation{
    double lat = [newLocation coordinate].latitude;
    double lon = [newLocation coordinate].longitude;
    
    NSLog(@"%f, %f", lat,lon);
}

@end
