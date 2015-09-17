// upLoadimageView
// 上传图片
//
// IDECodeSnippetCompletionPrefix: ulv
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 71C0EE8F-2AEB-4248-AC62-EE220A3CB9FC
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark -- 修改头像
- (IBAction)header:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.allowsEditing = YES;
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        [self presentViewController:picker animated:YES completion:nil];
        [picker release];
    }
}
#pragma mark -- 选取照片
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    headImage.image = image;
    NSData  *data = UIImagePNGRepresentation(image);
    [data writeToFile:[NSHomeDirectory() stringByAppendingPathComponent:@"Documents/image.plist"] atomically:YES];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"changeImage" object:nil];
    
}
