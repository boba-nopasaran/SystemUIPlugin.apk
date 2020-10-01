.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iput-wide p3, p0, Lokhttp3/Cookie;->expiresAt:J

    iput-object p5, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iput-object p6, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iput-boolean p7, p0, Lokhttp3/Cookie;->secure:Z

    iput-boolean p8, p0, Lokhttp3/Cookie;->httpOnly:Z

    iput-boolean p9, p0, Lokhttp3/Cookie;->hostOnly:Z

    iput-boolean p10, p0, Lokhttp3/Cookie;->persistent:Z

    return-void
.end method

.method private constructor <init>(Lokhttp3/Cookie$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-wide v0, p1, Lokhttp3/Cookie$Builder;->expiresAt:J

    iput-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->secure:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->httpOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->persistent:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->hostOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Cookie$Builder;Lokhttp3/Cookie$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lokhttp3/Cookie;-><init>(Lokhttp3/Cookie$Builder;)V

    return-void
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    :cond_0
    const/16 v3, 0x7f

    if-ge v0, v3, :cond_4

    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-le v0, v3, :cond_4

    :cond_1
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_2
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    :cond_3
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_5

    :cond_4
    move v1, v4

    :goto_1
    if-nez p3, :cond_6

    move v3, v4

    :goto_2
    if-ne v1, v3, :cond_7

    :goto_3
    return v2

    :cond_5
    move v1, v5

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    move v2, p2

    goto :goto_3
.end method

.method private static domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    invoke-static {v0}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 32

    const/16 v28, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v5, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-static {v0, v1, v2, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v19

    const/16 v5, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v27, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v5, v1}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0xe677d21fdbffL

    const-wide/16 v22, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    add-int/lit8 v28, v19, 0x1

    :goto_1
    move/from16 v0, v28

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    const/16 v5, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-static {v0, v1, v2, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v17

    const/16 v5, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v17

    invoke-static {v0, v1, v2, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-static {v0, v1, v4}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v5, v1}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v18

    :goto_2
    const-string v5, "expires"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v5, v1}, Lokhttp3/Cookie;->parseExpires(Ljava/lang/String;II)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v8

    const/4 v15, 0x1

    :cond_2
    :goto_3
    add-int/lit8 v28, v17, 0x1

    goto :goto_1

    :cond_3
    const-string v18, ""

    goto :goto_2

    :cond_4
    const-string v5, "max-age"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_1
    invoke-static/range {v18 .. v18}, Lokhttp3/Cookie;->parseMaxAge(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v22

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const-string v5, "domain"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :try_start_2
    invoke-static/range {v18 .. v18}, Lokhttp3/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    const/4 v14, 0x0

    goto :goto_3

    :cond_6
    const-string v5, "path"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v11, v18

    goto :goto_3

    :cond_7
    const-string v5, "secure"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v12, 0x1

    goto :goto_3

    :cond_8
    const-string v5, "httponly"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v13, 0x1

    goto :goto_3

    :cond_9
    const-wide/high16 v30, -0x8000000000000000L

    cmp-long v5, v22, v30

    if-nez v5, :cond_e

    const-wide/high16 v8, -0x8000000000000000L

    :cond_a
    :goto_4
    if-nez v10, :cond_11

    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v10

    :cond_b
    if-eqz v11, :cond_c

    const-string v5, "/"

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v24

    const/16 v5, 0x2f

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v25

    if-eqz v25, :cond_12

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    :cond_d
    :goto_5
    new-instance v5, Lokhttp3/Cookie;

    invoke-direct/range {v5 .. v15}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto/16 :goto_0

    :cond_e
    const-wide/16 v30, -0x1

    cmp-long v5, v22, v30

    if-eqz v5, :cond_a

    const-wide v30, 0x20c49ba5e353f7L

    cmp-long v5, v22, v30

    if-gtz v5, :cond_10

    const-wide/16 v30, 0x3e8

    mul-long v20, v22, v30

    :goto_6
    add-long v8, p0, v20

    cmp-long v5, v8, p0

    if-ltz v5, :cond_f

    const-wide v30, 0xe677d21fdbffL

    cmp-long v5, v8, v30

    if-lez v5, :cond_a

    :cond_f
    const-wide v8, 0xe677d21fdbffL

    goto :goto_4

    :cond_10
    const-wide v20, 0x7fffffffffffffffL

    goto :goto_6

    :cond_11
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lokhttp3/Cookie;->domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_12
    const-string v11, "/"

    goto :goto_5

    :catch_0
    move-exception v5

    goto/16 :goto_3

    :catch_1
    move-exception v5

    goto/16 :goto_3

    :catch_2
    move-exception v5

    goto/16 :goto_3
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lokhttp3/Cookie;->parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public static parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    const-string v5, "Set-Cookie"

    invoke-virtual {p1, v5}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p0, v5}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    :goto_2
    return-object v5

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_2
.end method

.method private static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lokhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    return-object v0
.end method

.method private static parseExpires(Ljava/lang/String;II)J
    .locals 12

    const/4 v10, 0x0

    invoke-static {p0, p1, p2, v10}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result p1

    const/4 v3, -0x1

    const/4 v5, -0x1

    const/4 v8, -0x1

    const/4 v1, -0x1

    const/4 v6, -0x1

    const/4 v9, -0x1

    sget-object v10, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    :goto_0
    if-ge p1, p2, :cond_4

    add-int/lit8 v10, p1, 0x1

    const/4 v11, 0x1

    invoke-static {p0, v10, p2, v11}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v2

    invoke-virtual {v4, p1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v10, -0x1

    if-ne v3, v10, :cond_1

    sget-object v10, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :cond_0
    :goto_1
    add-int/lit8 v10, v2, 0x1

    const/4 v11, 0x0

    invoke-static {p0, v10, p2, v11}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v10, -0x1

    if-ne v1, v10, :cond_2

    sget-object v10, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v10, -0x1

    if-ne v6, v10, :cond_3

    sget-object v10, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    div-int/lit8 v6, v10, 0x4

    goto :goto_1

    :cond_3
    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    sget-object v10, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_4
    const/16 v10, 0x46

    if-lt v9, v10, :cond_5

    const/16 v10, 0x63

    if-gt v9, v10, :cond_5

    add-int/lit16 v9, v9, 0x76c

    :cond_5
    if-ltz v9, :cond_6

    const/16 v10, 0x45

    if-gt v9, v10, :cond_6

    add-int/lit16 v9, v9, 0x7d0

    :cond_6
    const/16 v10, 0x641

    if-ge v9, v10, :cond_7

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :cond_7
    const/4 v10, -0x1

    if-ne v6, v10, :cond_8

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :cond_8
    const/4 v10, 0x1

    if-lt v1, v10, :cond_9

    const/16 v10, 0x1f

    if-le v1, v10, :cond_a

    :cond_9
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :cond_a
    if-ltz v3, :cond_b

    const/16 v10, 0x17

    if-le v3, v10, :cond_c

    :cond_b
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :cond_c
    if-ltz v5, :cond_d

    const/16 v10, 0x3b

    if-le v5, v10, :cond_e

    :cond_d
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :cond_e
    if-ltz v8, :cond_f

    const/16 v10, 0x3b

    if-le v8, v10, :cond_10

    :cond_f
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :cond_10
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v10, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v0, v10}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v9}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x2

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x5

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xb

    invoke-virtual {v0, v10, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xc

    invoke-virtual {v0, v10, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xd

    invoke-virtual {v0, v10, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    return-wide v10
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
    .locals 8

    const-wide/high16 v4, -0x8000000000000000L

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    move-wide v2, v4

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string v1, "-?\\d+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    move-wide v2, v4

    goto :goto_0

    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_1

    :cond_2
    throw v0
.end method

.method private static pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public domain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Lokhttp3/Cookie;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lokhttp3/Cookie;

    iget-object v2, v0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lokhttp3/Cookie;->secure:Z

    iget-boolean v3, p0, Lokhttp3/Cookie;->secure:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v3, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v3, p0, Lokhttp3/Cookie;->persistent:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lokhttp3/Cookie;->hostOnly:Z

    iget-boolean v3, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public expiresAt()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x11

    iget-object v1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v6, p0, Lokhttp3/Cookie;->expiresAt:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lokhttp3/Cookie;->persistent:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v4, :cond_3

    :goto_3
    add-int v0, v1, v2

    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public hostOnly()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return v0
.end method

.method public httpOnly()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    return v0
.end method

.method public matches(Lokhttp3/HttpUrl;)Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-static {p1, v2}, Lokhttp3/Cookie;->domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {p1, v2}, Lokhttp3/Cookie;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public persistent()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    return v0
.end method

.method public secure()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/Cookie;->persistent:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-nez v1, :cond_1

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v1, :cond_2

    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v1, :cond_3

    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method