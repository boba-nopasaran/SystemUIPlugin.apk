.class Lcom/android/systemui/plugin/WeatherView$2;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const-string v4, "SP.WeatherView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.car.weather.forcast"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v4}, Lcom/android/systemui/plugin/WeatherView;->access$500(Lcom/android/systemui/plugin/WeatherView;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    const-string v4, "condition"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "area"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "temperature"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "iconurl"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SP.WeatherView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "city = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", weather = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", temperature = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iconurl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v4}, Lcom/android/systemui/plugin/WeatherView;->access$400(Lcom/android/systemui/plugin/WeatherView;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v4}, Lcom/android/systemui/plugin/WeatherView;->access$800(Lcom/android/systemui/plugin/WeatherView;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/plugin/Util;->playTTS(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v4, v7}, Lcom/android/systemui/plugin/WeatherView;->access$402(Lcom/android/systemui/plugin/WeatherView;Z)Z

    iget-object v4, p0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v4}, Lcom/android/systemui/plugin/WeatherView;->access$900(Lcom/android/systemui/plugin/WeatherView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v4}, Lcom/android/systemui/plugin/WeatherView;->access$1000(Lcom/android/systemui/plugin/WeatherView;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v4}, Lcom/android/systemui/plugin/WeatherView;->access$1100(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v4}, Lcom/android/systemui/plugin/WeatherView;->access$1200(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v4}, Lcom/android/systemui/plugin/WeatherView;->access$1300(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/systemui/plugin/WeatherView$2$1;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/plugin/WeatherView$2$1;-><init>(Lcom/android/systemui/plugin/WeatherView$2;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/systemui/plugin/WeatherView$2$1;->start()V

    :cond_1
    return-void
.end method
