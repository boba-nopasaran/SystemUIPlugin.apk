.class Lcom/android/systemui/plugin/TimeView$1;
.super Landroid/os/Handler;
.source "TimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/TimeView;
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

    iput-object p1, p0, Lcom/android/systemui/plugin/TimeView$1;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/plugin/TimeView$1;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-static {v0}, Lcom/android/systemui/plugin/TimeView;->access$000(Lcom/android/systemui/plugin/TimeView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/plugin/TimeView$1;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-static {v0}, Lcom/android/systemui/plugin/TimeView;->access$000(Lcom/android/systemui/plugin/TimeView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/plugin/TimeView$1;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-static {v0}, Lcom/android/systemui/plugin/TimeView;->access$100(Lcom/android/systemui/plugin/TimeView;)Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
