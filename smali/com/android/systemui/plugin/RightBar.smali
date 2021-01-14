.class public Lcom/android/systemui/plugin/RightBar;
.super Landroid/widget/LinearLayout;
.source "RightBar.java"


# static fields
.field private static final ACTION_GPS_SATELLITES:Ljava/lang/String; = "com.car.satellites"

.field private static final ACTION_GPS_SATELLITES_EXTRA:Ljava/lang/String; = "count"

.field private static final BTDEV_CONNECTED_NOFITY:Ljava/lang/String; = "com.car.bthpone.connected.notify"

.field private static final BTDEV_EXTRA:Ljava/lang/String; = "connected"

.field private static final FM:Ljava/lang/String; = "fm_enable"

.field private static final FM_FREQ:Ljava/lang/String; = "fm_freq"

.field private static final REMOVE_BATTERY:Z

.field private static final TAG:Ljava/lang/String; = "SP.RightBar"

.field private static final TENCENT_ACTION_ASR_EVENT:Ljava/lang/String; = "tencent.intent.action.ASR.EVENT"

.field private static final TENCENT_ACTION_STATUS_KEY:Ljava/lang/String; = "status_key"

.field private static final WIFI_SIGNAL_STRENGTH:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothImageView:Landroid/widget/ImageView;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFmImageView:Landroid/widget/ImageView;

.field private mGpsDisabledImageView:Landroid/widget/ImageView;

.field private mGpsView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mMuteImageView:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mRunnableUpdateGpsState:Ljava/lang/Runnable;

.field private mSysStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConnected:Z

.field private mWifiEnabled:Z

.field private mWifiIconId:I

.field private mWifiImageView:Landroid/widget/ImageView;

.field private mWifiLevel:I

