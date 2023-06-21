.class public Loicq/wlogin_sdk/code2d/fetch_code;
.super Loicq/wlogin_sdk/code2d/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/code2d/b;-><init>()V

    const/16 v0, 0x31

    iput v0, p0, Loicq/wlogin_sdk/code2d/fetch_code;->_cmd:I

    return-void
.end method


# virtual methods
.method public get_request(JJJ[BLoicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;JJ[B)[B
    .locals 19

    move-object/from16 v0, p7

    array-length v6, v0

    add-int/lit8 v6, v6, 0x11

    add-int/lit8 v7, v6, 0x2

    const/4 v6, 0x6

    new-array v10, v6, [I

    fill-array-data v10, :array_0

    array-length v11, v10

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v9, v6

    :goto_0
    if-ge v9, v11, :cond_1

    new-instance v13, Loicq/wlogin_sdk/b/b;

    invoke-direct {v13}, Loicq/wlogin_sdk/b/b;-><init>()V

    aget v6, v10, v9

    invoke-virtual {v13, v6}, Loicq/wlogin_sdk/b/b;->b(I)V

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    aget v15, v10, v9

    sparse-switch v15, :sswitch_data_0

    :cond_0
    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v13, v8, v6}, Loicq/wlogin_sdk/b/b;->c([BI)V

    invoke-virtual {v13}, Loicq/wlogin_sdk/b/b;->e()V

    invoke-virtual {v13}, Loicq/wlogin_sdk/b/b;->b()[B

    move-result-object v8

    array-length v6, v8

    add-int/2addr v6, v7

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move v7, v6

    goto :goto_0

    :sswitch_0
    if-eqz p13, :cond_0

    move-object/from16 v0, p13

    array-length v14, v0

    if-lez v14, :cond_0

    move-object/from16 v0, p13

    array-length v6, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "qrpushsig of "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, p13

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Loicq/wlogin_sdk/code2d/fetch_code;->getAppInfo(JJ)[B

    move-result-object v8

    array-length v6, v8

    goto :goto_1

    :sswitch_2
    const/16 v6, 0x1e

    new-array v8, v6, [B

    move-object/from16 v0, p8

    iget v15, v0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Micro:I

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/4 v14, 0x4

    move-object/from16 v0, p8

    iget v15, v0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Version:I

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v14, 0x8

    move-object/from16 v0, p8

    iget v15, v0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Size:I

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v14, 0xc

    move-object/from16 v0, p8

    iget v15, v0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Margin:I

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v14, 0x10

    move-object/from16 v0, p8

    iget v15, v0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Dpi:I

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v14, 0x14

    move-object/from16 v0, p8

    iget v15, v0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->EcLevel:I

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v14, 0x18

    move-object/from16 v0, p8

    iget v15, v0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Hint:I

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v14, 0x1c

    const/4 v15, 0x0

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    goto/16 :goto_1

    :sswitch_3
    const/16 v6, 0xe

    new-array v8, v6, [B

    const/4 v15, 0x1

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v14, 0x1

    move-wide/from16 v0, p9

    invoke-static {v8, v14, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v14, 0x5

    move-wide/from16 v0, p11

    invoke-static {v8, v14, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/16 v14, 0x9

    const/4 v15, 0x0

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/16 v14, 0xa

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v8, v14, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    goto/16 :goto_1

    :sswitch_4
    sget-object v6, Loicq/wlogin_sdk/request/u;->K:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x2

    sget-object v8, Loicq/wlogin_sdk/request/u;->J:[B

    array-length v8, v8

    add-int/2addr v6, v8

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x2

    sget-object v8, Loicq/wlogin_sdk/request/u;->C:[B

    array-length v8, v8

    add-int/2addr v6, v8

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    add-int/lit8 v6, v6, 0x2

    sget-object v8, Loicq/wlogin_sdk/request/u;->F:[B

    array-length v8, v8

    add-int/2addr v6, v8

    new-array v8, v6, [B

    sget v15, Loicq/wlogin_sdk/request/u;->Z:I

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v14, 0x1

    sget-object v15, Loicq/wlogin_sdk/request/u;->K:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v14}, Loicq/wlogin_sdk/code2d/fetch_code;->fill_staff([B[BI)I

    move-result v14

    sget-object v15, Loicq/wlogin_sdk/request/u;->J:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v14}, Loicq/wlogin_sdk/code2d/fetch_code;->fill_staff([B[BI)I

    move-result v14

    sget v15, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v8, v14, v15}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v14, v14, 0x2

    sget-object v15, Loicq/wlogin_sdk/request/u;->C:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v14}, Loicq/wlogin_sdk/code2d/fetch_code;->fill_staff([B[BI)I

    move-result v14

    const/4 v15, 0x0

    new-array v15, v15, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v14}, Loicq/wlogin_sdk/code2d/fetch_code;->fill_staff([B[BI)I

    move-result v14

    sget-object v15, Loicq/wlogin_sdk/request/u;->F:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v14}, Loicq/wlogin_sdk/code2d/fetch_code;->fill_staff([B[BI)I

    goto/16 :goto_1

    :sswitch_5
    sget-object v6, Loicq/wlogin_sdk/request/u;->A:[B

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v8, v6

    move/from16 v18, v8

    move-object v8, v6

    move/from16 v6, v18

    goto/16 :goto_1

    :cond_1
    new-array v9, v7, [B

    const/4 v6, 0x2

    move-wide/from16 v0, p3

    invoke-static {v9, v6, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v6, 0x6

    move-wide/from16 v0, p1

    invoke-static {v9, v6, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    const/16 v6, 0xe

    const/16 v7, 0x8

    invoke-static {v9, v6, v7}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v9, v1, v6}, Loicq/wlogin_sdk/code2d/fetch_code;->fill_staff([B[BI)I

    move-result v6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v6, v10}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v7, v6, 0x2

    const/4 v6, 0x0

    move v8, v7

    move v7, v6

    :goto_3
    if-ge v7, v10, :cond_2

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const/4 v11, 0x0

    array-length v13, v6

    invoke-static {v6, v11, v9, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v8, v6

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_3

    :cond_2
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6, v9}, Loicq/wlogin_sdk/code2d/fetch_code;->get_request(JZ[B)[B

    move-result-object v6

    return-object v6

    :cond_3
    move v6, v7

    goto/16 :goto_2

    nop

    :array_0
    .array-data 4
        0x11
        0x16
        0x1b
        0x1d
        0x1f
        0x33
    .end array-data

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x16 -> :sswitch_1
        0x1b -> :sswitch_2
        0x1d -> :sswitch_3
        0x1f -> :sswitch_4
        0x33 -> :sswitch_5
    .end sparse-switch
.end method

.method public get_response([B)I
    .locals 8

    const/16 v6, 0x9

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Loicq/wlogin_sdk/code2d/fetch_code;->get_response([BI)[B

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    :cond_0
    const/16 v0, -0x3f1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    sget-object v1, Loicq/wlogin_sdk/code2d/fetch_code;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, v1, Loicq/wlogin_sdk/code2d/c;->h:J

    const/4 v0, 0x6

    sget-object v1, Loicq/wlogin_sdk/code2d/fetch_code;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    iput v0, v1, Loicq/wlogin_sdk/code2d/c;->b:I

    const/4 v0, 0x7

    sget-object v1, Loicq/wlogin_sdk/code2d/fetch_code;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v1, v1, Loicq/wlogin_sdk/code2d/c;->b:I

    if-eqz v1, :cond_2

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    sget-object v1, Loicq/wlogin_sdk/code2d/fetch_code;->_status:Loicq/wlogin_sdk/code2d/c;

    new-array v4, v0, [B

    iput-object v4, v1, Loicq/wlogin_sdk/code2d/c;->f:[B

    sget-object v1, Loicq/wlogin_sdk/code2d/fetch_code;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v1, v1, Loicq/wlogin_sdk/code2d/c;->f:[B

    invoke-static {v3, v6, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x9

    sget-object v0, Loicq/wlogin_sdk/code2d/fetch_code;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    goto :goto_0

    :cond_2
    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    new-array v1, v0, [B

    sput-object v1, Loicq/wlogin_sdk/code2d/c;->i:[B

    sget-object v1, Loicq/wlogin_sdk/code2d/c;->i:[B

    invoke-static {v3, v6, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x9

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v4

    add-int/lit8 v0, v0, 0x2

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v5

    add-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v6

    add-int/lit8 v0, v0, 0x2

    sparse-switch v5, :sswitch_data_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    sget-object v5, Loicq/wlogin_sdk/code2d/fetch_code;->_status:Loicq/wlogin_sdk/code2d/c;

    new-array v7, v6, [B

    iput-object v7, v5, Loicq/wlogin_sdk/code2d/c;->j:[B

    sget-object v5, Loicq/wlogin_sdk/code2d/fetch_code;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v5, v5, Loicq/wlogin_sdk/code2d/c;->j:[B

    invoke-static {v3, v0, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v6

    goto :goto_2

    :sswitch_1
    sget-object v5, Loicq/wlogin_sdk/code2d/fetch_code;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Loicq/wlogin_sdk/code2d/c;->k:J

    add-int/lit8 v0, v0, 0x4

    sget-object v5, Loicq/wlogin_sdk/code2d/fetch_code;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v6

    iput v6, v5, Loicq/wlogin_sdk/code2d/c;->l:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    sget-object v0, Loicq/wlogin_sdk/code2d/fetch_code;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1c -> :sswitch_1
    .end sparse-switch
.end method
