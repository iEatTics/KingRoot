.class public Loicq/wlogin_sdk/request/s;
.super Loicq/wlogin_sdk/request/oicq_request;


# static fields
.field static I:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Loicq/wlogin_sdk/request/s;->I:I

    return-void
.end method

.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/s;->t:I

    const/16 v0, 0x8

    iput v0, p0, Loicq/wlogin_sdk/request/s;->u:I

    const-string v0, "wtlogin.login"

    iput-object v0, p0, Loicq/wlogin_sdk/request/s;->v:Ljava/lang/String;

    iput-object p1, p0, Loicq/wlogin_sdk/request/s;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, p0, Loicq/wlogin_sdk/request/s;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    return-void
.end method


# virtual methods
.method public a(JII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 17

    sget v10, Loicq/wlogin_sdk/request/u;->w:I

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/s;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v3

    iget-object v2, v3, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    if-nez v2, :cond_4

    new-instance v2, Loicq/wlogin_sdk/b/g;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/g;-><init>()V

    move-object v13, v2

    :goto_0
    iget-object v2, v3, Loicq/wlogin_sdk/request/async_context;->_t174:Loicq/wlogin_sdk/b/bj;

    if-nez v2, :cond_3

    new-instance v2, Loicq/wlogin_sdk/b/bj;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/bj;-><init>()V

    move-object v14, v2

    :goto_1
    const/4 v2, 0x0

    move v15, v2

    :goto_2
    invoke-virtual {v13}, Loicq/wlogin_sdk/b/g;->c()[B

    move-result-object v3

    invoke-virtual {v14}, Loicq/wlogin_sdk/b/bj;->c()[B

    move-result-object v6

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Loicq/wlogin_sdk/request/s;->a([BJ[BII[J)[B

    move-result-object v12

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/s;->i:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/s;->t:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/s;->j:I

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/s;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v2, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/s;->m:I

    move-object/from16 v0, p0

    iget v9, v0, Loicq/wlogin_sdk/request/s;->n:I

    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/s;->p:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/s;->a(IIIJIIII[B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/s;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v3, v1}, Loicq/wlogin_sdk/request/s;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_3
    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/s;->b()I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry num:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/s;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb4

    if-eq v3, v2, :cond_1

    move v2, v3

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v15, 0x1

    const/4 v4, 0x1

    if-lt v15, v4, :cond_2

    move v2, v3

    goto :goto_3

    :cond_2
    move v15, v2

    goto/16 :goto_2

    :cond_3
    move-object v14, v2

    goto/16 :goto_1

    :cond_4
    move-object v13, v2

    goto/16 :goto_0
.end method

.method public a([BJ[BII[J)[B
    .locals 14

    new-instance v3, Loicq/wlogin_sdk/b/cr;

    invoke-direct {v3}, Loicq/wlogin_sdk/b/cr;-><init>()V

    new-instance v4, Loicq/wlogin_sdk/b/g;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/g;-><init>()V

    new-instance v5, Loicq/wlogin_sdk/b/u;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/u;-><init>()V

    new-instance v6, Loicq/wlogin_sdk/b/bj;

    invoke-direct {v6}, Loicq/wlogin_sdk/b/bj;-><init>()V

    new-instance v7, Loicq/wlogin_sdk/b/bn;

    invoke-direct {v7}, Loicq/wlogin_sdk/b/bn;-><init>()V

    new-instance v8, Loicq/wlogin_sdk/b/b;

    const/16 v9, 0x197

    invoke-direct {v8, v9}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    const/4 v9, 0x0

    sget v10, Loicq/wlogin_sdk/request/u;->u:I

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v10, v11}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v3

    invoke-virtual {v4, p1}, Loicq/wlogin_sdk/b/g;->a([B)[B

    move-result-object v4

    move/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual {v5, v0, v1, v2}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Loicq/wlogin_sdk/b/bj;->a([B)[B

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Loicq/wlogin_sdk/b/bn;->a(J)[B

    move-result-object v7

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    sget v11, Loicq/wlogin_sdk/request/s;->I:I

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Loicq/wlogin_sdk/b/b;->b([BI)V

    invoke-virtual {v8}, Loicq/wlogin_sdk/b/b;->b()[B

    move-result-object v8

    array-length v9, v3

    array-length v10, v4

    add-int/2addr v9, v10

    array-length v10, v5

    add-int/2addr v9, v10

    array-length v10, v6

    add-int/2addr v9, v10

    array-length v10, v7

    add-int/2addr v9, v10

    array-length v10, v8

    add-int/2addr v9, v10

    new-array v9, v9, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v3

    invoke-static {v3, v11, v9, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v10

    const/4 v10, 0x0

    array-length v11, v4

    invoke-static {v4, v10, v9, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    array-length v10, v5

    invoke-static {v5, v4, v9, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x0

    array-length v5, v6

    invoke-static {v6, v4, v9, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v6

    add-int/2addr v3, v4

    const/4 v4, 0x0

    array-length v5, v7

    invoke-static {v7, v4, v9, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v7

    add-int/2addr v3, v4

    const/4 v4, 0x0

    array-length v5, v8

    invoke-static {v8, v4, v9, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v8

    add-int/2addr v3, v4

    const/4 v3, 0x6

    iget v4, p0, Loicq/wlogin_sdk/request/s;->u:I

    invoke-virtual {p0, v9, v4, v3}, Loicq/wlogin_sdk/request/s;->b([BII)[B

    move-result-object v3

    return-object v3
.end method

.method public d([BII)I
    .locals 8

    new-instance v2, Loicq/wlogin_sdk/b/g;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/g;-><init>()V

    new-instance v3, Loicq/wlogin_sdk/b/bo;

    invoke-direct {v3}, Loicq/wlogin_sdk/b/bo;-><init>()V

    new-instance v4, Loicq/wlogin_sdk/b/ax;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ax;-><init>()V

    iget-object v0, p0, Loicq/wlogin_sdk/request/s;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v5

    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, p1, v0}, Loicq/wlogin_sdk/request/s;->c([BI)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, p2, 0x5

    sparse-switch v1, :sswitch_data_0

    iget v0, p0, Loicq/wlogin_sdk/request/s;->c:I

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v6, v0}, Loicq/wlogin_sdk/request/s;->c([BII)V

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Loicq/wlogin_sdk/request/s;->c:I

    sub-int/2addr v0, v6

    invoke-virtual {v2, p1, v6, v0}, Loicq/wlogin_sdk/b/g;->c([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iput-object v2, v5, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    iget v0, p0, Loicq/wlogin_sdk/request/s;->c:I

    sub-int/2addr v0, v6

    invoke-virtual {v3, p1, v6, v0}, Loicq/wlogin_sdk/b/bo;->c([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iput-object v3, v5, Loicq/wlogin_sdk/request/async_context;->_t17b:Loicq/wlogin_sdk/b/bo;

    const/4 v0, 0x0

    check-cast v0, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/s;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v0, p0, Loicq/wlogin_sdk/request/s;->c:I

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, p1, v6, v0}, Loicq/wlogin_sdk/b/ax;->c([BII)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v4}, Loicq/wlogin_sdk/request/s;->a(Loicq/wlogin_sdk/b/ax;)I

    iget v0, p0, Loicq/wlogin_sdk/request/s;->c:I

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v6, v0}, Loicq/wlogin_sdk/request/s;->c([BII)V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0xb4 -> :sswitch_1
    .end sparse-switch
.end method
