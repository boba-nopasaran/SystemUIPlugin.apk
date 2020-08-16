.class Lcom/android/systemui/plugin/TimeView$2;
.super Ljava/lang/Object;
.source "TimeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/TimeView;->init(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/systemui/plugin/TimeView$2;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/plugin/TimeView$2;->this$0:Lcom/android/systemui/plugin/TimeView;

    invoke-static {v1}, Lcom/android/systemui/plugin/TimeView;->access$200(Lcom/android/systemui/plugin/TimeView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
