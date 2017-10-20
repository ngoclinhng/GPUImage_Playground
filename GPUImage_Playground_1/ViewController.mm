//
//  ViewController.m
//  GPUImage_Playground_1
//
//  Created by Linh Ngoc on 10/20/17.
//  Copyright © 2017 Linh Ngoc. All rights reserved.
//

#import "ViewController.h"
#import <GPUImage/GPUImage.h>

@interface ViewController () {
    GPUImageView *gpuImageView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Setup gpuImageView
    CGRect frame = CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height);
    gpuImageView = [[GPUImageView alloc] initWithFrame:frame];
}



@end
