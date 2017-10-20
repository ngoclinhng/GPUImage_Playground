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
    
    // add gpuImageView to self
    [self.view addSubview:gpuImageView];
    
    // Read in the lena image
    UIImage *lena = [UIImage imageNamed:@"lena"];
    
    // Initialize filters
    GPUImagePicture *stillImageSource = [[GPUImagePicture alloc] initWithImage:lena];
    GPUImageSepiaFilter *stillImageFilter = [[GPUImageSepiaFilter alloc] init];
    
    // chain filters together
    [stillImageSource addTarget:stillImageFilter];
    [stillImageFilter addTarget:gpuImageView];
    
    // process image
    [stillImageSource processImage];
}



@end
