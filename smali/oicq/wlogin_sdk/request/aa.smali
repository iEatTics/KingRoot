.class public Loicq/wlogin_sdk/request/aa;
.super Loicq/wlogin_sdk/request/oicq_request;


# instance fields
.field public I:I

.field public J:I


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/request/aa;->I:I

    const/4 v0, 0x5

    iput v0, p0, Loicq/wlogin_sdk/request/aa;->J:I

    const/16 v0, 0x812

    iput v0, p0, Loicq/wlogin_sdk/request/aa;->t:I

    iput v1, p0, Loicq/wlogin_sdk/request/aa;->u:I

    const-string v0, "wtlogin.trans_emp"

    iput-object v0, p0, Loicq/wlogin_sdk/request/aa;->v:Ljava/lang/String;

    iput-object p1, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget v0, v0, Loicq/wlogin_sdk/request/u;->m:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(JLoicq/wlogin_sdk/request/TransReqContext;[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 13

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    sget v2, Loicq/wlogin_sdk/request/u;->w:I

    const/4 v2, 0x0

    move v11, v2

    move v2, v3

    :goto_0
    move-object/from16 v0, p3

    iget-object v3, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Loicq/wlogin_sdk/request/u;->ac:J

    add-long/2addr v6, v4

    if-nez v3, :cond_8

    const/4 v3, 0x0

    new-array v3, v3, [B

    move-object v4, v3

    :goto_1
    array-length v3, v4

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    const/4 v5, 0x0

    invoke-static {v3, v5, v6, v7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    array-length v7, v4

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p4, :cond_0

    const/4 v4, 0x0

    array-length v5, v3

    move-object/from16 v0, p5

    invoke-static {v3, v4, v5, v0}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_7

    array-length v4, v3

    if-lez v4, :cond_7

    sget-object v2, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    move-object/from16 v0, p3

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicketKey:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicketKey:[B

    array-length v2, v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicket:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicket:[B

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    move-object/from16 v0, p3

    iput-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    sget-object v2, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    const v4, 0x24d3bf

    invoke-virtual {v2, v4}, Loicq/wlogin_sdk/report/report_t1;->attr_api(I)V

    const-string v2, "using wt st encrypt body but no st key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_4

    const/4 v4, 0x1

    :goto_2
    move-object v2, p0

    move-object/from16 v5, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/aa;->a([BZ[BJJLoicq/wlogin_sdk/request/TransReqContext;)[B

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    invoke-virtual {p0, p1, p2, v2, v3}, Loicq/wlogin_sdk/request/aa;->a(J[BLoicq/wlogin_sdk/request/oicq_request$EncryptionMethod;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p10

    invoke-virtual {p0, v2, v3, v0}, Loicq/wlogin_sdk/request/aa;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request_transport rsp: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/aa;->a(Loicq/wlogin_sdk/request/TransReqContext;)I

    move-result v2

    if-nez v2, :cond_6

    if-eqz p4, :cond_6

    invoke-virtual/range {p3 .. p3}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    move-object/from16 v0, p5

    invoke-static {v3, v4, v5, v0}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Loicq/wlogin_sdk/request/TransReqContext;->set_body([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    :cond_7
    add-int/lit8 v3, v11, 0x1

    const/4 v4, 0x1

    if-ge v11, v4, :cond_3

    move v11, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_8
    move-object v4, v3

    goto/16 :goto_1
.end method

.method public declared-synchronized a(JLoicq/wlogin_sdk/request/TransReqContext;[B[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 21

    monitor-enter p0

    const/16 v19, 0x0

    :try_start_0
    sget v20, Loicq/wlogin_sdk/request/u;->w:I

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v2, v2

    int-to-long v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/aa;->E:I

    add-int/lit8 v5, v2, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Loicq/wlogin_sdk/request/aa;->E:I

    int-to-long v5, v2

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    new-instance v2, Ljava/lang/String;

    const-string v8, "wtlogin_conn_trans"

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v2, 0x8

    new-array v14, v2, [B

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    sget-object v18, Loicq/wlogin_sdk/request/u;->A:[B

    move-object/from16 v2, p0

    move-wide/from16 v8, p7

    move-wide/from16 v10, p7

    move-object/from16 v12, p6

    invoke-virtual/range {v2 .. v18}, Loicq/wlogin_sdk/request/aa;->a(JJ[BJJ[B[B[BIJ[B)[B

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Loicq/wlogin_sdk/request/u;->ac:J

    add-long/2addr v6, v4

    if-nez v3, :cond_1

    const/4 v2, 0x0

    new-array v4, v2, [B

    :goto_0
    if-eqz v4, :cond_4

    array-length v2, v4

    if-lez v2, :cond_4

    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/aa;->a([B[BJJI)[B

    move-result-object v12

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/aa;->i:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/aa;->t:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/aa;->j:I

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/aa;->m:I

    move-object/from16 v0, p0

    iget v9, v0, Loicq/wlogin_sdk/request/aa;->n:I

    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/aa;->p:I

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move/from16 v10, v20

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(IIIJIIII[B)V

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-virtual {v0, v2, v3, v1}, Loicq/wlogin_sdk/request/aa;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_1
    monitor-exit p0

    return v2

    :cond_1
    if-nez p4, :cond_2

    :try_start_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x4

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-static {v4, v5, v6, v7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    array-length v7, v2

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    array-length v6, v3

    invoke-static {v3, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    array-length v4, v2

    add-int/lit8 v4, v4, 0x4

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-static {v4, v5, v6, v7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    array-length v7, v2

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    array-length v6, v3

    invoke-static {v3, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    array-length v3, v4

    move-object/from16 v0, p5

    invoke-static {v4, v2, v3, v0}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v4

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/aa;->a(Loicq/wlogin_sdk/request/TransReqContext;)I

    move-result v2

    if-nez v2, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual/range {p3 .. p3}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    move-object/from16 v0, p5

    invoke-static {v3, v4, v5, v0}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Loicq/wlogin_sdk/request/TransReqContext;->set_body([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    move/from16 v2, v19

    goto :goto_1
.end method

.method public declared-synchronized a(J[B[B[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 19

    monitor-enter p0

    const/4 v13, 0x0

    :try_start_0
    sget v14, Loicq/wlogin_sdk/request/u;->w:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sget-wide v4, Loicq/wlogin_sdk/request/u;->ac:J

    add-long v16, v2, v4

    sget-object v2, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Loicq/wlogin_sdk/request/u;->G:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, ""

    sget-object v6, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->get_ksid(Landroid/content/Context;)[B

    move-result-object v6

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    sget-object v8, Loicq/wlogin_sdk/request/u;->E:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Loicq/wlogin_sdk/request/u;->Q:[B

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v9, Ljava/lang/String;

    sget-object v10, Loicq/wlogin_sdk/request/u;->I:[B

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    new-instance v10, Ljava/lang/String;

    sget-object v11, Loicq/wlogin_sdk/request/u;->H:[B

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_release_time()Ljava/lang/String;

    move-result-object v11

    const-string v12, "6.0.0.2003"

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/report/report_t1;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    invoke-virtual {v2}, Loicq/wlogin_sdk/report/report_t1;->toJasonObj()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    array-length v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1

    :cond_0
    move v2, v13

    :goto_1
    monitor-exit p0

    return v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_3
    new-array v2, v2, [B

    goto :goto_0

    :cond_1
    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->compress([B)[B

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_3

    :cond_2
    move v2, v13

    goto :goto_1

    :cond_3
    array-length v3, v2

    add-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    const/4 v4, 0x0

    move-wide/from16 v0, v16

    invoke-static {v3, v4, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v4, 0x6

    array-length v5, v2

    invoke-static {v3, v4, v5}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    array-length v6, v2

    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    array-length v4, v3

    move-object/from16 v0, p5

    invoke-static {v3, v2, v4, v0}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v2, v4

    if-nez v2, :cond_5

    :cond_4
    move v2, v13

    goto :goto_1

    :cond_5
    sget-object v2, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/report/report_t;->delete_file(Landroid/content/Context;)V

    const-wide/16 v8, 0x55

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/aa;->a([B[BJJI)[B

    move-result-object v12

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/aa;->i:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/aa;->t:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/aa;->j:I

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/aa;->m:I

    move-object/from16 v0, p0

    iget v9, v0, Loicq/wlogin_sdk/request/aa;->n:I

    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/aa;->p:I

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move v10, v14

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(IIIJIIII[B)V

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v3, v1}, Loicq/wlogin_sdk/request/aa;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    if-eqz v2, :cond_7

    sget-object v3, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    sget-object v4, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v3, v4}, Loicq/wlogin_sdk/report/report_t;->write_tofile(Loicq/wlogin_sdk/report/report_t1;Landroid/content/Context;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/aa;->b()I

    move-result v2

    goto :goto_2

    :cond_7
    sget-object v3, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    invoke-virtual {v3}, Loicq/wlogin_sdk/report/report_t1;->clear_t2()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public a(Loicq/wlogin_sdk/request/TransReqContext;)I
    .locals 4

    iget v0, p0, Loicq/wlogin_sdk/request/aa;->c:I

    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_1

    const/16 v0, -0x3f1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Loicq/wlogin_sdk/request/aa;->g:I

    iget-object v0, p1, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    sget-object v1, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget v0, v0, Loicq/wlogin_sdk/request/u;->m:I

    if-nez v0, :cond_3

    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/aa;->g:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->p:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/aa;->a([BII[B)I

    move-result v0

    if-gez v0, :cond_2

    const-string v0, "use ecdh decrypt_body failed"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/aa;->g:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/aa;->a([BII[B)I

    move-result v0

    if-gez v0, :cond_2

    const-string v1, "use kc decrypt_body failed"

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-ltz v0, :cond_0

    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/aa;->g:I

    invoke-virtual {p0, v0, v1, v2, p1}, Loicq/wlogin_sdk/request/aa;->a([BIILoicq/wlogin_sdk/request/TransReqContext;)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/aa;->g:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/aa;->a([BII[B)I

    move-result v0

    if-gez v0, :cond_2

    const-string v1, "use kc decrypt_body failed"

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p1, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    sget-object v1, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/aa;->g:I

    iget-object v3, p1, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicketKey:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/aa;->a([BII[B)I

    move-result v0

    if-gez v0, :cond_2

    const-string v1, "use session key decrypt_body failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown encryption method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x400

    goto :goto_1
.end method

.method public a([BIILoicq/wlogin_sdk/request/TransReqContext;)I
    .locals 5

    iget v0, p0, Loicq/wlogin_sdk/request/aa;->J:I

    if-ge p3, v0, :cond_0

    const/16 v1, -0x3f1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Loicq/wlogin_sdk/request/aa;->c([BI)I

    move-result v1

    const/4 v0, 0x0

    check-cast v0, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/aa;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget v0, p0, Loicq/wlogin_sdk/request/aa;->J:I

    add-int/2addr v0, p2

    iget v2, p0, Loicq/wlogin_sdk/request/aa;->J:I

    sub-int v2, p3, v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p4, v2}, Loicq/wlogin_sdk/request/TransReqContext;->set_body([B)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Loicq/wlogin_sdk/request/aa;->J:I

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    new-instance v2, Loicq/wlogin_sdk/b/bh;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/bh;-><init>()V

    iget v3, p0, Loicq/wlogin_sdk/request/aa;->c:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, p1, v0, v3}, Loicq/wlogin_sdk/b/bh;->c([BII)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    const/4 v3, 0x2

    iput v3, v0, Loicq/wlogin_sdk/request/u;->m:I

    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2}, Loicq/wlogin_sdk/b/bh;->c()[B

    move-result-object v2

    iput-object v2, v0, Loicq/wlogin_sdk/request/u;->r:[B

    const-string v0, "request_transport get rollback sig"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    move v1, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb4 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/net/Socket;)V
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iput-object p1, v0, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    return-void
.end method

.method a(JJ[BJJ[B[B[BIJ[B)[B
    .locals 6

    const/4 v2, 0x0

    if-nez p10, :cond_0

    const/4 v3, 0x0

    new-array v0, v3, [B

    move-object/from16 p10, v0

    :cond_0
    array-length v3, p5

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p10

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p11

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p12

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p16

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    array-length v4, v3

    int-to-long v4, v4

    add-long/2addr v4, p1

    invoke-static {v3, v2, v4, v5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v2, 0x4

    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    add-int/lit8 v4, v4, -0x4

    int-to-long v4, v4

    invoke-static {v3, v2, v4, v5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/16 v2, 0x8

    invoke-static {v3, v2, p3, p4}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/16 v2, 0xc

    array-length v4, p5

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v2, 0x10

    const/4 v4, 0x0

    array-length v5, p5

    invoke-static {p5, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p5

    add-int/lit8 v2, v2, 0x10

    invoke-static {v3, v2, p6, p7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2, p8, p9}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p10

    array-length v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    add-int/lit8 v2, v2, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, p10

    array-length v5, v0

    move-object/from16 v0, p10

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p10

    array-length v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p11

    array-length v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    add-int/lit8 v2, v2, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, p11

    array-length v5, v0

    move-object/from16 v0, p11

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p11

    array-length v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p12

    array-length v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    add-int/lit8 v2, v2, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, p12

    array-length v5, v0

    move-object/from16 v0, p12

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p12

    array-length v4, v0

    add-int/2addr v2, v4

    move/from16 v0, p13

    invoke-static {v3, v2, v0}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v0, p14

    invoke-static {v3, v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p16

    array-length v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    add-int/lit8 v2, v2, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, p16

    array-length v5, v0

    move-object/from16 v0, p16

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p16

    array-length v4, v0

    add-int/2addr v2, v4

    const-wide/16 v4, 0x4

    add-long/2addr v4, p1

    invoke-static {v3, v2, v4, v5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v2, v2, 0x4

    return-object v3
.end method

.method public a([BZ[BJJLoicq/wlogin_sdk/request/TransReqContext;)[B
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_0

    new-array p3, v4, [B

    :cond_0
    if-ne v3, p2, :cond_2

    move v2, v3

    :goto_0
    new-array v5, v4, [B

    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    if-eqz v6, :cond_1

    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    array-length v6, v6

    if-lez v6, :cond_1

    new-instance v5, Loicq/wlogin_sdk/b/bh;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/bh;-><init>()V

    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/b/bh;->a([B)[B

    move-result-object v6

    array-length v5, v6

    add-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    invoke-static {v5, v4, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v7, 0x2

    array-length v8, v6

    invoke-static {v6, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    array-length v6, p3

    add-int/lit8 v6, v6, 0xd

    add-int/lit8 v6, v6, 0x1

    array-length v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Loicq/wlogin_sdk/request/aa;->I:I

    array-length v6, p1

    iget v7, p0, Loicq/wlogin_sdk/request/aa;->I:I

    add-int/2addr v6, v7

    new-array v6, v6, [B

    invoke-static {v6, v4, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    array-length v2, p1

    invoke-static {v6, v3, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v2, 0x3

    invoke-static {v6, v2, p4, p5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v2, 0x7

    move-wide/from16 v0, p6

    invoke-static {v6, v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/16 v2, 0xb

    array-length v3, p3

    invoke-static {v6, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/16 v2, 0xd

    array-length v3, p3

    invoke-static {p3, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p3

    add-int/lit8 v2, v2, 0xd

    array-length v3, v5

    invoke-static {v6, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    array-length v3, v5

    invoke-static {v5, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v5

    add-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    add-int/2addr v2, v3

    move-object/from16 v0, p8

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    move-object/from16 v0, p8

    iget-object v3, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicket:[B

    move-object/from16 v0, p8

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicketKey:[B

    invoke-virtual {p0, v6, v2, v3, v4}, Loicq/wlogin_sdk/request/aa;->a([BLoicq/wlogin_sdk/request/oicq_request$EncryptionMethod;[B[B)[B

    move-result-object v2

    return-object v2

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public a([B[BJJI)[B
    .locals 9

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    new-array p2, v1, [B

    if-nez p7, :cond_1

    move v0, v1

    :goto_0
    new-array v5, v1, [B

    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    if-eqz v6, :cond_0

    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    array-length v6, v6

    if-lez v6, :cond_0

    new-instance v5, Loicq/wlogin_sdk/b/bh;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/bh;-><init>()V

    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/b/bh;->a([B)[B

    move-result-object v6

    array-length v5, v6

    add-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    invoke-static {v5, v1, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    array-length v7, v6

    invoke-static {v6, v1, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    move-object v4, v5

    array-length v5, p2

    add-int/lit8 v5, v5, 0xd

    add-int/lit8 v5, v5, 0x1

    array-length v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Loicq/wlogin_sdk/request/aa;->I:I

    array-length v5, p1

    iget v6, p0, Loicq/wlogin_sdk/request/aa;->I:I

    add-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5, v1, v0}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    array-length v0, p1

    invoke-static {v5, v3, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    invoke-static {v5, v2, p3, p4}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v0, 0x7

    invoke-static {v5, v0, p5, p6}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/16 v0, 0xb

    array-length v2, p2

    invoke-static {v5, v0, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/16 v0, 0xd

    array-length v2, p2

    invoke-static {p2, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p2

    add-int/lit8 v0, v0, 0xd

    array-length v2, v4

    invoke-static {v5, v0, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v0, v0, 0x1

    array-length v2, v4

    invoke-static {v4, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v4

    add-int/2addr v0, v2

    array-length v2, p1

    invoke-static {p1, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v5}, Loicq/wlogin_sdk/request/aa;->a([B)[B

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-nez p7, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method public c(Z)I
    .locals 1

    const/16 v0, 0x1f90

    if-eqz p1, :cond_0

    :cond_0
    return v0
.end method

.method public d([BII)I
    .locals 4

    iget v0, p0, Loicq/wlogin_sdk/request/aa;->J:I

    if-ge p3, v0, :cond_0

    const/16 v0, -0x3f1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Loicq/wlogin_sdk/request/aa;->c([BI)I

    move-result v1

    const/4 v0, 0x0

    check-cast v0, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/aa;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public d()Ljava/net/Socket;
    .locals 3

    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, v0, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    if-eqz v0, :cond_0

    const-string v0, "_transport_sk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_transport_sk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v2, v2, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, v0, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    return-object v0

    :cond_0
    const-string v0, "_transport_sk"

    const-string v1, "_transport_sk null"

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
