.class Lcom/android/systemui/plugin/FullscreenCtrl$2;
.super Ljava/lang/Object;
.source "FullscreenCtrl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/FullscreenCtrl;->createFloatView()V
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

    iput-object p1, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/high16 v3, 0x40a00000    # 5.0f

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$802(Lcom/android/systemui/plugin/FullscreenCtrl;F)F

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$902(Lcom/android/systemui/plugin/FullscreenCtrl;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1100(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1002(Lcom/android/systemui/plugin/FullscreenCtrl;F)F

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1100(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1202(Lcom/android/systemui/plugin/FullscreenCtrl;F)F

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1302(Lcom/android/systemui/plugin/FullscreenCtrl;F)F

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1402(Lcom/android/systemui/plugin/FullscreenCtrl;F)F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1500(Lcom/android/systemui/plugin/FullscreenCtrl;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1500(Lcom/android/systemui/plugin/FullscreenCtrl;)V

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1600(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "posx"

    iget-object v2, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v2}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1100(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1600(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "posy"

    iget-object v2, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v2}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1100(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1600(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$800(Lcom/android/systemui/plugin/FullscreenCtrl;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1300(Lcom/android/systemui/plugin/FullscreenCtrl;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$900(Lcom/android/systemui/plugin/FullscreenCtrl;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1400(Lcom/android/systemui/plugin/FullscreenCtrl;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    const-string v0, "SP.FullscreenCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit fullscreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v2}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$200(Lcom/android/systemui/plugin/FullscreenCtrl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$300(Lcom/android/systemui/plugin/FullscreenCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "immersive.off="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v3}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$200(Lcom/android/systemui/plugin/FullscreenCtrl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1702(Lcom/android/systemui/plugin/FullscreenCtrl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/plugin/FullscreenCtrl$2;->this$0:Lcom/android/systemui/plugin/FullscreenCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/FullscreenCtrl;->access$1800(Lcom/android/systemui/plugin/FullscreenCtrl;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
