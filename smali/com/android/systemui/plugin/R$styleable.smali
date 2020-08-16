.class public final Lcom/android/systemui/plugin/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BatteryMeterView:[I

.field public static final BatteryMeterView_frameColor:I = 0x0

.field public static final Clock:[I

.field public static final Clock_amPmStyle:I = 0x0

.field public static final DateView:[I

.field public static final DateView_datePattern:I = 0x0

.field public static final KeyButtonView:[I

.field public static final KeyButtonView_keyCode:I = 0x0

.field public static final KeyButtonView_keyRepeat:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x7f010002

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/plugin/R$styleable;->BatteryMeterView:[I

    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/plugin/R$styleable;->Clock:[I

    new-array v0, v3, [I

    const v1, 0x7f010005

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/plugin/R$styleable;->DateView:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/plugin/R$styleable;->KeyButtonView:[I

    return-void

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
