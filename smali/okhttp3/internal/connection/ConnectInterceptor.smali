.class public final Lokhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/ConnectInterceptor;->client:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v3, p1

    check-cast v3, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v3}, Lokhttp3/internal/http/RealInterceptorChain;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v5

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v6, p0, Lokhttp3/internal/connection/ConnectInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v6, v1}, Lokhttp3/internal/connection/StreamAllocation;->newStream(Lokhttp3/OkHttpClient;Z)Lokhttp3/internal/http/HttpStream;

    move-result-object v2

    invoke-virtual {v5}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v2, v0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpStream;Lokhttp3/Connection;)Lokhttp3/Response;

    move-result-object v6

    return-object v6

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method