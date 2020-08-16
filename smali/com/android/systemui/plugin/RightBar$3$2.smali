.class Lcom/android/systemui/plugin/RightBar$3$2;
.super Ljava/lang/Object;
.source "RightBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/RightBar$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/plugin/RightBar$3;

.field final synthetic val$isMute2:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/RightBar$3;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/RightBar$3$2;->this$1:Lcom/android/systemui/plugin/RightBar$3;

    iput-boolean p2, p0, Lcom/android/systemui/plugin/RightBar$3$2;->val$isMute2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar$3$2;->this$1:Lcom/android/systemui/plugin/RightBar$3;

    iget-object v0, v0, Lcom/android/systemui/plugin/RightBar$3;->this$0:Lcom/android/systemui/plugin/RightBar;

    iget-boolean v1, p0, Lcom/android/systemui/plugin/RightBar$3$2;->val$isMute2:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugin/RightBar;->musicMuteStatChanged(Z)V

    return-void
.end method
