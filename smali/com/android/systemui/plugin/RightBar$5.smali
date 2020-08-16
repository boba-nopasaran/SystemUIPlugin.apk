.class Lcom/android/systemui/plugin/RightBar$5;
.super Ljava/lang/Object;
.source "RightBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/systemui/plugin/RightBar$5;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar$5;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v2}, Lcom/android/systemui/plugin/RightBar;->access$400(Lcom/android/systemui/plugin/RightBar;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "SP.RightBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateGpsState:isEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar$5;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-virtual {v2, v0}, Lcom/android/systemui/plugin/RightBar;->gpsStatChanged(Z)V

    return-void
.end method
