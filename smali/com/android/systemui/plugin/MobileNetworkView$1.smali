.class Lcom/android/systemui/plugin/MobileNetworkView$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/MobileNetworkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/MobileNetworkView;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/MobileNetworkView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/MobileNetworkView$1;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/plugin/MobileNetworkView$1;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v2}, Lcom/android/systemui/plugin/MobileNetworkView;->access$300(Lcom/android/systemui/plugin/MobileNetworkView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SP.MobileNetworkView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHotspotEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/plugin/MobileNetworkView$1;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v4}, Lcom/android/systemui/plugin/MobileNetworkView;->access$400(Lcom/android/systemui/plugin/MobileNetworkView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/plugin/MobileNetworkView$1;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v2}, Lcom/android/systemui/plugin/MobileNetworkView;->access$500(Lcom/android/systemui/plugin/MobileNetworkView;)V

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "SP.MobileNetworkView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAirplaneModeOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/plugin/MobileNetworkView$1;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v4}, Lcom/android/systemui/plugin/MobileNetworkView;->access$600(Lcom/android/systemui/plugin/MobileNetworkView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/plugin/MobileNetworkView$1;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v2}, Lcom/android/systemui/plugin/MobileNetworkView;->access$700(Lcom/android/systemui/plugin/MobileNetworkView;)V

    goto :goto_0

    :cond_3
    const-string v2, "com.car.syswakeup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SP.MobileNetworkView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.car.wakeup, reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const-string v2, "user,acc_on,gsensor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0
.end method
