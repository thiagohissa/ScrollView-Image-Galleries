//
//  ViewController.m
//  ScrollView Image Galleries
//
//  Created by Thiago Hissa on 2017-07-10.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UIImageView *image3;
@property (weak, nonatomic) UIScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.scrollView viewWithTag:100];
    self.scrollView.delegate = self;
    self.scrollView.contentSize = self.image1.bounds.size;
    self.scrollView.contentSize = self.image2.bounds.size;
    self.scrollView.contentSize = self.image3.bounds.size;
}


@end
