.class public Loicq/wlogin_sdk/request/x;
.super Loicq/wlogin_sdk/request/oicq_request;


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/x;->t:I

    const/16 v0, 0x13

    iput v0, p0, Loicq/wlogin_sdk/request/x;->u:I

    const-string v0, "wtlogin.login"

    iput-object v0, p0, Loicq/wlogin_sdk/request/x;->v:Ljava/lang/String;

    iput-object p1, p0, Loicq/wlogin_sdk/request/x;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, p0, Loicq/wlogin_sdk/request/x;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    return-void
.end method


# virtual methods
.method public a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    sget v10, Loicq/wlogin_sdk/request/u;->w:I

    const/4 v2, 0x0

    move v13, v2

    :goto_0
    invoke-virtual/range {p0 .. p3}, Loicq/wlogin_sdk/request/x;->a(II[J)[B

    move-result-object v12

    iget v3, p0, Loicq/wlogin_sdk/request/x;->i:I

    iget v4, p0, Loicq/wlogin_sdk/request/x;->t:I

    iget v5, p0, Loicq/wlogin_sdk/request/x;->j:I

    iget-object v2, p0, Loicq/wlogin_sdk/request/x;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v2, Loicq/wlogin_sdk/request/u;->f:J

    iget v8, p0, Loicq/wlogin_sdk/request/x;->m:I

    iget v9, p0, Loicq/wlogin_sdk/request/x;->n:I

    iget v11, p0, Loicq/wlogin_sdk/request/x;->p:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/x;->a(IIIJIIII[B)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/x;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {p0, v2, v3, v0}, Loicq/wlogin_sdk/request/x;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v2

    :cond_0
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/x;->b()I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry num:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ret:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Loicq/wlogin_sdk/request/x;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb4

    if-eq v3, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v13, 0x1

    const/4 v4, 0x1

    if-lt v13, v4, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v13, v2

    goto :goto_0
.end method

.method public a(II[J)[B
    .locals 11

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v5

    iget-object v0, p0, Loicq/wlogin_sdk/request/x;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v8

    move v4, v3

    move v1, v3

    move v2, v3

    :goto_0
    if-ge v4, v7, :cond_1

    new-array v0, v3, [B

    aget v9, v5, v4

    sparse-switch v9, :sswitch_data_0

    :goto_1
    array-length v9, v0

    const/4 v10, 0x4

    if-le v9, v10, :cond_0

    add-int/lit8 v2, v2, 0x1

    array-length v9, v0

    add-int/2addr v1, v9

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    move v1, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :sswitch_0
    iget-object v0, v8, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/g;->b()[B

    move-result-object v0

    goto :goto_1

    :sswitch_1
    new-instance v0, Loicq/wlogin_sdk/b/cr;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/cr;-><init>()V

    sget v9, Loicq/wlogin_sdk/request/u;->u:I

    invoke-virtual {v0, v3, v9, v3}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v0

    goto :goto_1

    :sswitch_2
    new-instance v0, Loicq/wlogin_sdk/b/u;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/u;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    new-array v5, v1, [B

    move v1, v3

    move v4, v3

    :goto_2
    if-ge v1, v2, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v7, v0

    invoke-static {v0, v3, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v4, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget v0, p0, Loicq/wlogin_sdk/request/x;->u:I

    invoke-virtual {p0, v5, v0, v2}, Loicq/wlogin_sdk/request/x;->b([BII)[B

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x104
        0x8
        0x116
    .end array-data

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x104 -> :sswitch_0
        0x116 -> :sswitch_2
    .end sparse-switch
.end method
