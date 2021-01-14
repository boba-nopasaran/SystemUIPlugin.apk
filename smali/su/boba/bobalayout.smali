.class public Lsu/boba/bobalayout;
.super Landroid/view/ViewGroup;
.source "bobalayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsu/boba/bobalayout$LayoutParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cornerTopRight:I

.field private line_height:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "http://schemas.android.com/apk/su/boba/bobalayout"

    const-string v0, "corner_TopRight"

    const/4 v1, 0x0

    .line 35
    invoke-interface {p2, p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lsu/boba/bobalayout;->cornerTopRight:I

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 101
    instance-of p1, p1, Lsu/boba/bobalayout$LayoutParams;

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 90
    new-instance v0, Lsu/boba/bobalayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lsu/boba/bobalayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 96
    new-instance p1, Lsu/boba/bobalayout$LayoutParams;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v0}, Lsu/boba/bobalayout$LayoutParams;-><init>(II)V

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 106
    invoke-virtual {p0}, Lsu/boba/bobalayout;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 109
    invoke-virtual {p0}, Lsu/boba/bobalayout;->getPaddingLeft()I

    move-result p2

    .line 110
    invoke-virtual {p0}, Lsu/boba/bobalayout;->getPaddingTop()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 113
    invoke-virtual {p0, v0}, Lsu/boba/bobalayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 114
    iget v2, p0, Lsu/boba/bobalayout;->cornerTopRight:I

    sub-int v3, p4, v2

    mul-int v2, v2, p3

    div-int/2addr v2, p5

    add-int/2addr v3, v2

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lsu/boba/bobalayout$LayoutParams;

    add-int v6, p2, v2

    if-le v6, v3, :cond_0

    .line 120
    invoke-virtual {p0}, Lsu/boba/bobalayout;->getPaddingLeft()I

    move-result p2

    .line 121
    iget v3, p0, Lsu/boba/bobalayout;->line_height:I

    add-int/2addr p3, v3

    :cond_0
    add-int v3, p2, v2

    add-int/2addr v4, p3

    .line 123
    invoke-virtual {v1, p2, p3, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 124
    iget v1, v5, Lsu/boba/bobalayout$LayoutParams;->horizontal_spacing:I

    add-int/2addr v2, v1

    add-int/2addr p2, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lsu/boba/bobalayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lsu/boba/bobalayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lsu/boba/bobalayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lsu/boba/bobalayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 44
    invoke-virtual {p0}, Lsu/boba/bobalayout;->getChildCount()I

    move-result v1

    .line 47
    invoke-virtual {p0}, Lsu/boba/bobalayout;->getPaddingLeft()I

    move-result v2

    .line 48
    invoke-virtual {p0}, Lsu/boba/bobalayout;->getPaddingTop()I

    move-result v3

    .line 51
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 52
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-ge v6, v1, :cond_3

    .line 59
    invoke-virtual {p0, v6}, Lsu/boba/bobalayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 60
    iget v9, p0, Lsu/boba/bobalayout;->cornerTopRight:I

    sub-int v10, p1, v9

    mul-int v9, v9, v3

    div-int/2addr v9, v0

    add-int/2addr v10, v9

    .line 61
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-eq v9, v11, :cond_2

    .line 62
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lsu/boba/bobalayout$LayoutParams;

    .line 63
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v8, v11, v4}, Landroid/view/View;->measure(II)V

    .line 64
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 65
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v12, v9, Lsu/boba/bobalayout$LayoutParams;->vertical_spacing:I

    add-int/2addr v8, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, v2, v11

    if-le v8, v10, :cond_1

    .line 68
    invoke-virtual {p0}, Lsu/boba/bobalayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v3, v7

    .line 72
    :cond_1
    iget v8, v9, Lsu/boba/bobalayout$LayoutParams;->horizontal_spacing:I

    add-int/2addr v11, v8

    add-int/2addr v2, v11

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 75
    :cond_3
    iput v7, p0, Lsu/boba/bobalayout;->line_height:I

    .line 77
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_4

    add-int v0, v3, v7

    goto :goto_2

    .line 80
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-ne p2, v5, :cond_5

    add-int/2addr v3, v7

    if-ge v3, v0, :cond_5

    move v0, v3

    .line 85
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v0}, Lsu/boba/bobalayout;->setMeasuredDimension(II)V

    return-void
.end method
