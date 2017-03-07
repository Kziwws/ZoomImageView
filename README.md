>调用方法

```Java
 typedef NS_ENUM(NSInteger,KGestureRecognizerType){
    
    KSigleTapGestureRecognizerType,   //点击触发
    KDoubleTapGestureRecognizerType,  //双击触发
    KLongPressGestureRecognizerType   //长按触发
};
 KGestureRecognizerType gRType=[grArrays[idx] intValue];      
[[ZoomImageView getZoomImageView]showZoomImageView:headerImageView addGRType:gRType];//传入的手势
```

>效果图

![image](https://github.com/Kziwws/ZoomImageView/blob/master/ZoomImageView/68e6be8c213b3995d327670906acd94f.gif)
