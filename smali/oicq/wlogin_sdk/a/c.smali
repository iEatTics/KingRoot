.class public Loicq/wlogin_sdk/a/c;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field protected e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Loicq/wlogin_sdk/a/c;->a:I

    iput v1, p0, Loicq/wlogin_sdk/a/c;->b:I

    const/4 v0, 0x5

    iput v0, p0, Loicq/wlogin_sdk/a/c;->c:I

    iput v1, p0, Loicq/wlogin_sdk/a/c;->d:I

    const/4 v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/a/c;->e:I

    return-void
.end method

.method public static a([BLoicq/wlogin_sdk/a/j;)I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v1, -0x3f1

    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v2

    aget v0, v2, v7

    aget v2, v2, v10

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    if-le v3, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p1, Loicq/wlogin_sdk/a/j;->d:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x2

    array-length v4, p0

    if-le v3, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    add-int v4, v2, v3

    array-length v5, p0

    if-le v4, v5, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    new-array v4, v3, [B

    invoke-static {p0, v2, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1

    array-length v5, p0

    if-le v3, v5, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    add-int v5, v2, v3

    array-length v6, p0

    if-le v5, v6, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    new-array v5, v3, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->e:[B

    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-static {p0, v2, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x2

    array-length v5, p0

    if-le v3, v5, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    add-int v5, v2, v3

    array-length v6, p0

    if-le v5, v6, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    new-array v5, v3, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-static {p0, v2, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    array-length v2, v4

    if-lez v2, :cond_0

    iget v2, p1, Loicq/wlogin_sdk/a/j;->d:I

    sparse-switch v2, :sswitch_data_0

    const-string v1, "unhandle return code int parse_checkvalid_rsp"

    const-string v2, ""

    const-string v3, ""

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    array-length v2, v4

    if-le v9, v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    invoke-static {v4, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v2

    iput v2, p1, Loicq/wlogin_sdk/a/j;->m:I

    const/4 v2, 0x5

    array-length v3, v4

    if-le v2, v3, :cond_a

    move v0, v1

    goto/16 :goto_0

    :cond_a
    invoke-static {v4, v9}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    const/4 v3, 0x5

    add-int/lit8 v5, v2, 0x5

    array-length v6, v4

    if-le v5, v6, :cond_b

    move v0, v1

    goto/16 :goto_0

    :cond_b
    new-array v1, v2, [B

    iput-object v1, p1, Loicq/wlogin_sdk/a/j;->n:[B

    iget-object v1, p1, Loicq/wlogin_sdk/a/j;->n:[B

    invoke-static {v4, v3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x5

    goto/16 :goto_0

    :sswitch_1
    array-length v2, v4

    if-le v10, v2, :cond_c

    move v0, v1

    goto/16 :goto_0

    :cond_c
    invoke-static {v4, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    array-length v5, v4

    if-le v3, v5, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_d
    new-array v3, v2, [B

    iput-object v3, p1, Loicq/wlogin_sdk/a/j;->o:[B

    iget-object v3, p1, Loicq/wlogin_sdk/a/j;->o:[B

    invoke-static {v4, v10, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    invoke-static {v4, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    add-int v5, v3, v2

    array-length v6, v4

    if-le v5, v6, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    new-array v5, v2, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->p:[B

    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->p:[B

    invoke-static {v4, v3, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    invoke-static {v4, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    add-int v5, v2, v3

    array-length v6, v4

    if-le v5, v6, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    new-array v1, v3, [B

    iput-object v1, p1, Loicq/wlogin_sdk/a/j;->q:[B

    iget-object v1, p1, Loicq/wlogin_sdk/a/j;->q:[B

    invoke-static {v4, v2, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, v2, v3

    goto/16 :goto_0

    :sswitch_2
    array-length v2, v4

    if-le v8, v2, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_10
    invoke-static {v4, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    add-int/lit8 v3, v2, 0x2

    array-length v5, v4

    if-le v3, v5, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    new-array v1, v2, [B

    iput-object v1, p1, Loicq/wlogin_sdk/a/j;->r:[B

    iget-object v1, p1, Loicq/wlogin_sdk/a/j;->r:[B

    invoke-static {v4, v8, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x2

    goto/16 :goto_0

    :sswitch_3
    array-length v2, v4

    if-le v8, v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    invoke-static {v4, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    iput v2, p1, Loicq/wlogin_sdk/a/j;->s:I

    array-length v2, v4

    if-le v9, v2, :cond_13

    move v0, v1

    goto/16 :goto_0

    :cond_13
    invoke-static {v4, v8}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    iput v1, p1, Loicq/wlogin_sdk/a/j;->t:I

    goto/16 :goto_0

    :sswitch_4
    iput v7, p1, Loicq/wlogin_sdk/a/j;->s:I

    iput v7, p1, Loicq/wlogin_sdk/a/j;->t:I

    goto/16 :goto_0

    :sswitch_5
    array-length v2, v4

    if-le v8, v2, :cond_14

    move v0, v1

    goto/16 :goto_0

    :cond_14
    invoke-static {v4, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    iput v2, p1, Loicq/wlogin_sdk/a/j;->s:I

    array-length v2, v4

    if-le v9, v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    invoke-static {v4, v8}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    iput v1, p1, Loicq/wlogin_sdk/a/j;->t:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_2
        0x1f -> :sswitch_4
        0x2c -> :sswitch_2
    .end sparse-switch
.end method

.method public static b([BLoicq/wlogin_sdk/a/j;)I
    .locals 6

    const/4 v5, 0x0

    const/16 v1, -0x3f1

    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v2

    aget v0, v2, v5

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    array-length v3, p0

    if-le v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    iput v0, p1, Loicq/wlogin_sdk/a/j;->d:I

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    if-le v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    add-int v3, v0, v2

    array-length v4, p0

    if-le v3, v4, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    new-array v3, v2, [B

    iput-object v3, p1, Loicq/wlogin_sdk/a/j;->e:[B

    iget-object v3, p1, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-static {p0, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x2

    array-length v3, p0

    if-le v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    add-int v3, v0, v2

    array-length v4, p0

    if-le v3, v4, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    new-array v3, v2, [B

    iput-object v3, p1, Loicq/wlogin_sdk/a/j;->f:[B

    iget-object v3, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-static {p0, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    iget-object v4, p1, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    invoke-static {v2, p0, v0, v3, v4}, Loicq/wlogin_sdk/tools/c;->a(I[BIILjava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parser tlv failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private static b([B)[I
    .locals 8

    const/4 v2, 0x3

    const/16 v7, -0x3f1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    array-length v0, p0

    if-le v5, v0, :cond_0

    new-array v0, v6, [I

    aput v7, v0, v4

    aput v4, v0, v5

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    if-le v2, v0, :cond_1

    new-array v0, v6, [I

    aput v7, v0, v4

    aput v5, v0, v5

    goto :goto_0

    :cond_1
    invoke-static {p0, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    array-length v1, p0

    if-eq v0, v1, :cond_2

    new-array v0, v6, [I

    aput v7, v0, v4

    aput v2, v0, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    array-length v1, p0

    if-le v0, v1, :cond_3

    new-array v0, v6, [I

    aput v7, v0, v4

    aput v2, v0, v5

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    const/16 v0, 0x8

    array-length v2, p0

    if-le v0, v2, :cond_4

    new-array v0, v6, [I

    aput v7, v0, v4

    aput v1, v0, v5

    goto :goto_0

    :cond_4
    invoke-static {p0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    const/16 v1, 0x8

    add-int/lit8 v2, v0, 0x8

    array-length v3, p0

    if-le v2, v3, :cond_5

    new-array v0, v6, [I

    aput v7, v0, v4

    aput v1, v0, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v0, 0x8

    new-array v0, v6, [I

    aput v4, v0, v4

    aput v1, v0, v5

    goto :goto_0
.end method

.method public static c([BLoicq/wlogin_sdk/a/j;)I
    .locals 12

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/16 v2, -0x3f1

    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v0

    aget v1, v0, v3

    aget v0, v0, v7

    if-ne v1, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v4, v0, 0x1

    array-length v5, p0

    if-le v4, v5, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v4

    iput v4, p1, Loicq/wlogin_sdk/a/j;->d:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v0, 0x1

    array-length v5, p0

    if-le v4, v5, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v4

    add-int/lit8 v0, v0, 0x1

    add-int v5, v0, v4

    array-length v6, p0

    if-le v5, v6, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    new-array v5, v4, [B

    invoke-static {p0, v0, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, v0, v4

    iget v0, p1, Loicq/wlogin_sdk/a/j;->d:I

    if-nez v0, :cond_f

    iget-object v0, p1, Loicq/wlogin_sdk/a/j;->j:[B

    if-eqz v0, :cond_4

    iget-object v0, p1, Loicq/wlogin_sdk/a/j;->j:[B

    array-length v0, v0

    if-gtz v0, :cond_5

    :cond_4
    sget-object v0, Loicq/wlogin_sdk/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_1
    array-length v4, v5

    invoke-static {v5, v3, v4, v0}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v5

    if-nez v5, :cond_6

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p1, Loicq/wlogin_sdk/a/j;->j:[B

    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v0

    goto :goto_1

    :cond_6
    array-length v0, v5

    if-le v7, v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    invoke-static {v5, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    array-length v7, v5

    if-le v4, v7, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v0, 0x8

    array-length v7, v5

    if-le v4, v7, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v8

    iput-wide v8, p1, Loicq/wlogin_sdk/a/j;->u:J

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v0, 0x2

    array-length v7, v5

    if-le v4, v7, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v4

    add-int/lit8 v0, v0, 0x2

    add-int v7, v0, v4

    array-length v8, v5

    if-le v7, v8, :cond_b

    move v0, v2

    goto/16 :goto_0

    :cond_b
    new-array v7, v4, [B

    iput-object v7, p1, Loicq/wlogin_sdk/a/j;->v:[B

    iget-object v7, p1, Loicq/wlogin_sdk/a/j;->v:[B

    invoke-static {v5, v0, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    add-int/lit8 v4, v0, 0x1

    array-length v7, v5

    if-le v4, v7, :cond_c

    move v0, v2

    goto/16 :goto_0

    :cond_c
    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v7

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    move v0, v3

    :goto_2
    if-ge v0, v7, :cond_f

    add-int/lit8 v8, v4, 0x2

    array-length v9, v5

    if-le v8, v9, :cond_d

    move v0, v2

    goto/16 :goto_0

    :cond_d
    invoke-static {v5, v4}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5, v4}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v9

    add-int/lit8 v4, v4, 0x1

    add-int v10, v4, v9

    array-length v11, v5

    if-le v10, v11, :cond_e

    move v0, v2

    goto/16 :goto_0

    :cond_e
    sparse-switch v8, :sswitch_data_0

    :goto_3
    add-int/2addr v4, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_0
    new-array v8, v9, [B

    iput-object v8, p1, Loicq/wlogin_sdk/a/j;->w:[B

    iget-object v8, p1, Loicq/wlogin_sdk/a/j;->w:[B

    invoke-static {v5, v4, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :sswitch_1
    new-array v8, v9, [B

    invoke-static {v5, v4, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v10

    sput-wide v10, Loicq/wlogin_sdk/a/j;->y:J

    goto :goto_3

    :cond_f
    add-int/lit8 v0, v6, 0x1

    array-length v4, p0

    if-le v0, v4, :cond_10

    move v0, v2

    goto/16 :goto_0

    :cond_10
    invoke-static {p0, v6}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    add-int/lit8 v4, v6, 0x1

    add-int v5, v4, v0

    array-length v6, p0

    if-le v5, v6, :cond_11

    move v0, v2

    goto/16 :goto_0

    :cond_11
    new-array v5, v0, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->e:[B

    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-static {p0, v4, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    add-int/lit8 v4, v0, 0x2

    array-length v5, p0

    if-le v4, v5, :cond_12

    move v0, v2

    goto/16 :goto_0

    :cond_12
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v4

    add-int/lit8 v0, v0, 0x2

    add-int v5, v0, v4

    array-length v6, p0

    if-le v5, v6, :cond_13

    move v0, v2

    goto/16 :goto_0

    :cond_13
    new-array v2, v4, [B

    iput-object v2, p1, Loicq/wlogin_sdk/a/j;->f:[B

    iget-object v2, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static d([BLoicq/wlogin_sdk/a/j;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v1, -0x3f1

    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v2

    aget v0, v2, v6

    aget v2, v2, v7

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    if-le v3, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v3

    iput v3, p1, Loicq/wlogin_sdk/a/j;->d:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x2

    array-length v4, p0

    if-le v3, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    add-int v4, v2, v3

    array-length v5, p0

    if-le v4, v5, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    new-array v4, v3, [B

    iput-object v4, p1, Loicq/wlogin_sdk/a/j;->f:[B

    iget-object v4, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-static {p0, v2, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x2

    array-length v4, p0

    if-gt v3, v4, :cond_0

    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    add-int v4, v2, v3

    array-length v5, p0

    if-le v4, v5, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    if-lez v3, :cond_0

    add-int/lit8 v1, v3, 0x2

    new-array v1, v1, [B

    invoke-static {p0, v2, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    const/16 v2, 0x28

    aput-byte v2, v1, v6

    add-int/lit8 v2, v3, 0x1

    const/16 v3, 0x29

    aput-byte v3, v1, v2

    iget-object v2, p1, Loicq/wlogin_sdk/a/j;->f:[B

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "\u3002"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u3002"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p1, Loicq/wlogin_sdk/a/j;->f:[B

    goto :goto_0
.end method

.method public static e([BLoicq/wlogin_sdk/a/j;)I
    .locals 9

    const/4 v4, 0x1

    const/16 v1, -0x3f1

    const/4 v2, 0x0

    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v3

    aget v0, v3, v2

    aget v3, v3, v4

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    array-length v4, p0

    sub-int/2addr v4, v3

    invoke-direct {v0, p0, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput v4, p1, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    if-eqz v4, :cond_2

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    const/4 v5, 0x0

    array-length v6, v4

    iget-object v7, p1, Loicq/wlogin_sdk/a/j;->l:[B

    invoke-static {v4, v5, v6, v7}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "no tlv in rsp"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v5

    const/4 v6, 0x1

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p1, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    invoke-static {v5, v4, v6, v7, v8}, Loicq/wlogin_sdk/tools/c;->a(I[BIILjava/util/Map;)I

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parser tlv failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    new-array v4, v4, [B

    iput-object v4, p1, Loicq/wlogin_sdk/a/j;->e:[B

    iget-object v4, p1, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    if-eqz v4, :cond_3

    new-array v5, v4, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-virtual {v3, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    if-eq v5, v4, :cond_3

    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse0x10Rsp failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    goto/16 :goto_0
.end method

.method public static f([BLoicq/wlogin_sdk/a/j;)I
    .locals 9

    const/4 v4, 0x1

    const/16 v1, -0x3f1

    const/4 v2, 0x0

    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v3

    aget v0, v3, v2

    aget v3, v3, v4

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    array-length v4, p0

    sub-int/2addr v4, v3

    invoke-direct {v0, p0, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput v4, p1, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    if-eqz v4, :cond_2

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    const/4 v5, 0x0

    array-length v6, v4

    iget-object v7, p1, Loicq/wlogin_sdk/a/j;->l:[B

    invoke-static {v4, v5, v6, v7}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "no tlv in rsp"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v5

    const/4 v6, 0x1

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p1, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    invoke-static {v5, v4, v6, v7, v8}, Loicq/wlogin_sdk/tools/c;->a(I[BIILjava/util/Map;)I

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parser tlv failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    new-array v4, v4, [B

    iput-object v4, p1, Loicq/wlogin_sdk/a/j;->e:[B

    iget-object v4, p1, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    if-eqz v4, :cond_3

    new-array v5, v4, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-virtual {v3, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    if-eq v5, v4, :cond_3

    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse0x11Rsp failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Loicq/wlogin_sdk/a/c;->b:I

    return v0
.end method

.method public a([B)[B
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget v0, p0, Loicq/wlogin_sdk/a/c;->a:I

    add-int/lit8 v0, v0, 0x2

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x2

    invoke-static {v0, v4, v1}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/a/c;->a:I

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    iget v1, p0, Loicq/wlogin_sdk/a/c;->e:I

    invoke-static {v0, v5, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v1, 0x5

    iget v2, p0, Loicq/wlogin_sdk/a/c;->b:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v1, 0x7

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/16 v1, 0x8

    invoke-static {v0, v1, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v1, 0xc

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v0, v1, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v1, v1, 0x1

    return-object v0
.end method

.method public a([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v0

    return-object v0
.end method
