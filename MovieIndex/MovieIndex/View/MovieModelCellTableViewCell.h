//
//  MovieModelCellTableViewCell.h
//  MovieIndex
//
//  Created by 谢朝森 on 16/5/19.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MovieCellFreamModel;


@interface MovieModelCellTableViewCell : UITableViewCell

/**
 *  cell模型
 */
@property(nonatomic, strong)MovieCellFreamModel* cellModel;

@end
