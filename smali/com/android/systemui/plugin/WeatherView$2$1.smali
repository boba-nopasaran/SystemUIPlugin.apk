.class Lcom/android/systemui/plugin/WeatherView$2$1;
.super Ljava/lang/Thread;
.source "WeatherView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/WeatherView$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/plugin/WeatherView$2;

.field final synthetic val$iconurl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/WeatherView$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/WeatherView$2$1;->this$1:Lcom/android/systemui/plugin/WeatherView$2;

    iput-object p2, p0, Lcom/android/systemui/plugin/WeatherView$2$1;->val$iconurl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/plugin/WeatherView$2$1;->val$iconurl:Ljava/lang/String;

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/android/systemui/plugin/WeatherView$2$1;->val$iconurl:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v4, v5

    :goto_0
    :try_start_2
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/plugin/WeatherView$2$1;->this$1:Lcom/android/systemui/plugin/WeatherView$2;

    iget-object v6, v6, Lcom/android/systemui/plugin/WeatherView$2;->this$0:Lcom/android/systemui/plugin/WeatherView;

    invoke-static {v6}, Lcom/android/systemui/plugin/WeatherView;->access$500(Lcom/android/systemui/plugin/WeatherView;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/plugin/WeatherView$2$1$1;

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/plugin/WeatherView$2$1$1;-><init>(Lcom/android/systemui/plugin/WeatherView$2$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :goto_1
    return-void

    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/systemui/plugin/WeatherView$2$1;->val$iconurl:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v4, v5

    goto :goto_2
.end method
