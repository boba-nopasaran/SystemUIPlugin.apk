.class public Lcom/android/systemui/plugin/TimeView;
.super Landroid/widget/TextView;
.source "TimeView.java"


# static fields
.field private static final FIRST_SELF_REFRESH_TIME_INTERVA:I = 0xf618

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final REFRESH_TIME_INTERVA:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "LC.TimeView"


# instance fields
.field private final MSG_REFRESH_TIME:I

.field private final MSG_REFRESH_TIME_SELF:I

.field private intOpt:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mWeekarray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/plugin/TimeView;->MSG_REFRESH_TIME:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/TimeView;->MSG_REFRESH_TIME_SELF:I

    new-instance v0, Lcom/android/systemui/plugin/TimeView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/TimeView$1;-><init>(Lcom/android/systemui/plugin/TimeView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/TimeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/plugin/TimeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/plugin/TimeView;->MSG_REFRESH_TIME:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/TimeView;->MSG_REFRESH_TIME_SELF:I

    new-instance v0, Lcom/android/systemui/plugin/TimeView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/TimeView$1;-><init>(Lcom/android/systemui/plugin/TimeView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/TimeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/plugin/TimeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/plugin/TimeView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/TimeView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/plugin/TimeView;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/plugin/TimeView;->updateClock()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/plugin/TimeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugin/TimeView;->speechTime()V

    return-void
.end method

.method private speechTime()V
    .locals 1

    new-instance v0, Lcom/android/systemui/plugin/TimeView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/TimeView$3;-><init>(Lcom/android/systemui/plugin/TimeView;)V

    invoke-virtual {v0}, Lcom/android/systemui/plugin/TimeView$3;->start()V

    return-void
.end method

.method private updateClock()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/plugin/TimeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v4, "kk:mm"

    :goto_0
    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/plugin/TimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/plugin/TimeView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v3

    :cond_0
    const-string v4, "h:mm"

    goto :goto_0

    :cond_1
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    iget v5, p0, Lcom/android/systemui/plugin/TimeView;->intOpt:I

    const/16 v6, 0x140

    if-ne v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font><big><big><big>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</big></big></big><br/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/plugin/TimeView;->mWeekarray:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/plugin/TimeView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font><big><big><big><big>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</big></big></big></big><br/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/plugin/TimeView;->mWeekarray:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/android/systemui/plugin/TimeView;->updateClock()Ljava/lang/String;

    return-void
.end method

.method init(Landroid/content/Context;)V
    .locals 6

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/plugin/TimeView;->intOpt:I

    invoke-virtual {p0}, Lcom/android/systemui/plugin/TimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/plugin/TimeView;->mWeekarray:[Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/plugin/TimeView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/plugin/TimeView$2;-><init>(Lcom/android/systemui/plugin/TimeView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/plugin/TimeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/plugin/TimeView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/plugin/TimeView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/plugin/TimeView$4;-><init>(Lcom/android/systemui/plugin/TimeView;)V

    iput-object v1, p0, Lcom/android/systemui/plugin/TimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/plugin/TimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/plugin/TimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/plugin/TimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/plugin/TimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/plugin/TimeView;->updateClock()Ljava/lang/String;

    return-void
.end method
