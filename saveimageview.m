// SaveImageView
// 存储图片
//
// IDECodeSnippetCompletionPrefix: datapath
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 7EAA78BA-6709-4666-BC19-75038DEBF14E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    NSData *imageData = UIImageJPEGRepresentation(_imgView.image, 1);
    NSString *documentsPath = [NSHomeDirectory() stringByAppendingString:@"/Documents/"];
    //单例操作文件
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *dingDanHao = @"rpf";
    //存入文件中
    [fileManager createFileAtPath:[documentsPath stringByAppendingFormat:@"%@--%ld",dingDanHao,++_num] contents:imageData attributes:nil];
    //获取图片的全部路径
    NSString *imagePath = [[NSString alloc] initWithFormat:@"%@%@--%ld",documentsPath,dingDanHao,_num];
    NSLog(@"%@",imagePath);
    //读取沙盒中的路径
    _imgPath = [[NSString alloc]initWithString:imagePath];
    NSLog(@"----%@",_imgPath);
    //数组添加路径
