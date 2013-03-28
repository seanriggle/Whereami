//
//  BNRMapPoint.h
//  Whereami
//
//  Created by Sean Riggle on 3/27/13.
//  Copyright (c) 2013 Sean Riggle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPoint : NSObject<MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

// Title and subtitle for use by selection UI.
@property (nonatomic, readonly, copy) NSString *title;

-(id)initWithCoordinate: (CLLocationCoordinate2D)c title:(NSString *)t;

@end
