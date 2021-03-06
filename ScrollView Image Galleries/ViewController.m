//
//  ViewController.m
//  ScrollView Image Galleries
//
//  Created by Thiago Hissa on 2017-07-10.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerPart2.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UIImageView *image3;
@property (weak, nonatomic) UIScrollView *scrollView;
@property (nonatomic) UIPageControl  *pageControl;
@end

@implementation ViewController





- (IBAction)changePageWithTap:(UITapGestureRecognizer*)sender {
    UIView *view = sender.view;
    NSLog(@"%d", (int)view.tag);
    [self performSegueWithIdentifier:@"segueWay" sender:[NSNumber numberWithLong:view.tag]];
}

- (IBAction)tap2:(UITapGestureRecognizer*)sender {
    [self changePageWithTap:sender];
}

- (IBAction)tap3:(UITapGestureRecognizer*)sender {
    [self changePageWithTap:sender];
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewControllerPart2 *vc = [segue destinationViewController];
    
    if([sender intValue]==101){
        [vc configureWithImage:self.image1.image];
    }
    else if([sender intValue]==102){
        [vc configureWithImage:self.image2.image];
    }
    else if([sender intValue]==103){
        [vc configureWithImage:self.image3.image];
    }
    
    
}






- (void)viewDidLoad {
    [super viewDidLoad];
    [self.scrollView viewWithTag:100];
    self.scrollView.delegate = self;
    self.scrollView.contentSize = self.image1.bounds.size;
    self.scrollView.contentSize = self.image2.bounds.size;
    self.scrollView.contentSize = self.image3.bounds.size;
    
    self.pageControl = [[UIPageControl alloc] init];
    self.pageControl.frame = CGRectMake(10, 40, 50, 50);
    self.pageControl.numberOfPages = 3;
    self.pageControl.currentPage = 0;
    [self.view addSubview:self.pageControl];
    
}


-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat width = scrollView.frame.size.width;
    NSInteger page = (scrollView.contentOffset.x + (0.5f * width)) / width;
    self.pageControl.currentPage = page;
}






@end
