.class public final Lcom/loc/aq;
.super Ljava/lang/Object;
.source "UpdateLogDBOperation.java"


# instance fields
.field private a:Lcom/loc/af;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/aq;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/aq;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/aq;->a(Landroid/content/Context;)Lcom/loc/af;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/af;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/loc/af;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/loc/af;

    const-class v2, Lcom/loc/am;

    invoke-static {v2}, Lcom/loc/af;->a(Ljava/lang/Class;)Lcom/loc/ae;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/loc/af;-><init>(Landroid/content/Context;Lcom/loc/ae;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ud"

    const-string v3, "gd"

    invoke-static {v0, v2, v3}, Lcom/loc/w;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/loc/ar;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/af;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/aq;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/aq;->a(Landroid/content/Context;)Lcom/loc/af;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/af;

    :cond_0
    const-string v0, "1=1"

    iget-object v2, p0, Lcom/loc/aq;->a:Lcom/loc/af;

    const-class v3, Lcom/loc/ar;

    invoke-virtual {v2, v0, v3}, Lcom/loc/af;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ar;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ud"

    const-string v3, "gd"

    invoke-static {v0, v2, v3}, Lcom/loc/w;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/loc/ar;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/af;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/aq;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/aq;->a(Landroid/content/Context;)Lcom/loc/af;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/af;

    :cond_1
    const-string v0, "1=1"

    iget-object v1, p0, Lcom/loc/aq;->a:Lcom/loc/af;

    const-class v2, Lcom/loc/ar;

    invoke-virtual {v1, v0, v2}, Lcom/loc/af;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/af;

    invoke-virtual {v0, p1}, Lcom/loc/af;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ud"

    const-string v2, "ug"

    invoke-static {v0, v1, v2}, Lcom/loc/w;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/loc/aq;->a:Lcom/loc/af;

    invoke-virtual {v1, v0, p1}, Lcom/loc/af;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
