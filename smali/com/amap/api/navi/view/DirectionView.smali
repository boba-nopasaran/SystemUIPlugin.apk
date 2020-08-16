.class public Lcom/amap/api/navi/view/DirectionView;
.super Landroid/widget/ImageView;
.source "DirectionView.java"


# instance fields
.field private final height:I

.field private mDirectionBitmap:Landroid/graphics/Bitmap;

.field private mLastAngle:I

.field private final mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/navi/view/DirectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/navi/view/DirectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020059

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/DirectionView;->mDirectionBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/navi/view/DirectionView;->mDirectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/DirectionView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/navi/view/DirectionView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    iget-object v0, p0, Lcom/amap/api/navi/view/DirectionView;->mDirectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/navi/view/DirectionView;->width:I

    iget-object v0, p0, Lcom/amap/api/navi/view/DirectionView;->mDirectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/navi/view/DirectionView;->height:I

    return-void
.end method


# virtual methods
.method public getDirectionBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/DirectionView;->mDirectionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/amap/api/navi/view/DirectionView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/navi/view/DirectionView;->mLastAngle:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/navi/view/DirectionView;->width:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, p0, Lcom/amap/api/navi/view/DirectionView;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v0, p0, Lcom/amap/api/navi/view/DirectionView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public recycleResource()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/DirectionView;->mDirectionBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/DirectionView;->mDirectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/DirectionView;->mDirectionBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setDirectionBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/navi/view/DirectionView;->mDirectionBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/navi/view/DirectionView;->mDirectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/DirectionView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setRotate(F)V
    .locals 2

    iget v0, p0, Lcom/amap/api/navi/view/DirectionView;->mLastAngle:I

    float-to-int v1, p1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    float-to-int v0, p1

    iput v0, p0, Lcom/amap/api/navi/view/DirectionView;->mLastAngle:I

    invoke-virtual {p0}, Lcom/amap/api/navi/view/DirectionView;->invalidate()V

    goto :goto_0
.end method
