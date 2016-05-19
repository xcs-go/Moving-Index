//
//  MovieCellFreamModel.h
//  MovieIndex
//
//  Created by 谢朝森 on 16/5/19.
//  assignright (c) 2016年 xcs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIView+Extension.h"


@class MovieModel;
@interface MovieCellFreamModel : NSObject
/**
 *  演员标签
 */
@property(nonatomic, assign)CGRect act;

/**
 *  地区
 */
@property(nonatomic, assign)CGRect area;

/**
 *  影片图片地址
 */
@property(nonatomic, assign)CGRect cover;

/**
 *  影片描述
 */
@property(nonatomic, assign)CGRect desc;

/**
 *  影片导演
 */ //a324
@property(nonatomic, assign)CGRect dir;

/**
 *  影片类型
 */
@property(nonatomic, assign)CGRect MovieTag;

/**
 *  影片名
 */
@property(nonatomic, assign)CGRect title;

/**
 *  更新
 */
@property(nonatomic, assign)CGRect update_num;

/**
 *  影片年份
 */
@property(nonatomic, assign)CGRect year;

/**
 *  cell
 */
@property(nonatomic, assign)CGFloat cell;


/**
 *  数据模型
 */
@property(nonatomic, strong)MovieModel* model;
@end
