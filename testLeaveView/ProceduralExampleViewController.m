//
//  MinimalExampleViewController.m
//  Leaves
//
//  Created by Tom Brow on 4/20/10.
//  Copyright 2010 Tom Brow. All rights reserved.
//

#import "ProceduralExampleViewController.h"


@implementation ProceduralExampleViewController

#pragma mark LeavesViewDataSource methods

- (NSUInteger) numberOfPagesInLeavesView:(LeavesView*)leavesView {
	return 3;
}

- (void) renderPageAtIndex:(NSUInteger)index inContext:(CGContextRef)ctx {
//	CGRect bounds = CGContextGetClipBoundingBox(ctx);
//	CGContextSetFillColorWithColor(ctx, [[UIColor colorWithHue:index/10.0 
//													saturation:0.8
//													brightness:0.8 
//														 alpha:1.0] CGColor]);
//	CGContextFillRect(ctx, CGRectInset(bounds, 100, 100));
    CGRect bounds = CGContextGetClipBoundingBox(ctx);
    
    UIView* renderView = [[UIView alloc] initWithFrame:bounds];
    renderView.backgroundColor = [UIColor colorWithHue:index/10.0
                                            saturation:0.8
                                            brightness:0.8
                                                 alpha:1.0];
    
    
    UILabel* label = [[UILabel alloc] initWithFrame:bounds];
    label.text = [NSString stringWithFormat:@"Page number %d", (int)index];
//    label.textAlignment = uitextali;
    [renderView addSubview:label];
    
    // View will render upside down if we omit this:
    CGAffineTransform verticalFlip = CGAffineTransformMake(1, 0, 0, -1, 0, bounds.size.height);
    CGContextConcatCTM(ctx, verticalFlip);
    
    
    // We call renderInContext on the layer to draw the view onto the context
    [renderView.layer renderInContext:ctx];
}

@end
