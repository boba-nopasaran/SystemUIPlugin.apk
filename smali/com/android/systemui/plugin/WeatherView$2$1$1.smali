.class Lcom/android/systemui/plugin/WeatherView$2$1$1;
.super Ljava/lang/Object;
.source "WeatherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/WeatherView$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/plugin/WeatherView$2$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/WeatherView$2$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/WeatherView$2$1$1;->this$2:Lcom/android/systemui/plugin/WeatherView$2$1;

    iput-object p2, p0, Lcom/android/systemui/plugin/WeatherView$2$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView$2$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView$2$1$1;->this$2:Lcom/android/systemui/plugin/WeatherView$2$1;

    iget-object v0, v0, Lcom/android/systemui/plugin/WeatherView$2$1;->this$1:Lcom/android/systemui/plugin/WeatherView$2;

    iget-object v0, v0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v0}, Lcom/android/systemui/plugin/WeatherView;->access$1400(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/plugin/WeatherView$2$1$1;->this$2:Lcom/android/systemui/plugin/WeatherView$2$1;

    iget-object v0, v0, Lcom/android/systemui/plugin/WeatherView$2$1;->this$1:Lcom/android/systemui/plugin/WeatherView$2;

    iget-object v0, v0, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v0}, Lcom/android/systemui/plugin/WeatherView;->access$1400(Lcom/android/systemui/plugin/WeatherView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/plugin/WeatherView$2$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
