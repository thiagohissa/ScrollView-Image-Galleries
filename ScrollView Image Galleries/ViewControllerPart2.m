//
//  ViewControllerPart2.m
//  ScrollView Image Galleries
//
//  Created by Thiago Hissa on 2017-07-10.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "ViewControllerPart2.h"


@interface ViewControllerPart2 () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView2;
@property (weak, nonatomic) IBOutlet UIImageView *myImage;
@property (nonatomic, strong) UIImage *capturedImage;
@end

@implementation ViewControllerPart2



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView2.delegate = self;
    self.scrollView2.maximumZoomScale = 2.0;
    self.scrollView2.minimumZoomScale = 0.2;
    self.myImage.image = self.capturedImage;
    
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.myImage;
}

-(void)configureWithImage:(UIImage *)paramImage
{
    self.capturedImage = paramImage;
}








@end
