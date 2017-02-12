//
//  ViewController.h
//  Map
//
//  Created by MM - 03 on 25/10/16.
//  Copyright © 2016 praful. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TileOverlay.h"

@interface ViewController : UIViewController <MKMapViewDelegate>
@property (nonatomic, retain) TileOverlay *overlay;

@end

