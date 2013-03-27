//
//  MKMapView+ZoomExtras.h
//  CompanyKit
//
//  Created by Alsey Coleman Miller on 3/21/13.
//  Copyright (c) 2013 Webeo Games. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface MKMapView (ZoomExtras)

-(void)zoomToUserLocationInRelationToCoordinate:(CLLocationCoordinate2D)coordinate;

@end
