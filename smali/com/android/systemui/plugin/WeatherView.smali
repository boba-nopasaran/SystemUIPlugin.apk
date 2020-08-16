.class public Lcom/android/systemui/plugin/WeatherView;
.super Landroid/widget/LinearLayout;
.source "WeatherView.java"


# static fields
.field public static final CARSERVICE_WEATHER_AREA:Ljava/lang/String; = "area"

.field public static final CARSERVICE_WEATHER_CONDITION:Ljava/lang/String; = "condition"

.field public static final CARSERVICE_WEATHER_FORCAST:Ljava/lang/String; = "com.car.weather.forcast"

.field public static final CARSERVICE_WEATHER_ICONURL:Ljava/lang/String; = "iconurl"

.field public static final CARSERVICE_WEATHER_REFRESH:Ljava/lang/String; = "com.car.weather.refresh"

.field public static final CARSERVICE_WEATHER_TEMPERATURE:Ljava/lang/String; = "temperature"

.field private static final MSG_INIT_REFRESH:I = 0x2

.field private static final MSG_SHOW_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SP.WeatherView"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCityView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mQueryingWeather:Z

.field private mRootView:Landroid/view/View;

.field private mTemperatureView:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mWeatherFail:Landroid/view/View;

.field private mWeatherInfo:Landroid/view/View;

.field private mWeatherView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/WeatherView;->mQueryingWeather:Z

    new-instance v0, Lcom/android/systemui/plugin/WeatherView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/WeatherView$2;-><init>(Lcom/android/systemui/plugin/WeatherView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/plugin/WeatherView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/WeatherView$3;-><init>(Lcom/android/systemui/plugin/WeatherView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/plugin/WeatherView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/WeatherView;->mQueryingWeather:Z

    new-instance v0, Lcom/android/systemui/plugin/WeatherView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/WeatherView$2;-><init>(Lcom/android/systemui/plugin/WeatherView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/plugin/WeatherView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/WeatherView$3;-><init>(Lcom/android/systemui/plugin/WeatherView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/plugin/WeatherView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/WeatherView;->mQueryingWeather:Z

    new-instance v0, Lcom/android/systemui/plugin/WeatherView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/WeatherView$2;-><init>(Lcom/android/systemui/plugin/WeatherView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/plugin/WeatherView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/WeatherView$3;-><init>(Lcom/android/systemui/plugin/WeatherView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/plugin/WeatherView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/plugin/WeatherView;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/WeatherView;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/plugin/WeatherView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mWeatherFail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mWeatherView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mCityView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mTemperatureView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/plugin/WeatherView;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/WeatherView;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/plugin/WeatherView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/plugin/WeatherView;->mQueryingWeather:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/plugin/WeatherView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/plugin/WeatherView;->mQueryingWeather:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/plugin/WeatherView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/plugin/WeatherView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mWeatherInfo:Landroid/view/View;

    return-object v0
.end method

.method private initView()V
    .locals 5

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/plugin/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mWeatherView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mCityView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mTemperatureView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mWeatherInfo:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mWeatherFail:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/plugin/WeatherView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/WeatherView$1;-><init>(Lcom/android/systemui/plugin/WeatherView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/WeatherView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private isConnected(Landroid/content/Context;)Z
    .locals 6

    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SP.WeatherView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " return network connected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v3, "SP.WeatherView"

    const-string v4, "isConnected error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.weather.forcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/plugin/WeatherView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
