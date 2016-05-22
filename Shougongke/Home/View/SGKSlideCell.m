//
//  SGKSlideCell.m
//  Shougongke
//
//  Created by 周德艺 on 16/5/22.
//  Copyright © 2016年 周德艺. All rights reserved.
//

#import "SGKSlideCell.h"
#import "DYBannerView.h"

@interface SGKSlideCell ()

@property (nonatomic, strong) DYBannerView *bannerView;

@end

@implementation SGKSlideCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self.contentView addSubview:self.bannerView];
        [self layout];
    }
    return self;
}

- (void)configCell:(id)delegate images:(NSArray *)imageArray{
    [self.bannerView configBannerWithDelegate:delegate images:imageArray];
}

- (void)layout{
    [self.bannerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.contentView.mas_top);
        make.left.mas_equalTo(self.contentView.mas_left);
        make.right.mas_equalTo(self.contentView.mas_right);
        make.bottom.mas_equalTo(self.contentView.mas_bottom);
        make.height.mas_equalTo(self.contentView.mas_width).multipliedBy(0.42);;
    }];
}

- (DYBannerView *)bannerView{
    if (!_bannerView) {
        _bannerView = [[DYBannerView alloc]init];
        _bannerView.currentPageIndicatorTintColor = mainColor;
        _bannerView.pageIndicatorTintColor = [UIColor whiteColor];
    }
    return _bannerView;
}

@end