.class Lcom/android/systemui/plugin/RightBar$7;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/plugin/RightBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/RightBar$7;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "SP.RightBar"

    const-string v1, "ContentObserver.onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar$7;->this$0:Lcom/android/systemui/plugin/RightBar;

    invoke-static {v0}, Lcom/android/systemui/plugin/RightBar;->access$000(Lcom/android/systemui/plugin/RightBar;)V

    iget-object v0, p0, Lcom/android/systemui/plugin/RightBar$7;->this$0:Lcom/android/systemui/plugin/RightBar;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/RightBar;->access$900(Lcom/android/systemui/plugin/RightBar;I)V

    return-void
.end method
