.class public Loicq/wlogin_sdk/code2d/d;
.super Loicq/wlogin_sdk/code2d/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/code2d/b;-><init>()V

    const/16 v0, 0x12

    iput v0, p0, Loicq/wlogin_sdk/code2d/d;->_cmd:I

    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 13

    const/16 v4, -0x3f1

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Loicq/wlogin_sdk/code2d/d;->get_response([BI)[B

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v1, v7

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    sget-object v2, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v7, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    int-to-long v8, v1

    iput-wide v8, v2, Loicq/wlogin_sdk/code2d/c;->h:J

    const/4 v1, 0x6

    sget-object v2, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v7, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v1

    iput v1, v2, Loicq/wlogin_sdk/code2d/c;->b:I

    const/4 v1, 0x7

    sget-object v2, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v2, v2, Loicq/wlogin_sdk/code2d/c;->b:I

    if-eqz v2, :cond_2

    sget-object v0, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    goto :goto_0

    :cond_2
    sget-object v2, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v7, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v8

    iput-wide v8, v2, Loicq/wlogin_sdk/code2d/c;->a:J

    const/16 v1, 0xf

    sget-object v2, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v7, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    int-to-long v8, v1

    iput-wide v8, v2, Loicq/wlogin_sdk/code2d/c;->c:J

    const/16 v1, 0x13

    sget-object v2, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    invoke-static {v7, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v8

    const/16 v3, 0x15

    move v5, v6

    move-object v1, v0

    move-object v2, v0

    :goto_1
    if-ge v5, v8, :cond_3

    invoke-static {v7, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v9

    add-int/lit8 v3, v3, 0x2

    invoke-static {v7, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v10

    add-int/lit8 v3, v3, 0x2

    sparse-switch v9, :sswitch_data_0

    add-int/lit8 v9, v10, 0x4

    new-array v9, v9, [B

    add-int/lit8 v11, v3, -0x4

    array-length v12, v9

    invoke-static {v7, v11, v9, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v11, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v11, v11, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v10

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :sswitch_0
    new-array v2, v10, [B

    invoke-static {v7, v3, v2, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v10

    goto :goto_2

    :sswitch_1
    new-array v0, v10, [B

    invoke-static {v7, v3, v0, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v10

    goto :goto_2

    :sswitch_2
    new-array v1, v10, [B

    invoke-static {v7, v3, v1, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v10

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    move v0, v4

    goto/16 :goto_0

    :cond_5
    invoke-static {v2, v1}, Loicq/wlogin_sdk/request/oicq_request;->b([B[B)[B

    move-result-object v1

    sput-object v1, Loicq/wlogin_sdk/code2d/c;->q:[B

    sput-object v0, Loicq/wlogin_sdk/code2d/c;->r:[B

    sget-object v0, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public a(JJ[B[B)[B
    .locals 3

    array-length v0, p5

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    array-length v1, p6

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x2

    invoke-static {v0, v1, p3, p4}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v1, 0x6

    invoke-virtual {p0, v0, p5, v1}, Loicq/wlogin_sdk/code2d/d;->fill_staff([B[BI)I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    add-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v1, v1, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Loicq/wlogin_sdk/code2d/d;->get_request(JZ[B)[B

    move-result-object v0

    return-object v0
.end method
