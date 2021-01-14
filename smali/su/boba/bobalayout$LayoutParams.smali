.class public Lsu/boba/bobalayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "bobalayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsu/boba/bobalayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public final horizontal_spacing:I

.field public final vertical_spacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    iput p1, p0, Lsu/boba/bobalayout$LayoutParams;->horizontal_spacing:I

    .line 25
    iput p2, p0, Lsu/boba/bobalayout$LayoutParams;->vertical_spacing:I

    return-void
.end method
