//
//  MovieModel.m
//  MovieIndex
//
//  Created by 谢朝森 on 16/5/19.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import "MovieModel.h"
#import "MJExtension.h"

@implementation MovieModel

+ (NSDictionary *)mj_replacedKeyFromPropertyName {
    return @{@"movieTag":@"tag"};
}

@end
