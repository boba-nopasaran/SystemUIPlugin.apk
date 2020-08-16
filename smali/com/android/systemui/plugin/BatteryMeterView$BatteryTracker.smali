.class Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryTracker"
.end annotation


# static fields
.field public static final UNKNOWN_LEVEL:I = -0x1


# instance fields
.field health:I

.field level:I

.field percentStr:Ljava/lang/String;

.field plugType:I

.field plugged:Z

.field status:I

.field technology:Ljava/lang/String;

.field temperature:I

.field testmode:Z

.field final synthetic this$0:Lcom/android/systemui/plugin/BatteryMeterView;

.field voltage:I


# direct methods
.method private constructor <init>(Lcom/android/systemui/plugin/BatteryMeterView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/plugin/BatteryMeterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->level:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->testmode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/plugin/BatteryMeterView;Lcom/android/systemui/plugin/BatteryMeterView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/plugin/BatteryMeterView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->testmode:Z

    if-eqz v3, :cond_1

    const-string v3, "testmode"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v3, 0x42c80000    # 100.0f

    const-string v4, "level"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->level:I

    const-string v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->plugType:I

    const-string v3, "health"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->health:I

    const-string v3, "status"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->status:I

    iget v3, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->status:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->plugged:Z

    const-string v1, "technology"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->technology:Ljava/lang/String;

    const-string v1, "voltage"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->voltage:I

    const-string v1, "temperature"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->temperature:I

    iget-object v1, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/plugin/BatteryMeterView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugin/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/plugin/BatteryMeterView;

    invoke-virtual {v1}, Lcom/android/systemui/plugin/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->testmode:Z

    iget-object v1, p0, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/plugin/BatteryMeterView;

    new-instance v2, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker$1;-><init>(Lcom/android/systemui/plugin/BatteryMeterView$BatteryTracker;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugin/BatteryMeterView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
