# AuthorDemo
方便植入到自己创建的应用中的作者彩蛋

## 介绍
目前的方式是，对着界面连击7次，弹出一个Alert显示内容。很简单，但是相应的也很方便，随拷随用。希望以后技术成长了能做出更炫酷又简单的效果来吧~

## 效果图
![](https://github.com/Cloudox/AuthorDemo/blob/master/AuthorDemo.png)

## 使用方法
直接将以下代码复制到应用的某个界面：
```Objective-C
// 获取view点击事件
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch *aTouch in touches) {
        // 判断点击7次后执行
        if (aTouch.tapCount > 6 && aTouch.tapCount < 8) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"Hello Cloudox" delegate:self cancelButtonTitle:nil otherButtonTitles:@"确定",nil];
            [alert show];
        }
    }
}
```
这样在这个界面连击7次，就会弹出Alert了，如果不对tapCount的上限做限制，那么每多点击一次都会执行一次，我们还是只执行一次比较好。  
一般放在应用的关于界面比较好，基本应用都会有关于界面，而关于界面的UI元素又比较少，不会影响到应用本身的使用。
