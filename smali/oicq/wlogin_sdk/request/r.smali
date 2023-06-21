.class public Loicq/wlogin_sdk/request/r;
.super Loicq/wlogin_sdk/request/oicq_request;


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/r;->t:I

    const/4 v0, 0x3

    iput v0, p0, Loicq/wlogin_sdk/request/r;->u:I

    const-string v0, "wtlogin.login"

    iput-object v0, p0, Loicq/wlogin_sdk/request/r;->v:Ljava/lang/String;

    iput-object p1, p0, Loicq/wlogin_sdk/request/r;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, p0, Loicq/wlogin_sdk/request/r;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    return-void
.end method


# virtual methods
.method public a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 17

    sget v12, Loicq/wlogin_sdk/request/u;->w:I

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/r;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v4

    iget-object v4, v4, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    if-nez v4, :cond_3

    new-instance v4, Loicq/wlogin_sdk/b/g;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/g;-><init>()V

    move-object v15, v4

    :goto_0
    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_1
    invoke-virtual {v15}, Loicq/wlogin_sdk/b/g;->c()[B

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Loicq/wlogin_sdk/request/r;->a([BII[J)[B

    move-result-object v14

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/r;->i:I

    move-object/from16 v0, p0

    iget v6, v0, Loicq/wlogin_sdk/request/r;->t:I

    move-object/from16 v0, p0

    iget v7, v0, Loicq/wlogin_sdk/request/r;->j:I

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/r;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v4, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/r;->m:I

    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/r;->n:I

    move-object/from16 v0, p0

    iget v13, v0, Loicq/wlogin_sdk/request/r;->p:I

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Loicq/wlogin_sdk/request/r;->a(IIIJIIII[B)V

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/r;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v5, v1}, Loicq/wlogin_sdk/request/r;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    if-eqz v4, :cond_0

    :goto_2
    return v4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/r;->b()I

    move-result v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retry num:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ret:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/r;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb4

    if-eq v5, v4, :cond_1

    move v4, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v16, 0x1

    const/4 v6, 0x1

    move/from16 v0, v16

    if-lt v0, v6, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move/from16 v16, v4

    goto/16 :goto_1

    :cond_3
    move-object v15, v4

    goto/16 :goto_0
.end method

.method public a([BII[J)[B
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Loicq/wlogin_sdk/b/cr;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/cr;-><init>()V

    new-instance v1, Loicq/wlogin_sdk/b/g;

    invoke-direct {v1}, Loicq/wlogin_sdk/b/g;-><init>()V

    new-instance v2, Loicq/wlogin_sdk/b/u;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/u;-><init>()V

    sget v3, Loicq/wlogin_sdk/request/u;->u:I

    invoke-virtual {v0, v5, v3, v5}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v0

    invoke-virtual {v1, p1}, Loicq/wlogin_sdk/b/g;->a([B)[B

    move-result-object v1

    invoke-virtual {v2, p2, p3, p4}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v2

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v5

    array-length v4, v1

    invoke-static {v1, v5, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, v2

    invoke-static {v2, v5, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v2

    add-int/2addr v0, v1

    const/4 v0, 0x3

    iget v1, p0, Loicq/wlogin_sdk/request/r;->u:I

    invoke-virtual {p0, v3, v1, v0}, Loicq/wlogin_sdk/request/r;->b([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public d([BII)I
    .locals 9

    new-instance v2, Loicq/wlogin_sdk/b/g;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/g;-><init>()V

    new-instance v3, Loicq/wlogin_sdk/b/h;

    invoke-direct {v3}, Loicq/wlogin_sdk/b/h;-><init>()V

    new-instance v4, Loicq/wlogin_sdk/b/az;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/az;-><init>()V

    new-instance v5, Loicq/wlogin_sdk/b/ax;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/ax;-><init>()V

    iget-object v0, p0, Loicq/wlogin_sdk/request/r;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v6

    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, p1, v0}, Loicq/wlogin_sdk/request/r;->c([BI)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, p2, 0x5

    sparse-switch v1, :sswitch_data_0

    iget v0, p0, Loicq/wlogin_sdk/request/r;->c:I

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v7, v0}, Loicq/wlogin_sdk/request/r;->c([BII)V

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Loicq/wlogin_sdk/request/r;->c:I

    sub-int/2addr v0, v7

    invoke-virtual {v2, p1, v7, v0}, Loicq/wlogin_sdk/b/g;->c([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iput-object v2, v6, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    iget v0, p0, Loicq/wlogin_sdk/request/r;->c:I

    sub-int/2addr v0, v7

    invoke-virtual {v3, p1, v7, v0}, Loicq/wlogin_sdk/b/h;->c([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iput-object v3, v6, Loicq/wlogin_sdk/request/async_context;->_t105:Loicq/wlogin_sdk/b/h;

    iget v0, p0, Loicq/wlogin_sdk/request/r;->c:I

    sub-int/2addr v0, v7

    invoke-virtual {v4, p1, v7, v0}, Loicq/wlogin_sdk/b/az;->c([BII)I

    move-result v0

    if-ltz v0, :cond_1

    iput-object v4, v6, Loicq/wlogin_sdk/request/async_context;->_t165:Loicq/wlogin_sdk/b/az;

    :goto_1
    const/4 v0, 0x0

    check-cast v0, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/r;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Loicq/wlogin_sdk/b/az;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/az;-><init>()V

    iput-object v0, v6, Loicq/wlogin_sdk/request/async_context;->_t165:Loicq/wlogin_sdk/b/az;

    goto :goto_1

    :sswitch_1
    iget v0, p0, Loicq/wlogin_sdk/request/r;->c:I

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, p1, v7, v0}, Loicq/wlogin_sdk/b/ax;->c([BII)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v5}, Loicq/wlogin_sdk/request/r;->a(Loicq/wlogin_sdk/b/ax;)I

    iget v0, p0, Loicq/wlogin_sdk/request/r;->c:I

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v7, v0}, Loicq/wlogin_sdk/request/r;->c([BII)V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xb4 -> :sswitch_1
    .end sparse-switch
.end method
