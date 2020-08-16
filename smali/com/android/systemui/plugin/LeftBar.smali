.class public Lcom/android/systemui/plugin/LeftBar;
.super Landroid/widget/LinearLayout;
.source "LeftBar.java"


# static fields
.field private static CUSTOM_BUTTON_ACTION:Ljava/lang/String; = null

.field private static HIDE_CUSTOM_BUTTON:Z = false

.field private static HIDE_VOICE_BUTTON:Z = false

.field private static final PATH_PREFIX:Ljava/lang/String; = "/system/custom/systemui/"

.field private static final TAG:Ljava/lang/String; = "SP.LeftBar"


# instance fields
.field private final mCustomButtonClickListener:Landroid/view/View$OnClickListener;

.field private mFullscreenCtrl:Lcom/android/systemui/plugin/FullscreenCtrl;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "ro.sysbar.custom.btn.action"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/plugin/LeftBar;->CUSTOM_BUTTON_ACTION:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/plugin/LeftBar;->CUSTOM_BUTTON_ACTION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/plugin/LeftBar;->HIDE_CUSTOM_BUTTON:Z

    const-string v0, "persist.voiceassitant.engine"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.settings.remove"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "voice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    sput-boolean v2, Lcom/android/systemui/plugin/LeftBar;->HIDE_VOICE_BUTTON:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugin/LeftBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/plugin/LeftBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const v10, 0x7f0a000c

    const/16 v9, 0x8

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v6, Lcom/android/systemui/plugin/LeftBar$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/plugin/LeftBar$2;-><init>(Lcom/android/systemui/plugin/LeftBar;)V

    iput-object v6, p0, Lcom/android/systemui/plugin/LeftBar;->mCustomButtonClickListener:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/android/systemui/plugin/LeftBar;->CUSTOM_BUTTON_ACTION:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.bidostar.accidentreport"

    invoke-static {p1, v6}, Lcom/android/systemui/plugin/LeftBar;->isApkInstalledAndEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SP.LeftBar"

    const-string v7, "com.bidostar.accidentreport isApkInstalledAndEnabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "com.bidostar.accident"

    sput-object v6, Lcom/android/systemui/plugin/LeftBar;->CUSTOM_BUTTON_ACTION:Ljava/lang/String;

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/systemui/plugin/LeftBar;->HIDE_CUSTOM_BUTTON:Z

    :cond_0
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "1280x320"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/plugin/LeftBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "zh"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030003

    invoke-virtual {v6, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    const v7, 0x7f0a000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v6, Lcom/android/systemui/plugin/FullscreenCtrl;->FULLSCREEN_PKGS:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    new-instance v6, Lcom/android/systemui/plugin/FullscreenCtrl;

    iget-object v7, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    invoke-direct {v6, p1, v7, v0}, Lcom/android/systemui/plugin/FullscreenCtrl;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/systemui/plugin/LeftBar;->mFullscreenCtrl:Lcom/android/systemui/plugin/FullscreenCtrl;

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    const v7, 0x7f0a000d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v6, Lcom/android/systemui/plugin/LeftBar;->HIDE_CUSTOM_BUTTON:Z

    if-eqz v6, :cond_5

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    sget-boolean v6, Lcom/android/systemui/plugin/LeftBar;->HIDE_VOICE_BUTTON:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v6, Lcom/android/systemui/plugin/LeftBar;->HIDE_CUSTOM_BUTTON:Z

    if-eqz v6, :cond_3

    const v6, 0x7f0a0006

    invoke-virtual {p0, v6}, Lcom/android/systemui/plugin/LeftBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v6, 0x28

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/plugin/LeftBar;->customizeIcons()V

    return-void

    :cond_4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030002

    invoke-virtual {v6, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/plugin/LeftBar;->mCustomButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/plugin/LeftBar;->CUSTOM_BUTTON_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method private customizeIcons()V
    .locals 6

    const v5, 0x7f0a000d

    const v4, 0x7f0a000c

    const v3, 0x7f0a0008

    const v2, 0x7f0a0007

    const/4 v0, 0x0

    const-string v1, "/system/custom/systemui/back.png"

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string v1, "/system/custom/systemui/home.png"

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const-string v1, "/system/custom/systemui/voice.png"

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const-string v1, "/system/custom/systemui/custom.png"

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/plugin/LeftBar;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private static isApkInstalledAndEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static simulateKeystroke(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/plugin/LeftBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/plugin/LeftBar$1;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    const-string v0, "SP.LeftBar"

    const-string v1, "drawableStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "SP.LeftBar"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/plugin/LeftBar;->mFullscreenCtrl:Lcom/android/systemui/plugin/FullscreenCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/LeftBar;->mFullscreenCtrl:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "SP.LeftBar"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/plugin/LeftBar;->mFullscreenCtrl:Lcom/android/systemui/plugin/FullscreenCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/LeftBar;->mFullscreenCtrl:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method
