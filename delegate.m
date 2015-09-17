// delegate
// 代理
//
// IDECodeSnippetCompletionPrefix: delegate
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 40632C5E-681F-4704-9389-06B0347C5E37
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#import <Foundation/Foundation.h>

@class MyAlertView;
//声明一套协议文件
@protocol MyAlertViewDelegate <NSObject>

//两种
@optional
- (void)alertView:(MyAlertView* )alertView clickButtonAtIndex:(int)btnIndex;
@required

@end


@interface MyAlertView : NSObject
{
    UIView* _shadow;
}
@property(nonatomic,assign)id<MyAlertViewDelegate> delegate;
//自定义初始化方法和显示方法
- (id)initWithTitle:(NSString* )title withDelegate:(id<MyAlertViewDelegate>)delegate withOtherButton:(NSString* )other;
- (void)show;
@end

- (void)buttonClick:(UIButton* )btn
{
    if ([self.delegate respondsToSelector:@selector(alertView:clickButtonAtIndex:)]) {
        [self.delegate alertView:self clickButtonAtIndex:btn.tag];
    }
    
    //消失
    [_shadow removeFromSuperview];
}
