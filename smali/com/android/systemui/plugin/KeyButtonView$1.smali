.class Lcom/android/systemui/plugin/KeyButtonView$1;
.super Ljava/lang/Object;
.source "KeyButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/KeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/KeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/KeyButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/KeyButtonView$1;->this$0:Lcom/android/systemui/plugin/KeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/plugin/KeyButtonView$1;->this$0:Lcom/android/systemui/plugin/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/KeyButtonView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/KeyButtonView$1;->this$0:Lcom/android/systemui/plugin/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/plugin/KeyButtonView$1;->this$0:Lcom/android/systemui/plugin/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/KeyButtonView;->performLongClick()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/plugin/KeyButtonView$1;->this$0:Lcom/android/systemui/plugin/KeyButtonView;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/plugin/KeyButtonView;->sendEvent(II)V

    iget-object v0, p0, Lcom/android/systemui/plugin/KeyButtonView$1;->this$0:Lcom/android/systemui/plugin/KeyButtonView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugin/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
