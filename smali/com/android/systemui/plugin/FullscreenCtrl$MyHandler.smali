.class Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;
.super Landroid/os/Handler;
.source "FullscreenCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/FullscreenCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/FullscreenCtrl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/plugin/FullscreenCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/plugin/FullscreenCtrl;Lcom/android/systemui/plugin/FullscreenCtrl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;-><init>(Lcom/android/systemui/plugin/FullscreenCtrl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl$MyHandler;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$200(Lcom/android/systemui/plugin/FullscreenCtrl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$700(Lcom/android/systemui/plugin/FullscreenCtrl;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
