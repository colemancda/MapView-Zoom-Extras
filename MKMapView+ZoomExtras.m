//
//  MKMapView+ZoomExtras.m
//  CompanyKit
//
//  Created by Alsey Coleman Miller on 3/21/13.
//  Copyright (c) 2013 Webeo Games. All rights reserved.
//

#import "MKMapView+ZoomExtras.h"

@implementation MKMapView (ZoomExtras)

-(void)zoomToUserLocationInRelationToCoordinate:(CLLocationCoordinate2D)coordinate
{
    float zoomPadding = 1000.0;
    
    MKMapPoint userPoint = MKMapPointForCoordinate(self.userLocation.coordinate);
    MKMapPoint coordinatePoint = MKMapPointForCoordinate(coordinate);
    
    MKMapRect mapRect = MKMapRectUnion(MKMapRectMake(userPoint.x,
                                                     userPoint.y,
                                                     0, 0),
                                       MKMapRectMake(coordinatePoint.x,
                                                     coordinatePoint.y,
                                                     0, 0));
    
    mapRect = MKMapRectInset(mapRect, -zoomPadding, -zoomPadding);
    
    MKCoordinateRegion region = MKCoordinateRegionForMapRect(mapRect);
    
    [self setRegion:[self regionThatFits:region]
           animated:YES];
}

@end
