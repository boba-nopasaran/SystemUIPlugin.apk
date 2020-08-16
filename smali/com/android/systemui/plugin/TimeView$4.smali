.class Lcom/android/systemui/plugin/TimeView$4;
.super Landroid/content/BroadcastReceiver;
.source "TimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/TimeView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/TimeView;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/TimeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/TimeView$4;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/plugin/TimeView$4;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-static {v1}, Lcom/android/systemui/plugin/TimeView;->access$000(Lcom/android/systemui/plugin/TimeView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/systemui/plugin/TimeView$4;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-static {v1}, Lcom/android/systemui/plugin/TimeView;->access$000(Lcom/android/systemui/plugin/TimeView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/plugin/TimeView$4;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-static {v1}, Lcom/android/systemui/plugin/TimeView;->access$000(Lcom/android/systemui/plugin/TimeView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0xf618

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
