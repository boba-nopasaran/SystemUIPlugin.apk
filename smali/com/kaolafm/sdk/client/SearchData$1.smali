.class final Lcom/kaolafm/sdk/client/SearchData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaolafm/sdk/client/SearchData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kaolafm/sdk/client/SearchData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kaolafm/sdk/client/SearchData;
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/SearchData;

    invoke-direct {v0, p1}, Lcom/kaolafm/sdk/client/SearchData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/kaolafm/sdk/client/SearchData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kaolafm/sdk/client/SearchData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kaolafm/sdk/client/SearchData;
    .locals 1

    new-array v0, p1, [Lcom/kaolafm/sdk/client/SearchData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/kaolafm/sdk/client/SearchData$1;->newArray(I)[Lcom/kaolafm/sdk/client/SearchData;

    move-result-object v0

    return-object v0
.end method
