.class public Lcom/amap/api/navi/model/AimLessModeStat;
.super Ljava/lang/Object;
.source "AimLessModeStat.java"


# instance fields
.field private aimlessModeDistance:I

.field private aimlessModeTime:I


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/guide/model/NoNaviInfor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/autonavi/ae/guide/model/NoNaviInfor;->noNaviDriveDist:I

    iput v0, p0, Lcom/amap/api/navi/model/AimLessModeStat;->aimlessModeDistance:I

    iget v0, p1, Lcom/autonavi/ae/guide/model/NoNaviInfor;->noNaviDriveTime:I

    iput v0, p0, Lcom/amap/api/navi/model/AimLessModeStat;->aimlessModeTime:I

    return-void
.end method


# virtual methods
.method public getAimlessModeDistance()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AimLessModeStat;->aimlessModeDistance:I

    return v0
.end method

.method public getAimlessModeTime()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AimLessModeStat;->aimlessModeTime:I

    return v0
.end method

.method public setAimlessModeDistance(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AimLessModeStat;->aimlessModeDistance:I

    return-void
.end method

.method public setAimlessModeTime(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AimLessModeStat;->aimlessModeTime:I

    return-void
.end method
