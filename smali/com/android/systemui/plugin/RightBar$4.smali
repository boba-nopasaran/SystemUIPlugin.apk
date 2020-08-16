.class Lcom/android/systemui/plugin/RightBar$4;
.super Ljava/lang/Object;
.source "RightBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/RightBar;->updateGpsState()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/RightBar;

.field final synthetic val$setMute:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/RightBar;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/RightBar$4;->this$0:Lcom/android/systemui/plugin/RightBar;

    iput-boolean p2, p0, Lcom/android/systemui/plugin/RightBar$4;->val$setMute:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar$4;->this$0:Lcom/android/systemui/plugin/RightBar;

    iget-boolean v1, p0, Lcom/android/systemui/plugin/RightBar$4;->val$setMute:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugin/RightBar;->musicMuteStatChanged(Z)V

    return-void
.end method
