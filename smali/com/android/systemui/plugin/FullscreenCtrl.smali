.class public Lcom/android/systemui/plugin/FullscreenCtrl;
.super Ljava/lang/Object;
.source "FullscreenCtrl.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;,
        Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;,
        Lcom/android/systemui/plugin/FullscreenCtrl$ActivityController;
    }
.end annotation


# static fields
.field private static final ACTION_FOCUS_CHANGED:Ljava/lang/String; = "com.car.action.FOCUS_CHANGED"

.field public static final AUTO_FULLSCREEN_APPS:Ljava/lang/String;

.field private static final EXT_NEW_FOCUS:Ljava/lang/String; = "newFocus"

.field public static final FULLSCREEN_PKGS:Ljava/lang/String;

.field private static final MSG_UPDATEBTN:I = 0x0

.field public static final POSX:Ljava/lang/String; = "posx"

.field public static final POSY:Ljava/lang/String; = "posy"

.field public static final SHARED_FILENAME:Ljava/lang/String; = "systemui_plugin"

.field private static final TAG:Ljava/lang/String; = "SP.FullscreenCtrl"


# instance fields
.field private fvVisible:Z

.field private mAm:Landroid/app/IActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentIsFullScreen:Z

.field private mCurrentPkg:Ljava/lang/String;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFloatView:Landroid/view/View;

.field private mFullscreenBtn:Landroid/view/View;

.field private mHandler:Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;

.field private mRawX:F

.field private mRawY:F

.field private mReceiver:Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStartRawX:F

.field private mStartRawY:F

.field private mStartX:F

.field private mStartY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.fullscreen.packages"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/plugin/FullscreenCtrl;->FULLSCREEN_PKGS:Ljava/lang/String;

    const-string v0, "persist.auto.fullscreen.apps"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/plugin/FullscreenCtrl;->AUTO_FULLSCREEN_APPS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;-><init>(Lcom/android/systemui/plugin/FullscreenCtrl;Lcom/android/systemui/plugin/FullscreenCtrl$1;)V

    iput-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mHandler:Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;

    new-instance v1, Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;-><init>(Lcom/android/systemui/plugin/FullscreenCtrl;Lcom/android/systemui/plugin/FullscreenCtrl$1;)V

    iput-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mReceiver:Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/systemui/plugin/FullscreenCtrl;->createFloatView()V

    iput-object p3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFullscreenBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFullscreenBtn:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFullscreenBtn:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/plugin/FullscreenCtrl$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/plugin/FullscreenCtrl$1;-><init>(Lcom/android/systemui/plugin/FullscreenCtrl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/plugin/FullscreenCtrl;->getCurrentPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentPkg:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/plugin/FullscreenCtrl;->currentIsFullScreen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentIsFullScreen:Z

    const-string v1, "SP.FullscreenCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init(), FULLSCREEN_PKGS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/plugin/FullscreenCtrl;->FULLSCREEN_PKGS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", AUTO_FULLSCREEN_APPS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/plugin/FullscreenCtrl;->AUTO_FULLSCREEN_APPS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getCurrentPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrentIsFullScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentIsFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mAm:Landroid/app/IActivityManager;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mAm:Landroid/app/IActivityManager;

    new-instance v2, Lcom/android/systemui/plugin/FullscreenCtrl$ActivityController;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/plugin/FullscreenCtrl$ActivityController;-><init>(Lcom/android/systemui/plugin/FullscreenCtrl;Lcom/android/systemui/plugin/FullscreenCtrl$1;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/plugin/FullscreenCtrl;->updateFullscreenBtn()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SP.FullscreenCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Failed talking with activity manager! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1002(Lcom/android/systemui/plugin/FullscreenCtrl;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mStartX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/plugin/FullscreenCtrl;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mStartY:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/plugin/FullscreenCtrl;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mStartRawX:F

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/plugin/FullscreenCtrl;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mStartRawX:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/plugin/FullscreenCtrl;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mStartRawY:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/plugin/FullscreenCtrl;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mStartRawY:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/plugin/FullscreenCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugin/FullscreenCtrl;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/plugin/FullscreenCtrl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentIsFullScreen:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/plugin/FullscreenCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugin/FullscreenCtrl;->updateFullscreenBtn()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/plugin/FullscreenCtrl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/plugin/FullscreenCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/plugin/FullscreenCtrl;)Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mHandler:Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/plugin/FullscreenCtrl;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/plugin/FullscreenCtrl;->getCurrentPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/plugin/FullscreenCtrl;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugin/FullscreenCtrl;->updateFullscreenBtn(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/plugin/FullscreenCtrl;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mRawX:F

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/plugin/FullscreenCtrl;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mRawX:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/plugin/FullscreenCtrl;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mRawY:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/plugin/FullscreenCtrl;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mRawY:F

    return p1
.end method

.method private createFloatView()V
    .locals 8

    const/4 v7, -0x2

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFloatView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFloatView:Landroid/view/View;

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/plugin/FullscreenCtrl$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/plugin/FullscreenCtrl$2;-><init>(Lcom/android/systemui/plugin/FullscreenCtrl;)V

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFloatView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x28

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "posx"

    const/16 v6, 0x8c

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "posy"

    const/16 v6, 0x14

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private currentIsFullScreen()Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "policy_control"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "immersive.full="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentPackage()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setFloatViewVisible(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->fvVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->fvVisible:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->fvVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->fvVisible:Z

    goto :goto_0
.end method

.method private updateFullscreenBtn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentPkg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->updateFullscreenBtn(Ljava/lang/String;I)V

    return-void
.end method

.method private updateFullscreenBtn(Ljava/lang/String;I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "SP.FullscreenCtrl"

    const-string v1, "updateFullscreenBtn, but currentPkg = null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/plugin/FullscreenCtrl;->FULLSCREEN_PKGS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentIsFullScreen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->setFloatViewVisible(Z)V

    :goto_1
    and-int/lit8 v0, p2, 0x4

    if-lez v0, :cond_2

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFullscreenBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->setFloatViewVisible(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFullscreenBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFullscreenBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->setFloatViewVisible(Z)V

    goto :goto_0
.end method

.method private updateViewPosition()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mStartX:F

    iget v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mRawX:F

    iget v4, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mStartRawX:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mStartY:F

    iget v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mRawY:F

    iget v4, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mStartRawY:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mFloatView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.action.FOCUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mReceiver:Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mReceiver:Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 4

    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentIsFullScreen:Z

    invoke-direct {p0}, Lcom/android/systemui/plugin/FullscreenCtrl;->getCurrentPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SP.FullscreenCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSystemUiVisibilityChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFullscreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl;->mCurrentIsFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/plugin/FullscreenCtrl;->updateFullscreenBtn(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
