.class public Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetworkView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/MobileNetworkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field public lastLevel:I

.field final synthetic this$0:Lcom/android/systemui/plugin/MobileNetworkView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugin/MobileNetworkView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->lastLevel:I

    return-void
.end method


# virtual methods
.method public getLastLevel()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->lastLevel:I

    return v0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const-string v1, "SP.MobileNetworkView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state change==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v1}, Lcom/android/systemui/plugin/MobileNetworkView;->access$300(Lcom/android/systemui/plugin/MobileNetworkView;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->lastLevel:I

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v2}, Lcom/android/systemui/plugin/MobileNetworkView;->access$000(Lcom/android/systemui/plugin/MobileNetworkView;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "SP.MobileNetworkView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signal level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->lastLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSimReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->lastLevel:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->lastLevel:I

    iget-object v2, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v2}, Lcom/android/systemui/plugin/MobileNetworkView;->access$100(Lcom/android/systemui/plugin/MobileNetworkView;)[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v1}, Lcom/android/systemui/plugin/MobileNetworkView;->access$200(Lcom/android/systemui/plugin/MobileNetworkView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v2}, Lcom/android/systemui/plugin/MobileNetworkView;->access$100(Lcom/android/systemui/plugin/MobileNetworkView;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->lastLevel:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v1}, Lcom/android/systemui/plugin/MobileNetworkView;->access$300(Lcom/android/systemui/plugin/MobileNetworkView;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/plugin/MobileNetworkView$MyPhoneStateListener;->this$0:Lcom/android/systemui/plugin/MobileNetworkView;

    invoke-static {v1}, Lcom/android/systemui/plugin/MobileNetworkView;->access$200(Lcom/android/systemui/plugin/MobileNetworkView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
