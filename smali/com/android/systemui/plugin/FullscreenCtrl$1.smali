.class Lcom/android/systemui/plugin/FullscreenCtrl$1;
.super Ljava/lang/Object;
.source "FullscreenCtrl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/FullscreenCtrl;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/FullscreenCtrl;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/FullscreenCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl$1;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "SP.FullscreenCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set fullscreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/plugin/FullscreenCtrl$1;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v2}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$200(Lcom/android/systemui/plugin/FullscreenCtrl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$1;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$300(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "immersive.full="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl$1;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v3}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$200(Lcom/android/systemui/plugin/FullscreenCtrl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
