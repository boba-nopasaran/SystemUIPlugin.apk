.class Lcom/android/systemui/plugin/WeatherView$3;
.super Landroid/os/Handler;
.source "WeatherView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/WeatherView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/WeatherView;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/WeatherView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const v5, 0x7f07000c

    const/4 v4, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$1500(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/systemui/plugin/Util;->playTTS(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    iget-object v2, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v2}, Lcom/android/systemui/plugin/WeatherView;->access$1600(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/plugin/WeatherView;->access$202(Lcom/android/systemui/plugin/WeatherView;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    iget-object v2, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-virtual {v2}, Lcom/android/systemui/plugin/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/plugin/WeatherView;->access$000(Lcom/android/systemui/plugin/WeatherView;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.weather.refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-virtual {v1}, Lcom/android/systemui/plugin/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$500(Lcom/android/systemui/plugin/WeatherView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$3;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$500(Lcom/android/systemui/plugin/WeatherView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v1, "SP.WeatherView"

    const-string v2, "Send refresh weather"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
