.class final Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final bitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private mirror:Z

.field private parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

.field private parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_1
    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private copyBit(III)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    goto :goto_0

    :cond_1
    shl-int/lit8 v0, p3, 0x1

    goto :goto_1
.end method


# virtual methods
.method mirror()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method readCodewords()[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v16

    invoke-static {}, Lcom/google/zxing/qrcode/decoder/DataMask;->values()[Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v17

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v18

    aget-object v6, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v7}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [B

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    add-int/lit8 v11, v7, -0x1

    :goto_0
    if-lez v11, :cond_5

    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v11, v0, :cond_0

    add-int/lit8 v11, v11, -0x1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_4

    if-eqz v12, :cond_2

    add-int/lit8 v17, v7, -0x1

    sub-int v10, v17, v4

    :goto_2
    const/4 v3, 0x0

    move v15, v14

    :goto_3
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v3, v0, :cond_3

    sub-int v17, v11, v3

    move/from16 v0, v17

    invoke-virtual {v9, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-nez v17, :cond_7

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    sub-int v18, v11, v3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-eqz v17, :cond_1

    or-int/lit8 v5, v5, 0x1

    :cond_1
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_7

    add-int/lit8 v14, v15, 0x1

    int-to-byte v0, v5

    move/from16 v17, v0

    aput-byte v17, v13, v15

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v15, v14

    goto :goto_3

    :cond_2
    move v10, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v14, v15

    goto :goto_1

    :cond_4
    xor-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, -0x2

    goto :goto_0

    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v17

    move/from16 v0, v17

    if-eq v14, v0, :cond_6

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v17

    throw v17

    :cond_6
    return-object v13

    :cond_7
    move v14, v15

    goto :goto_4
.end method

.method readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v8, 0x7

    const/16 v7, 0x8

    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    :goto_0
    return-object v6

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x6

    if-ge v3, v6, :cond_1

    invoke-direct {p0, v3, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v8, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    invoke-direct {p0, v7, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    invoke-direct {p0, v7, v8, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    const/4 v4, 0x5

    :goto_2
    if-ltz v4, :cond_2

    invoke-direct {p0, v7, v4, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    add-int/lit8 v5, v0, -0x7

    add-int/lit8 v4, v0, -0x1

    :goto_3
    if-lt v4, v5, :cond_3

    invoke-direct {p0, v7, v4, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v0, -0x8

    :goto_4
    if-ge v3, v0, :cond_4

    invoke-direct {p0, v3, v7, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v6

    iput-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6
.end method

.method readVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    iget-object v7, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v7, :cond_0

    iget-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    :goto_0
    return-object v5

    :cond_0
    iget-object v7, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v7, v0, -0x11

    div-int/lit8 v4, v7, 0x4

    const/4 v7, 0x6

    if-gt v4, v7, :cond_1

    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    add-int/lit8 v2, v0, -0xb

    const/4 v3, 0x5

    :goto_1
    if-ltz v3, :cond_3

    add-int/lit8 v1, v0, -0x9

    :goto_2
    if-lt v1, v2, :cond_2

    invoke-direct {p0, v1, v3, v6}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v7

    if-ne v7, v0, :cond_4

    iput-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    const/4 v1, 0x5

    :goto_3
    if-ltz v1, :cond_6

    add-int/lit8 v3, v0, -0x9

    :goto_4
    if-lt v3, v2, :cond_5

    invoke-direct {p0, v1, v3, v6}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_6
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v7

    if-ne v7, v0, :cond_7

    iput-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7
.end method

.method remask()V
    .locals 4

    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/zxing/qrcode/decoder/DataMask;->values()[Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v3

    aget-object v0, v2, v3

    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    goto :goto_0
.end method

.method setMirror(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    iput-boolean p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z

    return-void
.end method
