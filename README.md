# HJWWaveFloatView

- 🌊 A Single HJWWaveFloatView for iOS.
- 🌊 一个波浪浮动视图

# Preview
<!--此处添加多张预览图-->
![HJWWaveFloatView](http://ofaxaig0m.bkt.clouddn.com/HJWWaveFloatView.gif)
# Usage
## **ViewController :**
 
 添加 **HJWWaveFloatView.h** 并设置代理

  `#import "HJWWaveFloatView.h"` 
 
### init

```Objetive-C

- (HJWWaveFloatView *)waveFloatView {
    if (!_waveFloatView) {
        _waveFloatView = [[HJWWaveFloatView alloc] initWithFrame:
                          CGRectMake(0, 0, self.view.frame.size.width, 200)
                                                       MainColor:@"53cac4"
                                                 MainSecondColor:@"ace6e2"
                                                 CircleFillColor:@"57d0c9"
                                           CircleSecondFillColor:@"5bd6ce"];
        _waveFloatView.center = self.view.center;
    }
    return _waveFloatView;
}

```

# issue
视图中包含水波纹动画与小圆球的浮动动画，已经抽离出来。
<br>
分别是**HJWWaterWave**、**HJWCircleView**，可以单独抽离出去使用。
> 注:
> 水波纹动画中，运用到的**drawRect**和**CAReplicatorLayer**
> 对应封装为
> **DrawRectObject**快速绘制想要的图形工具类
> **ReplicatorLineAnimationView**快速实现一些重复移动的效果视图

<br>
在使用过程中，如果有什么好的建议，可以与我联系。

# Thanks
### 特别感谢

[KittenYang](https://github.com/KittenYang)， **A GUIDE TO IOS ANIMATION**，通过这本书的重复学习与实践，使我从对于动画的入门。
<br>
[YouXianMing](https://github.com/YouXianMing)的[Animations](https://github.com/YouXianMing/Animations)给予我在动画这方面，有了一个更加深入的提高，与认识。



