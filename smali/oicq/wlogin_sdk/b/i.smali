.class public Loicq/wlogin_sdk/b/i;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I

.field i:I

.field j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/b/i;->a:I

    const/4 v0, 0x5

    iput v0, p0, Loicq/wlogin_sdk/b/i;->i:I

    const/16 v0, 0x62

    iput v0, p0, Loicq/wlogin_sdk/b/i;->j:I

    const/16 v0, 0x106

    iput v0, p0, Loicq/wlogin_sdk/b/i;->h:I

    return-void
.end method


# virtual methods
.method public a(JJIJ[B[BI[BJ[B[BI[BI)[B
    .locals 8

    if-nez p8, :cond_0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p8, v0

    :cond_0
    if-nez p9, :cond_1

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p9, v0

    :cond_1
    if-nez p11, :cond_2

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p11, v0

    :cond_2
    if-nez p15, :cond_3

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p15, v0

    :cond_3
    if-nez p17, :cond_4

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p17, v0

    :cond_4
    if-nez p14, :cond_5

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p14, v0

    :cond_5
    iget v2, p0, Loicq/wlogin_sdk/b/i;->j:I

    move-object/from16 v0, p14

    array-length v3, v0

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Loicq/wlogin_sdk/b/i;->j:I

    const/4 v2, 0x0

    iget v3, p0, Loicq/wlogin_sdk/b/i;->j:I

    new-array v4, v3, [B

    iget v3, p0, Loicq/wlogin_sdk/b/i;->a:I

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v2, 0x2

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_rand_32()I

    move-result v3

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/4 v2, 0x6

    iget v3, p0, Loicq/wlogin_sdk/b/i;->i:I

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v2, 0xa

    long-to-int v3, p1

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v2, 0xe

    invoke-static {v4, v2, p5}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v5, 0x12

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_6

    move-wide/from16 v2, p12

    :goto_0
    invoke-static {v4, v5, v2, v3}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    const/16 v2, 0x1a

    const/4 v3, 0x0

    move-object/from16 v0, p8

    array-length v5, v0

    move-object/from16 v0, p8

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p8

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1a

    const/4 v3, 0x0

    move-object/from16 v0, p9

    array-length v5, v0

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p9

    array-length v3, v0

    add-int/2addr v2, v3

    move/from16 v0, p10

    invoke-static {v4, v2, v0}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p11

    array-length v5, v0

    move-object/from16 v0, p11

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p11

    array-length v3, v0

    add-int/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p15

    array-length v5, v0

    move-object/from16 v0, p15

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p15

    array-length v3, v0

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    add-int/lit8 v2, v2, 0x4

    move/from16 v0, p16

    invoke-static {v4, v2, v0}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p17

    array-length v3, v0

    if-nez v3, :cond_7

    const/16 v3, 0x10

    new-array v3, v3, [B

    const/4 v5, 0x0

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_rand_32()I

    move-result v6

    invoke-static {v3, v5, v6}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/4 v5, 0x4

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_rand_32()I

    move-result v6

    invoke-static {v3, v5, v6}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v5, 0x8

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_rand_32()I

    move-result v6

    invoke-static {v3, v5, v6}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v5, 0xc

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_rand_32()I

    move-result v6

    invoke-static {v3, v5, v6}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    array-length v3, v3

    add-int/2addr v2, v3

    :goto_1
    invoke-static {v4, v2, p3, p4}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v2, v2, 0x4

    move/from16 v0, p18

    invoke-static {v4, v2, v0}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p14

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p14

    array-length v5, v0

    move-object/from16 v0, p14

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x18

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p11

    array-length v6, v0

    move-object/from16 v0, p11

    invoke-static {v0, v3, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v6, 0x0

    cmp-long v3, p12, v6

    if-nez v3, :cond_8

    const/16 v3, 0x10

    invoke-static {v2, v3, p6, p7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    :goto_2
    invoke-static {v2}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v2

    const/4 v3, 0x0

    array-length v5, v4

    invoke-static {v4, v3, v5, v2}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v2

    array-length v3, v2

    iput v3, p0, Loicq/wlogin_sdk/b/i;->j:I

    iget v3, p0, Loicq/wlogin_sdk/b/i;->h:I

    invoke-virtual {p0, v3}, Loicq/wlogin_sdk/b/i;->b(I)V

    iget v3, p0, Loicq/wlogin_sdk/b/i;->j:I

    invoke-virtual {p0, v2, v3}, Loicq/wlogin_sdk/b/i;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/i;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/i;->b()[B

    move-result-object v2

    return-object v2

    :cond_6
    move-wide v2, p6

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p17

    array-length v5, v0

    move-object/from16 v0, p17

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p17

    array-length v3, v0

    add-int/2addr v2, v3

    goto :goto_1

    :cond_8
    const/16 v3, 0x10

    move-wide/from16 v0, p12

    invoke-static {v2, v3, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    goto :goto_2
.end method
