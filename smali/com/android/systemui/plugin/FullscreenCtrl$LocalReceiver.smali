.class Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FullscreenCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/FullscreenCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/FullscreenCtrl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/plugin/FullscreenCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/plugin/FullscreenCtrl;Lcom/android/systemui/plugin/FullscreenCtrl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;-><init>(Lcom/android/systemui/plugin/FullscreenCtrl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.car.action.FOCUS_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "newFocus"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "SP.FullscreenCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newFocus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, v2, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    aget-object v4, v2, v7

    invoke-static {v3, v4}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$202(Lcom/android/systemui/plugin/FullscreenCtrl;Ljava/lang/String;)Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/plugin/FullscreenCtrl;->AUTO_FULLSCREEN_APPS:Ljava/lang/String;

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SP.FullscreenCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto set fullscreen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v3}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$300(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "policy_control"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "immersive.full="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    iget-object v4, p0, Lcom/android/systemui/plugin/FullscreenCtrl$LocalReceiver;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v4}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$200(Lcom/android/systemui/plugin/FullscreenCtrl;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$700(Lcom/android/systemui/plugin/FullscreenCtrl;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
