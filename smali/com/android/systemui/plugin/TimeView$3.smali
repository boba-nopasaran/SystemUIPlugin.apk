.class Lcom/android/systemui/plugin/TimeView$3;
.super Ljava/lang/Thread;
.source "TimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/TimeView;->speechTime()V
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

    iput-object p1, p0, Lcom/android/systemui/plugin/TimeView$3;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/plugin/TimeView$3;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-virtual {v7}, Lcom/android/systemui/plugin/TimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v6, "kk:mm"

    :goto_0
    invoke-static {v6, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/plugin/TimeView$3;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-virtual {v7}, Lcom/android/systemui/plugin/TimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/systemui/plugin/TimeView$3;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-virtual {v7}, Lcom/android/systemui/plugin/TimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/plugin/TimeView$3;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-virtual {v7}, Lcom/android/systemui/plugin/TimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-static {v9}, Lcom/android/systemui/plugin/Util;->analyze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Lcom/android/systemui/plugin/Util;->analyze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/plugin/Util;->playTTS(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v6, "h:mm"

    goto :goto_0
.end method
