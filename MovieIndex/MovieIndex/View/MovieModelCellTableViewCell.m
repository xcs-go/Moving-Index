//
//  MovieModelCellTableViewCell.m
//  MovieIndex
//
//  Created by 谢朝森 on 16/5/19.
//  weakright (c) 2016年 xcs. All rights reserved.
//

#import "MovieModelCellTableViewCell.h"

@interface MovieModelCellTableViewCell ()
/**
 *  演员标签
 */
@property(nonatomic, weak)UILabel * actLab;

/**
 *  地区标签
 */
@property(nonatomic, weak)UILabel * areaLab;

/**
 *  影片图片地址标签
 */
@property(nonatomic, weak)UIImageView * coverView;

/**
 *  影片描述标签
 */
@property(nonatomic, weak)UILabel * descLab;

/**
 *  影片导演标签
 */
@property(nonatomic, weak)UILabel * dirLab;

/**
 *  影片类型标签
 */
@property(nonatomic, weak)UILabel * movieTagLab;

/**
 *  影片名标签
 */
@property(nonatomic, weak)UILabel * titleLab;

/**
 *  更新标签
 */
@property(nonatomic, weak)UILabel * update_numLab;

/**
 *  影片年份标签
 */
@property(nonatomic, weak)UILabel * yearLab;

@end

@implementation MovieModelCellTableViewCell


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
//        演员标签
        UILabel *actL = [[UILabel alloc] init];
        [self addSubview:actL];
        self.actLab = actL;
        
//        地区标签
        UILabel *areaLab = [[UILabel alloc] init];
        [self addSubview:areaLab];
        self.areaLab = areaLab;
        
//        导演标签
        UILabel *dir = [[UILabel alloc] init];
        [self addSubview:dir];
        self.dirLab = dir;
        
//        影片图片地址
        UIImageView *cover = [[UIImageView alloc] init];
        [self addSubview:cover];
        self.coverView = cover;
        
//        影片描述标签
        UILabel *desLa = [[UILabel alloc] init];
        [self addSubview:desLa];
        self.descLab = desLa;
        
//        影片类型标签
        UILabel *movieTag = [[UILabel alloc] init];
        [self addSubview:movieTag];
        self.movieTagLab = movieTag;
        
//        影片名标签
        UILabel *MovieName = [[UILabel alloc] init];
        [self addSubview:MovieName];
        self.titleLab = MovieName;
        
//        更新标签
        UILabel *update = [[UILabel alloc] init];
        [self addSubview:update];
        self.update_numLab = update;
        
//        年代标签
        UILabel *yearL = [[UILabel alloc] init];
        [self addSubview:yearL];
        self.yearLab = yearL;
        
    }
    return self;
}

@end
