//
//  ViewController.m
//  Map
//
//  Created by MM - 03 on 25/10/16.
//  Copyright © 2016 praful. All rights reserved.
//

#import "ViewController.h"
#import "TileOverlay.h"
#import "TileOverlayView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet MKMapView *mapview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    // your existing viewDidLoad code is here
    
    self.overlay = [[TileOverlay alloc] initOverlay];
    [_mapview addOverlay:self.overlay];
    MKMapRect visibleRect = [_mapview mapRectThatFits:self.overlay.boundingMapRect];
    visibleRect.size.width /= 2;
    visibleRect.size.height /= 2;
    visibleRect.origin.x += visibleRect.size.width / 2;
    visibleRect.origin.y += visibleRect.size.height / 2;
    _mapview.visibleMapRect = visibleRect;
}
- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)ovl
{
    TileOverlayView *view = [[TileOverlayView alloc] initWithOverlay:ovl];
    view.tileAlpha = 1.0; // e.g. 0.6 alpha for semi-transparent overlay
    return view;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
