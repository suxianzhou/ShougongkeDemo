//
//  SGKBackBarItem.h
//  Shougongke
//
//  Created by 周德艺 on 16/5/23.
//  Copyright © 2016年 周德艺. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^BackCliclBlock)();

@interface SGKBackToolBar : UIToolbar

- (instancetype)initWithClick:(BackCliclBlock)click;

@end
