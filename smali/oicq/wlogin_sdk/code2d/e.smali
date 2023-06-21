.class public Loicq/wlogin_sdk/code2d/e;
.super Loicq/wlogin_sdk/code2d/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/code2d/b;-><init>()V

    const/16 v0, 0x13

    iput v0, p0, Loicq/wlogin_sdk/code2d/e;->_cmd:I

    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 11

    const/16 v10, 0xd

    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Loicq/wlogin_sdk/code2d/e;->get_response([BI)[B

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v0, v5

    if-ge v0, v4, :cond_1

    :cond_0
    const/16 v0, -0x3f1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    sget-object v3, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v6

    iput-wide v6, v3, Loicq/wlogin_sdk/code2d/c;->a:J

    const/16 v0, 0xa

    sget-object v3, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v3, Loicq/wlogin_sdk/code2d/c;->b:I

    sget-object v0, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    if-eqz v0, :cond_2

    invoke-static {v5, v4}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    sget-object v1, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    new-array v3, v0, [B

    iput-object v3, v1, Loicq/wlogin_sdk/code2d/c;->f:[B

    sget-object v1, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v1, v1, Loicq/wlogin_sdk/code2d/c;->f:[B

    invoke-static {v5, v10, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0xd

    sget-object v0, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    goto :goto_0

    :cond_2
    sget-object v0, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v5, v4}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iput-wide v6, v0, Loicq/wlogin_sdk/code2d/c;->c:J

    const/16 v0, 0xf

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    const/16 v3, 0x11

    sget-object v4, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    new-array v6, v0, [B

    iput-object v6, v4, Loicq/wlogin_sdk/code2d/c;->d:[B

    sget-object v4, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v4, v4, Loicq/wlogin_sdk/code2d/c;->d:[B

    invoke-static {v5, v3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x11

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v6

    add-int/lit8 v0, v0, 0x2

    sget-object v3, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    new-array v4, v2, [B

    iput-object v4, v3, Loicq/wlogin_sdk/code2d/c;->g:[B

    sget-object v3, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v3, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    move v3, v2

    move v4, v0

    :goto_1
    if-ge v3, v6, :cond_6

    invoke-static {v5, v4}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    add-int/lit8 v7, v4, 0x2

    invoke-static {v5, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v7

    if-ne v0, v10, :cond_3

    sget-object v0, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    new-array v8, v7, [B

    iput-object v8, v0, Loicq/wlogin_sdk/code2d/c;->g:[B

    add-int/lit8 v0, v4, 0x4

    sget-object v8, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v8, v8, Loicq/wlogin_sdk/code2d/c;->g:[B

    invoke-static {v5, v0, v8, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    add-int/lit8 v0, v7, 0x4

    add-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_5

    add-int/lit8 v0, v4, 0x4

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_3
    sput-boolean v0, Loicq/wlogin_sdk/code2d/c;->s:Z

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v7, 0x4

    new-array v0, v0, [B

    add-int/lit8 v8, v7, 0x4

    invoke-static {v5, v4, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v8, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v8, v8, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object v0, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    goto/16 :goto_0
.end method

.method public a(JJZ[B[I[B[B[BI[B)[B
    .locals 5

    if-nez p6, :cond_0

    const/4 v1, 0x0

    new-array p6, v1, [B

    :cond_0
    if-nez p7, :cond_1

    const/4 v1, 0x0

    new-array p7, v1, [I

    :cond_1
    if-nez p8, :cond_2

    const/4 v1, 0x0

    new-array p8, v1, [B

    :cond_2
    if-nez p9, :cond_3

    const/4 v1, 0x0

    new-array p9, v1, [B

    :cond_3
    if-nez p10, :cond_4

    const/4 v1, 0x0

    new-array p10, v1, [B

    :cond_4
    if-nez p12, :cond_5

    const/4 v1, 0x0

    new-array v0, v1, [B

    move-object/from16 p12, v0

    :cond_5
    if-eqz p12, :cond_6

    move-object/from16 v0, p12

    array-length v1, v0

    if-lez v1, :cond_6

    array-length v1, p6

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x2

    array-length v2, p8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    array-length v2, p7

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    array-length v2, p10

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p12

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v2, p3, p4}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v2, 0x6

    invoke-static {v1, v2, p1, p2}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    const/16 v2, 0xe

    array-length v3, p6

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/16 v2, 0x10

    const/4 v3, 0x0

    array-length v4, p6

    invoke-static {p6, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p6

    add-int/lit8 v2, v2, 0x10

    array-length v3, p8

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    array-length v4, p8

    invoke-static {p8, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p8

    add-int/2addr v2, v3

    if-eqz p9, :cond_7

    array-length v3, p9

    const/16 v4, 0x10

    if-ne v3, v4, :cond_7

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {p9, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x10

    :goto_1
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p11

    invoke-static {v1, v2, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    array-length v3, p7

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v3, v2, 0x2

    const/4 v2, 0x0

    :goto_2
    array-length v4, p7

    if-ge v2, v4, :cond_8

    aget v4, p7, v2

    invoke-static {v1, v3, v4}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    array-length v1, p6

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x2

    array-length v2, p8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    array-length v2, p7

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    array-length v2, p10

    add-int/2addr v1, v2

    new-array v1, v1, [B

    goto :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x10

    goto :goto_1

    :cond_8
    const/4 v2, 0x1

    if-eqz p12, :cond_9

    move-object/from16 v0, p12

    array-length v4, v0

    if-lez v4, :cond_9

    const/4 v2, 0x2

    :cond_9
    invoke-static {v1, v3, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v2, v3, 0x2

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v2, v2, 0x2

    array-length v3, p10

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    array-length v4, p10

    invoke-static {p10, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p10

    add-int/2addr v2, v3

    if-eqz p12, :cond_a

    move-object/from16 v0, p12

    array-length v3, v0

    if-lez v3, :cond_a

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p12

    array-length v3, v0

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p12

    array-length v4, v0

    move-object/from16 v0, p12

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p12

    array-length v3, v0

    add-int/2addr v2, v3

    :cond_a
    invoke-virtual {p0, p1, p2, p5, v1}, Loicq/wlogin_sdk/code2d/e;->get_request(JZ[B)[B

    move-result-object v1

    return-object v1
.end method
