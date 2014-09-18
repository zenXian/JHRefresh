//
//  JHRefreshAniBaseView.m
//  JHRefresh
//
//  Created by Jiahai on 14-9-15.
//  Copyright (c) 2014年 Jiahai. All rights reserved.
//

#import "JHRefreshAniBaseView.h"
#import "JHRefreshHeaderView.h"
#import "JHRefreshFooterView.h"

@implementation JHRefreshAniBaseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    if([newSuperview isKindOfClass:[JHRefreshHeaderView class]])
    {
        self.refreshViewType = JHRefreshViewTypeHeader;
    }
    else if([newSuperview isKindOfClass:[JHRefreshFooterView class]])
    {
        self.refreshViewType = JHRefreshViewTypeFooter;
    }
    
    self.refreshViewID = ((JHRefreshBaseView *)newSuperview).ID;
    
    [super willMoveToSuperview:newSuperview];
}

#pragma mark - JHRefreshViewDelegate
- (void)refreshViewAniToBePulling
{
    
}
- (void)refreshViewAniToBeNormal
{
    
}
- (void)refreshViewBeginRefreshing
{
    
}
- (void)refreshViewEndRefreshing:(JHRefreshResult)result
{
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
