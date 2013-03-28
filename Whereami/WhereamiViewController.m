//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Sean Riggle on 3/12/13.
//  Copyright (c) 2013 Sean Riggle. All rights reserved.
//

#import "WhereamiViewController.h"
#import "BNRMapPoint.h"

@implementation WhereamiViewController
{
    CLLocationCoordinate2D loc;
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
        //create the location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate:self];
        
        //and we want it to be as accurate as possible
        //regardless of how much time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
    }
    return self;
}

- (void) mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    //here now have to do zoom
   // CLLocationCoordinate2D loc;
    MKCoordinateRegion region;
    
    loc = [userLocation coordinate];
    
    region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [worldView setRegion:region animated:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    
    BNRMapPoint *pt = [[BNRMapPoint alloc]
                       initWithCoordinate:loc title:[locationTitleField text]];
    
    [worldView addAnnotation:pt];
    
    return YES;
}
/*
- (void) viewDidLoad {
    [worldView setShowsUserLocation:YES];
}
 */

- (void) dealloc
{
    //Tell the location manager to stop sending us a message
    [locationManager setDelegate:nil];
}

- (void)locationManager:(CLLocationManager *)manager
            didUpdateToLocation:(CLLocation *)newLocation
                fromLocation:(CLLocation *)oldLocation
{
    double lat = [newLocation coordinate].latitude;
    double lon = [newLocation coordinate].longitude;
    
    NSLog(@"%f, %f", lat,lon);
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

//- (void) doSomethingWeird
//{
//    NSLog(@"Line 1");
//    NSLog(@"Line 2");
//    NSLog(@"Line 3");
//}

@end
