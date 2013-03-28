//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Sean Riggle on 3/12/13.
//  Copyright (c) 2013 Sean Riggle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface WhereamiViewController : UIViewController<CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>
{
    CLLocationManager *locationManager;
    
    __weak IBOutlet MKMapView *worldView;
    __weak IBOutlet UIActivityIndicatorView *activityIndicator;
    __weak IBOutlet UITextField *locationTitleField;
}


@end
