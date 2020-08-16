.class Lcom/android/systemui/plugin/WeatherView$1;
.super Ljava/lang/Object;
.source "WeatherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/WeatherView;->initView()V
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

    iput-object p1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const v10, 0x7f07000d

    const v9, 0x7f07000b

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v1, "SP.WeatherView"

    const-string v6, "request refresh weather"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    iget-object v6, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-virtual {v6}, Lcom/android/systemui/plugin/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/systemui/plugin/WeatherView;->access$000(Lcom/android/systemui/plugin/WeatherView;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$100(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/systemui/plugin/Util;->playTTS(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    iget-object v6, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v6}, Lcom/android/systemui/plugin/WeatherView;->access$300(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/systemui/plugin/WeatherView;->access$202(Lcom/android/systemui/plugin/WeatherView;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.weather.refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-virtual {v1}, Lcom/android/systemui/plugin/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1, v8}, Lcom/android/systemui/plugin/WeatherView;->access$402(Lcom/android/systemui/plugin/WeatherView;Z)Z

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$500(Lcom/android/systemui/plugin/WeatherView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$500(Lcom/android/systemui/plugin/WeatherView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v6, 0x3a98

    invoke-virtual {v1, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "SP.WeatherView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "click cost time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v4, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$600(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/android/systemui/plugin/Util;->playTTS(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    iget-object v6, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v6}, Lcom/android/systemui/plugin/WeatherView;->access$700(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/systemui/plugin/WeatherView;->access$202(Lcom/android/systemui/plugin/WeatherView;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$1;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/plugin/WeatherView;->access$200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
