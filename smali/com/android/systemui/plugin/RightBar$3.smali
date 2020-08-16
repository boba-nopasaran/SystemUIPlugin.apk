.class Lcom/android/systemui/plugin/RightBar$3;
.super Ljava/lang/Object;
.source "RightBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/RightBar;->updateMuteStateInThread()V
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

    iput-object p1, p0, Lcom/android/systemui/plugin/RightBar$3;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar$3;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v2}, Lcom/android/systemui/plugin/RightBar;->access$200(Lcom/android/systemui/plugin/RightBar;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar$3;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v2}, Lcom/android/systemui/plugin/RightBar;->access$300(Lcom/android/systemui/plugin/RightBar;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/plugin/RightBar$3$1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/plugin/RightBar$3$1;-><init>(Lcom/android/systemui/plugin/RightBar$3;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar$3;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v2}, Lcom/android/systemui/plugin/RightBar;->access$200(Lcom/android/systemui/plugin/RightBar;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/plugin/RightBar$3;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v2}, Lcom/android/systemui/plugin/RightBar;->access$300(Lcom/android/systemui/plugin/RightBar;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/plugin/RightBar$3$2;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/plugin/RightBar$3$2;-><init>(Lcom/android/systemui/plugin/RightBar$3;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method