.field private mWifiRssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "ro.settings.remove"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "battery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/plugin/RightBar;->REMOVE_BATTERY:Z

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/plugin/RightBar;->WIFI_SIGNAL_STRENGTH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020020
        0x7f020021
        0x7f020022
        0x7f020023
        0x7f020024
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugin/RightBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/plugin/RightBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/plugin/RightBar;->mWifiIconId:I

    .line 67
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mHandler:Landroid/os/Handler;

    .line 332
    new-instance v2, Lcom/android/systemui/plugin/RightBar$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/plugin/RightBar$5;-><init>(Lcom/android/systemui/plugin/RightBar;)V

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mRunnableUpdateGpsState:Ljava/lang/Runnable;

    .line 362
    new-instance v2, Lcom/android/systemui/plugin/RightBar$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/plugin/RightBar$6;-><init>(Lcom/android/systemui/plugin/RightBar;)V

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mSysStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v2, Lcom/android/systemui/plugin/RightBar$7;

    iget-object v3, p0, Lcom/android/systemui/plugin/RightBar;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/plugin/RightBar$7;-><init>(Lcom/android/systemui/plugin/RightBar;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mContentObserver:Landroid/database/ContentObserver;

    .line 80
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 81
    .local v0, "manager":Landroid/view/WindowManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "strOpt":Ljava/lang/String;
    const-string v2, "1280x320"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/plugin/RightBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mRootView:Landroid/view/View;

    .line 90
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    .line 92
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mGpsView:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mRootView:Landroid/view/View;

    const v3, 0x7f0a001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mFmImageView:Landroid/widget/ImageView;

    .line 94
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mWifiImageView:Landroid/widget/ImageView;

    .line 95
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mRootView:Landroid/view/View;

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mMuteImageView:Landroid/widget/ImageView;

    .line 96
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mRootView:Landroid/view/View;

    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mGpsDisabledImageView:Landroid/widget/ImageView;

    .line 97
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mRootView:Landroid/view/View;

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mBluetoothImageView:Landroid/widget/ImageView;

    .line 98
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mBluetoothImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    sget-boolean v2, Lcom/android/systemui/plugin/RightBar;->REMOVE_BATTERY:Z

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mRootView:Landroid/view/View;

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mAudioManager:Landroid/media/AudioManager;

    .line 106
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/plugin/RightBar$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/plugin/RightBar$1;-><init>(Lcom/android/systemui/plugin/RightBar;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void

    .line 86
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030005

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mRootView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/plugin/RightBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/plugin/RightBar;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/plugin/RightBar;->updateFmState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/plugin/RightBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/plugin/RightBar;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/plugin/RightBar;->updateMuteStateInThread()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/plugin/RightBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/plugin/RightBar;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/RightBar;->updateSatellites(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/plugin/RightBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugin/RightBar;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/plugin/RightBar;->getMuteState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/plugin/RightBar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugin/RightBar;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/plugin/RightBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugin/RightBar;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/plugin/RightBar;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/plugin/RightBar;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/RightBar;->updateWifiState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/plugin/RightBar;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/plugin/RightBar;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/RightBar;->updateBtState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/plugin/RightBar;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugin/RightBar;
    .param p1, "x1"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugin/RightBar;->updateMuteStateDelay(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/plugin/RightBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugin/RightBar;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mRunnableUpdateGpsState:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/plugin/RightBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/plugin/RightBar;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/RightBar;->updateGpsStateDelay(I)V

    return-void
.end method

.method private getFMEnable()I
    .locals 3

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fm_enable"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 165
    :goto_0
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "snfe":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getFMFreq()I
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fm_freq"

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getMuteState()Z
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, "mute":Z
    iget-object v5, p0, Lcom/android/systemui/plugin/RightBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 305
    .local v0, "currVolume":I
    iget-object v5, p0, Lcom/android/systemui/plugin/RightBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    const/4 v2, 0x1

    .line 309
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/plugin/RightBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 310
    .local v1, "isNormalMode":Z
    :goto_0
    const-string v5, "SP.RightBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMuteState: mute="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isNormalMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    :goto_1
    return v3

    .end local v1    # "isNormalMode":Z
    :cond_2
    move v1, v4

    .line 309
    goto :goto_0

    .restart local v1    # "isNormalMode":Z
    :cond_3
    move v3, v4

    .line 311
    goto :goto_1
.end method

.method private updateBtState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 220
    if-eqz p1, :cond_0

    const-string v4, "connected"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.car.bthpone.connected.notify"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    .line 224
    if-nez p1, :cond_1

    .line 245
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 230
    :cond_1
    const-string v4, "connected"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 231
    .local v2, "isConnected":Z
    if-eqz v2, :cond_3

    .line 232
    const v1, 0x7f02000d

    .line 237
    .local v1, "iconId":I
    :goto_1
    const-string v4, "SP.RightBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBtState:isConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v3, " "

    .line 240
    .local v3, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 241
    const-string v4, "name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    :cond_2
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/systemui/plugin/RightBar;->btStateChanged(ZLjava/lang/String;I)V

    goto :goto_0

    .line 234
    .end local v1    # "iconId":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    const v1, 0x7f02000c

    .restart local v1    # "iconId":I
    goto :goto_1
.end method

.method private updateFmState()V
    .locals 5

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/systemui/plugin/RightBar;->getFMEnable()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 171
    .local v0, "enabled":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/plugin/RightBar;->getFMFreq()I

    move-result v1

    .line 172
    .local v1, "freq":I
    const-string v2, "SP.RightBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFmState:isEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", freq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/plugin/RightBar;->fmStateChanged(ZI)V

    .line 174
    return-void

    .line 170
    .end local v0    # "enabled":Z
    .end local v1    # "freq":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateGpsState()Z
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, "mute":Z
    iget-object v6, p0, Lcom/android/systemui/plugin/RightBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 317
    .local v0, "currVolume":I
    iget-object v6, p0, Lcom/android/systemui/plugin/RightBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v0, :cond_1

    .line 318
    :cond_0
    const/4 v2, 0x1

    .line 321
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/plugin/RightBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    .line 322
    .local v1, "isNormalMode":Z
    :goto_0
    const-string v6, "SP.RightBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateMuteState: mute="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isNormalMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v3, v4

    .line 324
    .local v3, "setMute":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/plugin/RightBar$4;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/plugin/RightBar$4;-><init>(Lcom/android/systemui/plugin/RightBar;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    return v3

    .end local v1    # "isNormalMode":Z
    .end local v3    # "setMute":Z
    :cond_2
    move v1, v5

    .line 321
    goto :goto_0

    .restart local v1    # "isNormalMode":Z
    :cond_3
    move v3, v5

    .line 323
    goto :goto_1
.end method

.method private updateGpsStateDelay(I)V
    .locals 4
    .param p1, "delayMillis"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/plugin/RightBar;->mRunnableUpdateGpsState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/plugin/RightBar;->mRunnableUpdateGpsState:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    return-void
.end method

.method private updateMuteStateDelay(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/plugin/RightBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/plugin/RightBar$2;-><init>(Lcom/android/systemui/plugin/RightBar;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    return-void
.end method

.method private updateMuteStateInThread()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/plugin/RightBar$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/plugin/RightBar$3;-><init>(Lcom/android/systemui/plugin/RightBar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 300
    return-void
.end method

.method private updateSatellites(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/android/systemui/plugin/RightBar;->satellitesChanged(I)V

    .line 351
    return-void
.end method

.method private updateSysState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/plugin/RightBar;->updateFmState()V

    .line 355
    invoke-direct {p0, v0}, Lcom/android/systemui/plugin/RightBar;->updateBtState(Landroid/content/Intent;)V

    .line 356
    invoke-direct {p0, v0}, Lcom/android/systemui/plugin/RightBar;->updateWifiState(Landroid/content/Intent;)V

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/plugin/RightBar;->updateMuteStateInThread()V

    .line 358
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/plugin/RightBar;->updateMuteStateDelay(J)V

    .line 359
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/android/systemui/plugin/RightBar;->updateGpsStateDelay(I)V

    .line 360
    return-void
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/plugin/RightBar;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/android/systemui/plugin/RightBar;->WIFI_SIGNAL_STRENGTH:[I

    iget v1, p0, Lcom/android/systemui/plugin/RightBar;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/plugin/RightBar;->mWifiIconId:I

    .line 261
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/plugin/RightBar;->mWifiEnabled:Z

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/plugin/RightBar;->mWifiIconId:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/plugin/RightBar;->wifiStateChanged(ZLjava/lang/String;I)V

    .line 262
    return-void

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/plugin/RightBar;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    .line 253
    const-string v0, "SP.RightBar"

    const-string v1, "=========mWifiEnabled==========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const v0, 0x7f020025

    iput v0, p0, Lcom/android/systemui/plugin/RightBar;->mWifiIconId:I

    goto :goto_0

    .line 256
    :cond_1
    const-string v0, "SP.RightBar"

    const-string v1, "---------mWifiDisabled-----------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/plugin/RightBar;->mWifiIconId:I

    goto :goto_0
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 177
    const/4 v4, 0x0

    .line 178
    .local v4, "validWifiIntent":Z
    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 181
    const-string v7, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_2

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/plugin/RightBar;->mWifiEnabled:Z

    .line 183
    const/4 v4, 0x1

    .line 199
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    .line 200
    iget-object v7, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 201
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 203
    .local v6, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/plugin/RightBar;->mWifiConnected:Z

    .line 204
    iget-object v7, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 205
    .local v5, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_1

    .line 206
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    if-ne v7, v11, :cond_6

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/plugin/RightBar;->mWifiEnabled:Z

    .line 207
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 208
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/plugin/RightBar;->mWifiRssi:I

    .line 210
    iget v7, p0, Lcom/android/systemui/plugin/RightBar;->mWifiRssi:I

    sget-object v8, Lcom/android/systemui/plugin/RightBar;->WIFI_SIGNAL_STRENGTH:[I

    array-length v8, v8

    invoke-static {v7, v8}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/plugin/RightBar;->mWifiLevel:I

    .line 216
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    .end local v5    # "wifiMgr":Landroid/net/wifi/WifiManager;
    .end local v6    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/plugin/RightBar;->updateWifiIcons()V

    .line 217
    return-void

    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    move v7, v9

    .line 181
    goto :goto_0

    .line 184
    :cond_3
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 185
    const-string v7, "networkInfo"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 187
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_3
    iput-boolean v7, p0, Lcom/android/systemui/plugin/RightBar;->mWifiConnected:Z

    .line 189
    const/4 v4, 0x1

    .line 190
    goto :goto_1

    :cond_4
    move v7, v9

    .line 187
    goto :goto_3

    .line 190
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 191
    const-string v7, "newRssi"

    const/16 v10, -0xc8

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/plugin/RightBar;->mWifiRssi:I

    .line 193
    iget v7, p0, Lcom/android/systemui/plugin/RightBar;->mWifiRssi:I

    sget-object v10, Lcom/android/systemui/plugin/RightBar;->WIFI_SIGNAL_STRENGTH:[I

    array-length v10, v10

    invoke-static {v7, v10}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/plugin/RightBar;->mWifiLevel:I

    .line 195
    const/4 v4, 0x1

    goto/16 :goto_1

    .end local v0    # "action":Ljava/lang/String;
    .restart local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v5    # "wifiMgr":Landroid/net/wifi/WifiManager;
    .restart local v6    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_6
    move v8, v9

    .line 206
    goto :goto_2
.end method


# virtual methods
.method public btStateChanged(ZLjava/lang/String;I)V
    .locals 3
    .param p1, "connected"    # Z
    .param p2, "connectedName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 445
    if-eqz p1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mBluetoothImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mBluetoothImageView:Landroid/widget/ImageView;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 453
    :goto_0
    const-string v0, "SP.RightBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBtState:isConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mBluetoothImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mBluetoothImageView:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/plugin/RightBar;->updateSysState()V

    .line 153
    return-void
.end method

.method public fmStateChanged(ZI)V
    .locals 2
    .param p1, "opened"    # Z
    .param p2, "freq"    # I

    .prologue
    .line 457
    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mFmImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mFmImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public gpsStatChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mGpsDisabledImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mGpsDisabledImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public musicMuteStatChanged(Z)V
    .locals 2
    .param p1, "mute"    # Z

    .prologue
    .line 411
    if-eqz p1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mMuteImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mMuteImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 116
    const-string v1, "SP.RightBar"

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "com.car.bthpone.connected.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "com.car.satellites"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "com.car.btphone.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "tencent.intent.action.ASR.EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar;->mSysStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fm_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/plugin/RightBar;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    iget-object v1, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fm_freq"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/plugin/RightBar;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    iget-object v1, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/plugin/RightBar;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 143
    const-string v0, "SP.RightBar"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/plugin/RightBar;->mSysStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/plugin/RightBar;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 147
    return-void
.end method

.method public satellitesChanged(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mGpsView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    if-nez p1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mGpsView:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mGpsView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public wifiStateChanged(ZLjava/lang/String;I)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "connectedName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 436
    if-eqz p3, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mWifiImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mWifiImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar;->mWifiImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
