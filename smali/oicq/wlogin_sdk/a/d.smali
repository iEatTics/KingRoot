.class public Loicq/wlogin_sdk/a/d;
.super Loicq/wlogin_sdk/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/a/c;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Loicq/wlogin_sdk/a/d;->b:I

    return-void
.end method


# virtual methods
.method public a([B[B[B[BI[B[BZ[BJ[BI)[B
    .locals 6

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p13}, Loicq/wlogin_sdk/a/d;->b([B[B[B[BI[B[BZ[BJ[BI)[B

    move-result-object v1

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Loicq/wlogin_sdk/a/d;->d:I

    iget v2, p0, Loicq/wlogin_sdk/a/d;->d:I

    new-array v2, v2, [B

    array-length v3, p1

    invoke-static {v2, v0, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    array-length v3, v1

    invoke-static {v2, v0, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v2}, Loicq/wlogin_sdk/a/d;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public b([B[B[B[BI[B[BZ[BJ[BI)[B
    .locals 8

    const/4 v4, 0x0

    if-nez p7, :cond_0

    const/4 v2, 0x0

    new-array p7, v2, [B

    :cond_0
    if-nez p4, :cond_1

    const/4 v2, 0x0

    new-array p4, v2, [B

    :cond_1
    if-nez p9, :cond_2

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p9, v0

    :cond_2
    const/4 v2, 0x5

    if-eqz p8, :cond_5

    const/16 v2, 0xa

    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    array-length v5, p3

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x2

    array-length v5, p6

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    array-length v5, p7

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    array-length v5, p4

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p9

    array-length v5, v0

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    array-length v5, p3

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p12

    array-length v5, v0

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    :goto_0
    array-length v5, p1

    invoke-static {v3, v4, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {p1, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    array-length v5, p3

    invoke-static {v3, v4, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, p3

    invoke-static {p3, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, p3

    add-int/2addr v4, v5

    invoke-static {v3, v4, p5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v4, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    array-length v4, p6

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    array-length v5, p6

    invoke-static {p6, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p6

    add-int/2addr v2, v4

    const/4 v4, 0x5

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    array-length v4, p7

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    array-length v5, p7

    invoke-static {p7, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p7

    add-int/2addr v2, v4

    const/4 v4, 0x6

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    array-length v4, p4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    array-length v5, p4

    invoke-static {p4, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p4

    add-int/2addr v2, v4

    const/16 v4, 0x8

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0xf

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p13

    invoke-static {v3, v2, v0}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    add-int/lit8 v2, v2, 0x4

    if-eqz p8, :cond_3

    const/16 v4, 0x9

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p9

    array-length v4, v0

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p9

    array-length v5, v0

    move-object/from16 v0, p9

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p9

    array-length v4, v0

    add-int/2addr v2, v4

    const/16 v4, 0xb

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    array-length v4, p3

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    array-length v5, p3

    invoke-static {p3, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p3

    add-int/2addr v2, v4

    const/16 v4, 0xd

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v0, p10

    invoke-static {v3, v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v2, v2, 0x4

    const/16 v4, 0xe

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p12

    array-length v4, v0

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p12

    array-length v5, v0

    move-object/from16 v0, p12

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p12

    array-length v4, v0

    add-int/2addr v2, v4

    :cond_3
    if-eqz p2, :cond_4

    array-length v2, p2

    if-gtz v2, :cond_6

    :cond_4
    sget-object v2, Loicq/wlogin_sdk/a/j;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :goto_1
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5, v2}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v2

    return-object v2

    :cond_5
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    array-length v5, p3

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x2

    array-length v5, p6

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    array-length v5, p7

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    array-length v5, p4

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    goto/16 :goto_0

    :cond_6
    invoke-static {p2}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v2

    goto :goto_1
.end method
