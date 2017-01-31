//
//  Target_Reply.m
//  SXNews
//
//  Created by wangshiyu13 on 2017/1/31.
//  Copyright © 2017年 ShangxianDante. All rights reserved.
//

#import "Target_Reply.h"
#import "SXReplyPage.h"
/**
 @property(nonatomic,assign)SXReplyPageFrom source;
 @property(nonatomic,copy)NSString *photoSetId;
 @property(nonatomic,copy)NSString *docid;
 @property(nonatomic,copy)NSString *boardid;
 */
@implementation Target_Reply
- (UIViewController *)Action_aViewController:(NSDictionary *)params {
    NSUInteger source = [params[@"from"] unsignedIntegerValue];
    NSString *photoSetId = params[@"photoSetId"];
    NSString *docid = params[@"docId"];
    NSString *boardid = params[@"boardId"];
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"SXReplyPage" bundle:nil];
    SXReplyPage *page = sb.instantiateInitialViewController;
    page.source = source;
    page.photoSetId = photoSetId;
    page.docid = docid;
    page.boardid = boardid;
    return page;
}
@end
