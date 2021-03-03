.class public final Lcom/android/systemui/plugin/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SP.Util"

.field public static final enNum:[Ljava/lang/String;

.field public static final enUnit:[Ljava/lang/String;

.field public static final isOversea:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    const-string v0, "ro.market.area"

    const-string v1, "china"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oversea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/plugin/Util;->isOversea:Z

    .line 32
    const/16 v0, 0x5b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "zero"

    aput-object v1, v0, v3

    const-string v1, "one"

    aput-object v1, v0, v4

    const-string v1, "two"

    aput-object v1, v0, v5

    const-string v1, "three"

    aput-object v1, v0, v6

    const-string v1, "four"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "five"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "six"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "seven"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "eight"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "nine"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ten"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "eleven"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "twelve"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "thirteen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fourteen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fifteen"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sixteen"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "seventeen"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "eighteen"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "nineteen"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "twenty"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "thirty"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "forty"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "fifty"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "sixty"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "seventy"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "eighty"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "ninety"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/plugin/Util;->enNum:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hundred"

    aput-object v1, v0, v3

    const-string v1, "thousand"

    aput-object v1, v0, v4

    const-string v1, "million"

    aput-object v1, v0, v5

    const-string v1, "billion"

    aput-object v1, v0, v6

    const-string v1, "trillion"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "quintillion"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/plugin/Util;->enUnit:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyze(J)Ljava/lang/String;
    .locals 2
    .param p0, "num"    # J

    .prologue
    .line 46
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/plugin/Util;->analyze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static analyze(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

#by boba 26.12.2020
#speechTime for ru
const-string v8, "ru"
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :goto_0

#by boba 03.03.2021
#speechTime for ru
const-string v8, "uk"
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :goto_0

    const-string v8, "zh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 100
    .end local p0    # "num":Ljava/lang/String;
    .local v1, "count":I
    :goto_0
    return-object p0

    .line 53
    .end local v1    # "count":I
    .restart local p0    # "num":Ljava/lang/String;
    :cond_0
    const-string v7, "\\d+"

    invoke-virtual {p0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 54
    const-string v7, "%s is not number"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 57
    :cond_1
    const-string v7, "^[0]*([1-9]*)"

    const-string v8, "$1"

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 60
    sget-object v7, Lcom/android/systemui/plugin/Util;->enNum:[Ljava/lang/String;

    aget-object p0, v7, v9

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x9

    if-le v7, v8, :cond_3

    .line 62
    const-string p0, "too big"

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    rem-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v1, v7, 0x3

    .line 67
    .restart local v1    # "count":I
    :goto_1
    sget-object v7, Lcom/android/systemui/plugin/Util;->enUnit:[Ljava/lang/String;

    array-length v7, v7

    if-le v1, v7, :cond_5

    .line 68
    const-string p0, "too big"

    goto :goto_0

    .line 65
    .end local v1    # "count":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    add-int/lit8 v1, v7, 0x1

    goto :goto_1

    .line 71
    .restart local v1    # "count":I
    :cond_5
    new-array v2, v1, [Ljava/lang/String;

    .line 72
    .local v2, "group":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "i":I
    array-length v7, v2

    add-int/lit8 v4, v7, -0x1

    .local v4, "j":I
    move v5, v4

    .end local v4    # "j":I
    .local v5, "j":I
    :goto_2
    if-lez v3, :cond_6

    .line 73
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    add-int/lit8 v7, v3, -0x3

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 72
    add-int/lit8 v3, v3, -0x3

    move v5, v4

    .end local v4    # "j":I
    .restart local v5    # "j":I
    goto :goto_2

    .line 76
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_b

    .line 78
    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 79
    .local v6, "v":I
    const/16 v7, 0x64

    if-lt v6, v7, :cond_7

    .line 80
    sget-object v7, Lcom/android/systemui/plugin/Util;->enNum:[Ljava/lang/String;

    div-int/lit8 v8, v6, 0x64

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/plugin/Util;->enUnit:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    rem-int/lit8 v6, v6, 0x64

    .line 83
    if-eqz v6, :cond_7

    .line 84
    const-string v7, "and "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_7
    if-eqz v6, :cond_9

    .line 88
    const/16 v7, 0x14

    if-lt v6, v7, :cond_8

    rem-int/lit8 v7, v6, 0xa

    if-nez v7, :cond_a

    .line 89
    :cond_8
    sget-object v7, Lcom/android/systemui/plugin/Util;->enNum:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_4
    add-int/lit8 v7, v1, -0x1

    if-eq v3, v7, :cond_9

    .line 95
    sget-object v7, Lcom/android/systemui/plugin/Util;->enUnit:[Ljava/lang/String;

    add-int/lit8 v8, v1, -0x1

    sub-int/2addr v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 91
    :cond_a
    sget-object v7, Lcom/android/systemui/plugin/Util;->enNum:[Ljava/lang/String;

    rem-int/lit8 v8, v6, 0xa

    sub-int v8, v6, v8

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    sget-object v7, Lcom/android/systemui/plugin/Util;->enNum:[Ljava/lang/String;

    rem-int/lit8 v8, v6, 0xa

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 100
    .end local v6    # "v":I
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static formatUnit(I)Ljava/lang/String;
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 104
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getActiveStreamType(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x1388

    const/4 v2, 0x2

    const/4 v1, 0x3

    .line 237
    invoke-static {p0}, Lcom/android/systemui/plugin/Util;->isInCommunication(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 239
    const-string v0, "SP.Util"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x6

    .line 263
    :goto_0
    return v0

    .line 242
    :cond_0
    const-string v1, "SP.Util"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    :cond_2
    const-string v0, "SP.Util"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 249
    goto :goto_0

    .line 250
    :cond_3
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_6

    .line 251
    invoke-static {v4}, Lcom/android/systemui/plugin/Util;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/android/systemui/plugin/Util;->isInRing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 252
    const-string v0, "SP.Util"

    const-string v2, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 253
    goto :goto_0

    .line 255
    :cond_4
    const-string v0, "SP.Util"

    const-string v3, "getActiveStreamType: using STREAM_RING as default"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {p0}, Lcom/android/systemui/plugin/Util;->isInRing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 257
    goto :goto_0

    :cond_5
    move v0, v1

    .line 259
    goto :goto_0

    :cond_6
    move v0, v1

    .line 263
    goto :goto_0
.end method

.method public static getBackgroudDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/systemui/plugin/Util;->getBackgroudDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getBackgroudDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;
    .locals 14
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 134
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v7, 0x0

    invoke-direct {v0, v7, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 135
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v2, -0x25

    .line 138
    .local v2, "brightness":I
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 139
    .local v3, "cMatrix":Landroid/graphics/ColorMatrix;
    const/16 v7, 0x14

    new-array v7, v7, [F

    aput v11, v7, v12

    aput v10, v7, v13

    const/4 v8, 0x2

    aput v10, v7, v8

    const/4 v8, 0x3

    aput v10, v7, v8

    const/4 v8, 0x4

    int-to-float v9, v2

    aput v9, v7, v8

    const/4 v8, 0x5

    aput v10, v7, v8

    const/4 v8, 0x6

    aput v11, v7, v8

    const/4 v8, 0x7

    aput v10, v7, v8

    const/16 v8, 0x8

    aput v10, v7, v8

    const/16 v8, 0x9

    int-to-float v9, v2

    aput v9, v7, v8

    const/16 v8, 0xa

    aput v10, v7, v8

    const/16 v8, 0xb

    aput v10, v7, v8

    const/16 v8, 0xc

    aput v11, v7, v8

    const/16 v8, 0xd

    aput v10, v7, v8

    const/16 v8, 0xe

    int-to-float v9, v2

    aput v9, v7, v8

    const/16 v8, 0xf

    aput v10, v7, v8

    const/16 v8, 0x10

    aput v10, v7, v8

    const/16 v8, 0x11

    aput v10, v7, v8

    const/16 v8, 0x12

    aput v11, v7, v8

    const/16 v8, 0x13

    aput v10, v7, v8

    invoke-virtual {v3, v7}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 141
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 142
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 143
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, p0, v10, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 147
    .local v6, "stalistDrawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v7, v13, [I

    const v8, 0x10100a7

    aput v8, v7, v12

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 149
    new-array v7, v12, [I

    invoke-virtual {v6, v7, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 151
    return-object v6
.end method

.method public static getBackgroudDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 129
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/systemui/plugin/Util;->getBackgroudDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getDrawableFromFile(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/android/systemui/plugin/Util;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    :goto_0
    return-object v2

    .line 193
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 195
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v2, v1

    .line 197
    goto :goto_0
.end method

.method public static getStateListDrawableFromFile(Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 3
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-static {p0}, Lcom/android/systemui/plugin/Util;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    const/4 v2, 0x0

    .line 209
    :goto_0
    return-object v2

    .line 205
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 207
    invoke-static {v0}, Lcom/android/systemui/plugin/Util;->getBackgroudDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 209
    goto :goto_0
.end method

.method private static isAfMusicActiveRecently(I)Z
    .locals 2
    .param p0, "delay_ms"    # I

    .prologue
    const/4 v1, 0x3

    .line 230
    invoke-static {v1, p0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p0}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 270
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    const-string v2, "SP.Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isApkInstalled = true, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SP.Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 177
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    const/4 v2, 0x1

    .line 185
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    const-string v3, "SP.Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not find : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isInCommunication(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "IsInCall":Z
    const-string v3, "telecom"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 216
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 217
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 220
    .local v1, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isInRing(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 224
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 226
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileNetworkSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 155
    if-eqz p0, :cond_0

    .line 156
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 158
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    .line 160
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    return v1
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    if-eqz p0, :cond_0

    .line 165
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 167
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 168
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 172
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static playTTS(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resID"    # I

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "content":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 289
    invoke-static {p0, v0}, Lcom/android/systemui/plugin/Util;->playTTS(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method

.method public static playTTS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    return-void
.end method

.method public static secondsToTime(I)Ljava/lang/String;
    .locals 6
    .param p0, "seconds"    # I

    .prologue
    .line 108
    const/4 v4, 0x1

    if-ge p0, v4, :cond_0

    .line 109
    const-string v4, "00:00:00"

    .line 118
    :goto_0
    return-object v4

    .line 110
    :cond_0
    const v4, 0x57e40

    if-lt p0, v4, :cond_1

    .line 111
    const-string v4, "99:59:59"

    goto :goto_0

    .line 113
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v2, "sb":Ljava/lang/StringBuilder;
    div-int/lit16 v0, p0, 0xe10

    .line 115
    .local v0, "hour":I
    rem-int/lit16 v4, p0, 0xe10

    div-int/lit8 v1, v4, 0x3c

    .line 116
    .local v1, "min":I
    rem-int/lit16 v4, p0, 0xe10

    rem-int/lit8 v3, v4, 0x3c

    .line 118
    .local v3, "sec":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/systemui/plugin/Util;->formatUnit(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/systemui/plugin/Util;->formatUnit(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/systemui/plugin/Util;->formatUnit(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
