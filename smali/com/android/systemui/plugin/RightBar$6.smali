.class Lcom/android/systemui/plugin/RightBar$6;
.super Landroid/content/BroadcastReceiver;
.source "RightBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/RightBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/RightBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/RightBar;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    const-wide/16 v8, 0xbb8

    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;
invoke-static {v4}, Lcom/android/systemui/plugin/RightBar;->access$temp(Lcom/android/systemui/plugin/RightBar;)V

    .line 367
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v4, p2}, Lcom/android/systemui/plugin/RightBar;->access$500(Lcom/android/systemui/plugin/RightBar;Landroid/content/Intent;)V

    .line 398
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    const-string v4, "com.car.bthpone.connected.notify"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 372
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v4, p2}, Lcom/android/systemui/plugin/RightBar;->access$600(Lcom/android/systemui/plugin/RightBar;Landroid/content/Intent;)V

    goto :goto_0

    .line 373
    :cond_3
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 374
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v4}, Lcom/android/systemui/plugin/RightBar;->access$100(Lcom/android/systemui/plugin/RightBar;)V

    .line 375
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    const-wide/16 v6, 0x1388

    invoke-static {v4, v6, v7}, Lcom/android/systemui/plugin/RightBar;->access$700(Lcom/android/systemui/plugin/RightBar;J)V

    goto :goto_0

    .line 376
    :cond_4
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 377
    const-string v4, "SP.RightBar"

    const-string v5, "ACTION_SCREEN_OFF, waiting ACTION_SCREEN_ON to call updateGpsState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v4}, Lcom/android/systemui/plugin/RightBar;->access$300(Lcom/android/systemui/plugin/RightBar;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v5}, Lcom/android/systemui/plugin/RightBar;->access$800(Lcom/android/systemui/plugin/RightBar;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 379
    :cond_5
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 380
    const-string v4, "SP.RightBar"

    const-string v5, "ACTION_SCREEN_ON, delay 3s to call updateGpsState/updateMuteState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    const/16 v5, 0xbb8

    invoke-static {v4, v5}, Lcom/android/systemui/plugin/RightBar;->access$900(Lcom/android/systemui/plugin/RightBar;I)V

    .line 382
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v4}, Lcom/android/systemui/plugin/RightBar;->access$100(Lcom/android/systemui/plugin/RightBar;)V

    .line 383
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v4, v8, v9}, Lcom/android/systemui/plugin/RightBar;->access$700(Lcom/android/systemui/plugin/RightBar;J)V

    goto :goto_0

    .line 384
    :cond_6
    const-string v4, "com.car.satellites"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 385
    const-string v4, "count"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 386
    .local v2, "count":I
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v4, v2}, Lcom/android/systemui/plugin/RightBar;->access$1000(Lcom/android/systemui/plugin/RightBar;I)V

    goto :goto_0

    .line 387
    .end local v2    # "count":I
    :cond_7
    const-string v4, "com.car.btphone.action"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 388
    const-string v4, "status"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 389
    .local v1, "callStatus":I
    if-ne v1, v6, :cond_1

    .line 390
    const-string v4, "SP.RightBar"

    const-string v5, "CALL_TERMINATED, delay 3s to call updateMuteState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v4, v8, v9}, Lcom/android/systemui/plugin/RightBar;->access$700(Lcom/android/systemui/plugin/RightBar;J)V

    goto/16 :goto_0

    .line 393
    .end local v1    # "callStatus":I
    :cond_8
    const-string v4, "tencent.intent.action.ASR.EVENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 394
    const-string v4, "status_key"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 395
    .local v3, "status":I
    const-string v4, "SP.RightBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TENCENT_ACTION_ASR_EVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/plugin/RightBar$6;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v4, v8, v9}, Lcom/android/systemui/plugin/RightBar;->access$700(Lcom/android/systemui/plugin/RightBar;J)V

    goto/16 :goto_0
.end method
