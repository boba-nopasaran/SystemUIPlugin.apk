.class public Lcom/android/systemui/plugin/MobileNetworkView;
.super Landroid/widget/LinearLayout;
.source "MobileNetworkView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_CAR_WAKEUP:Ljava/lang/String; = "com.car.syswakeup"

.field static final PATH_PREFIX:Ljava/lang/String; = "/system/custom/systemui/"

.field private static final TAG:Ljava/lang/String; = "SP.MobileNetworkView"


# instance fields
.field private final SIGNAL_LEVEL:[I

.field private mAirPlane:Landroid/widget/ImageView;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHotSpot:Landroid/widget/ImageView;

.field private mListener:Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;

.field private mNetReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/View;

.field private mSignal:Landroid/widget/ImageView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mType:Landroid/widget/ImageView;

.field private mType_custom:Landroid/widget/ImageView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugin/MobileNetworkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/plugin/MobileNetworkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->SIGNAL_LEVEL:[I

    new-instance v0, Lcom/android/systemui/plugin/MobileNetworkView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/MobileNetworkView$1;-><init>(Lcom/android/systemui/plugin/MobileNetworkView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mNetReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mAirPlane:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mHotSpot:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType_custom:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/systemui/plugin/Util;->isMobileNetworkSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/MobileNetworkView;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;-><init>(Lcom/android/systemui/plugin/MobileNetworkView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mListener:Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void

    :array_0
    .array-data 4
        0x7f02001a
        0x7f02001b
        0x7f02001c
        0x7f02001d
        0x7f02001e
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/plugin/MobileNetworkView;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/plugin/MobileNetworkView;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->SIGNAL_LEVEL:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/plugin/MobileNetworkView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/plugin/MobileNetworkView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugin/MobileNetworkView;->updateMobileNetworkState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/plugin/MobileNetworkView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/plugin/MobileNetworkView;->isHotspotEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/plugin/MobileNetworkView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugin/MobileNetworkView;->updateHotspotIcon()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/plugin/MobileNetworkView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/plugin/MobileNetworkView;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/plugin/MobileNetworkView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugin/MobileNetworkView;->updateAirplaneIcon()V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isHotspotEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAirplaneIcon()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/plugin/MobileNetworkView;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mAirPlane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mAirPlane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHotspotIcon()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/plugin/MobileNetworkView;->isHotspotEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mHotSpot:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mHotSpot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMobileNetworkState()V
    .locals 9

    const/16 v8, 0x8

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "SP.MobileNetworkView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile network is connected, type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const-string v5, "/system/custom/systemui/sys_connected_4g.png"

    invoke-static {v5}, Lcom/android/systemui/plugin/Util;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "/system/custom/systemui/sys_connected_4g.png"

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType_custom:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType_custom:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mListener:Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;

    iget v2, v5, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->lastLevel:I

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-ltz v2, :cond_7

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->SIGNAL_LEVEL:[I

    array-length v5, v5

    if-ge v2, v5, :cond_7

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/plugin/MobileNetworkView;->SIGNAL_LEVEL:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType:Landroid/widget/ImageView;

    const v6, 0x7f020017

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType_custom:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const-string v5, "/system/custom/systemui/sys_connected_3g.png"

    invoke-static {v5}, Lcom/android/systemui/plugin/Util;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "/system/custom/systemui/sys_connected_3g.png"

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType_custom:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType_custom:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType:Landroid/widget/ImageView;

    const v6, 0x7f020016

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType_custom:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const-string v5, "/system/custom/systemui/sys_connected_e.png"

    invoke-static {v5}, Lcom/android/systemui/plugin/Util;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "/system/custom/systemui/sys_connected_e.png"

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType_custom:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType_custom:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType:Landroid/widget/ImageView;

    const v6, 0x7f020018

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType_custom:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    const-string v5, "SP.MobileNetworkView"

    const-string v6, "mobile network is disconnected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    const v6, 0x7f02001f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/android/systemui/plugin/MobileNetworkView;->updateAirplaneIcon()V

    invoke-direct {p0}, Lcom/android/systemui/plugin/MobileNetworkView;->updateHotspotIcon()V

    invoke-direct {p0}, Lcom/android/systemui/plugin/MobileNetworkView;->updateMobileNetworkState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mNetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mListener:Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mNetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/plugin/MobileNetworkView;->mListener:Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
