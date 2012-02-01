//
//  CCAnimation+AnimHelper.m
//  CVS-Tycoon
//
//  Created by ZHANG ZHE on 1/13/12.
//  Copyright (c) 2012 AvalonGameArt. All rights reserved.
//

#import "Categories.h"

@implementation CCAnimation (AnimHelper)

+(CCAnimation*) animationWithFrame:(NSString *)frameBaseName frameCountBegin:(int)beg frameCountEnd:(int)end delay:(float)delay
{
    NSMutableArray* frames = [NSMutableArray arrayWithCapacity:end-beg+1];
    for (int i = beg; i<= end; ++i) {
        NSString* file = [NSString stringWithFormat:@"%@%i.png", frameBaseName, i];
        CCSpriteFrameCache* frameCache = [CCSpriteFrameCache sharedSpriteFrameCache];
        CCSpriteFrame* frame = [frameCache spriteFrameByName:file];
        [frames addObject:frame];
    }
    return [CCAnimation animationWithFrames:frames delay:delay];
}

@end