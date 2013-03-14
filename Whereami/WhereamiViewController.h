//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Sean Riggle on 3/12/13.
//  Copyright (c) 2013 Sean Riggle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereamiViewController : UIViewController<CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}

@end
