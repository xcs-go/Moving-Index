//
//  MovieModel.h
//  MovieIndex
//
//  Created by 谢朝森 on 16/5/19.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieModel : NSObject
/**
 *  演员
 */
@property(nonatomic, copy)NSString * act;

/**
 *  地区
 */
@property(nonatomic, copy)NSString * area;

/**
 *  影片图片地址
 */
@property(nonatomic, copy)NSString * cover;

/**
 *  影片描述
 */
@property(nonatomic, copy)NSString * desc;

/**
 *  影片导演
 */
@property(nonatomic, copy)NSString * dir;

/**
 *  影片类型
 */
@property(nonatomic, copy)NSString * MovieTag;

/**
 *  影片名
 */
@property(nonatomic, copy)NSString * title;

/**
 *  更新
 */
@property(nonatomic, copy)NSString * update_num;

/**
 *  影片年份
 */
@property(nonatomic, copy)NSString * year;
@end
