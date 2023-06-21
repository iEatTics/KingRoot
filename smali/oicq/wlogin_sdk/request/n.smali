.class public Loicq/wlogin_sdk/request/n;
.super Loicq/wlogin_sdk/request/oicq_request;


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/n;->t:I

    const/16 v0, 0xa

    iput v0, p0, Loicq/wlogin_sdk/request/n;->u:I

    const-string v0, "wtlogin.exchange_emp"

    iput-object v0, p0, Loicq/wlogin_sdk/request/n;->v:Ljava/lang/String;

    iput-object p1, p0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, p0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    return-void
.end method


# virtual methods
.method public a(JJJII[BII[J[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 27

    const-string v2, "start request_change_sig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget v10, Loicq/wlogin_sdk/request/u;->w:I

    const v2, -0x2000001

    and-int v11, p8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v2

    iput v11, v2, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/n;->i:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/n;->t:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/n;->j:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/n;->m:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/n;->n:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/n;->p:I

    move/from16 v21, v0

    sget-object v16, Loicq/wlogin_sdk/request/u;->aa:[B

    move-object/from16 v0, p14

    iget-object v0, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v17, p13

    invoke-virtual/range {v3 .. v18}, Loicq/wlogin_sdk/request/n;->a(JJJII[BII[J[B[BLjava/util/List;)[B

    move-result-object v22

    move-object/from16 v12, p0

    move/from16 v13, v20

    move/from16 v14, v23

    move/from16 v15, v24

    move-wide/from16 v16, p1

    move/from16 v18, v25

    move/from16 v20, v10

    invoke-virtual/range {v12 .. v22}, Loicq/wlogin_sdk/request/n;->a(IIIJIIII[B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p14

    invoke-virtual {v0, v3, v4, v1}, Loicq/wlogin_sdk/request/n;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v3

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end request_change_sig for user ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/n;->b()I

    move-result v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retry num:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb4

    if-eq v4, v3, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x1

    if-lt v2, v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    goto/16 :goto_0
.end method

.method public a(JJJII[BII[J[B[BLjava/util/List;)[B
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJII[BII[J[B[B",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/n;->u:I

    move/from16 v21, v0

    new-instance v5, Loicq/wlogin_sdk/b/d;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/d;-><init>()V

    new-instance v12, Loicq/wlogin_sdk/b/m;

    invoke-direct {v12}, Loicq/wlogin_sdk/b/m;-><init>()V

    new-instance v13, Loicq/wlogin_sdk/b/u;

    invoke-direct {v13}, Loicq/wlogin_sdk/b/u;-><init>()V

    new-instance v14, Loicq/wlogin_sdk/b/k;

    invoke-direct {v14}, Loicq/wlogin_sdk/b/k;-><init>()V

    new-instance v23, Loicq/wlogin_sdk/b/l;

    invoke-direct/range {v23 .. v23}, Loicq/wlogin_sdk/b/l;-><init>()V

    new-instance v24, Loicq/wlogin_sdk/b/ac;

    invoke-direct/range {v24 .. v24}, Loicq/wlogin_sdk/b/ac;-><init>()V

    new-instance v25, Loicq/wlogin_sdk/b/ag;

    invoke-direct/range {v25 .. v25}, Loicq/wlogin_sdk/b/ag;-><init>()V

    new-instance v26, Loicq/wlogin_sdk/b/an;

    invoke-direct/range {v26 .. v26}, Loicq/wlogin_sdk/b/an;-><init>()V

    new-instance v27, Loicq/wlogin_sdk/b/r;

    invoke-direct/range {v27 .. v27}, Loicq/wlogin_sdk/b/r;-><init>()V

    new-instance v28, Loicq/wlogin_sdk/b/ao;

    invoke-direct/range {v28 .. v28}, Loicq/wlogin_sdk/b/ao;-><init>()V

    new-instance v15, Loicq/wlogin_sdk/b/ap;

    invoke-direct {v15}, Loicq/wlogin_sdk/b/ap;-><init>()V

    new-instance v16, Loicq/wlogin_sdk/b/ar;

    invoke-direct/range {v16 .. v16}, Loicq/wlogin_sdk/b/ar;-><init>()V

    new-instance v17, Loicq/wlogin_sdk/b/am;

    invoke-direct/range {v17 .. v17}, Loicq/wlogin_sdk/b/am;-><init>()V

    new-instance v18, Loicq/wlogin_sdk/b/aw;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/b/aw;-><init>()V

    new-instance v4, Loicq/wlogin_sdk/b/bs;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/bs;-><init>()V

    new-instance v19, Loicq/wlogin_sdk/b/al;

    invoke-direct/range {v19 .. v19}, Loicq/wlogin_sdk/b/al;-><init>()V

    new-instance v20, Loicq/wlogin_sdk/b/cr;

    invoke-direct/range {v20 .. v20}, Loicq/wlogin_sdk/b/cr;-><init>()V

    new-instance v29, Loicq/wlogin_sdk/b/cq;

    invoke-direct/range {v29 .. v29}, Loicq/wlogin_sdk/b/cq;-><init>()V

    new-instance v30, Loicq/wlogin_sdk/b/bf;

    invoke-direct/range {v30 .. v30}, Loicq/wlogin_sdk/b/bf;-><init>()V

    new-instance v31, Loicq/wlogin_sdk/b/bh;

    invoke-direct/range {v31 .. v31}, Loicq/wlogin_sdk/b/bh;-><init>()V

    new-instance v22, Loicq/wlogin_sdk/b/bk;

    invoke-direct/range {v22 .. v22}, Loicq/wlogin_sdk/b/bk;-><init>()V

    new-instance v32, Loicq/wlogin_sdk/b/by;

    invoke-direct/range {v32 .. v32}, Loicq/wlogin_sdk/b/by;-><init>()V

    new-instance v33, Loicq/wlogin_sdk/b/bz;

    invoke-direct/range {v33 .. v33}, Loicq/wlogin_sdk/b/bz;-><init>()V

    new-instance v34, Loicq/wlogin_sdk/b/cd;

    invoke-direct/range {v34 .. v34}, Loicq/wlogin_sdk/b/cd;-><init>()V

    new-instance v35, Loicq/wlogin_sdk/b/ci;

    invoke-direct/range {v35 .. v35}, Loicq/wlogin_sdk/b/ci;-><init>()V

    new-instance v36, Loicq/wlogin_sdk/b/cj;

    invoke-direct/range {v36 .. v36}, Loicq/wlogin_sdk/b/cj;-><init>()V

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v5 .. v11}, Loicq/wlogin_sdk/b/d;->a(JJII)[B

    move-result-object v37

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Loicq/wlogin_sdk/b/m;->a([B)[B

    move-result-object v38

    move/from16 v0, p10

    move/from16 v1, p11

    move-object/from16 v2, p12

    invoke-virtual {v13, v0, v1, v2}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v39

    sget-object v5, Loicq/wlogin_sdk/request/u;->A:[B

    invoke-virtual {v15, v5}, Loicq/wlogin_sdk/b/ap;->a([B)[B

    move-result-object v40

    sget-object v5, Loicq/wlogin_sdk/request/u;->E:[B

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/am;->a([B)[B

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    iget v5, v5, Loicq/wlogin_sdk/request/u;->i:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/aw;->a(I)[B

    move-result-object v42

    const/4 v10, 0x0

    move-wide/from16 v5, p3

    move/from16 v7, p7

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v10}, Loicq/wlogin_sdk/b/bs;->a(JIJI)[B

    move-result-object v43

    sget-object v4, Loicq/wlogin_sdk/request/u;->C:[B

    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    sget-object v6, Loicq/wlogin_sdk/request/u;->F:[B

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6}, Loicq/wlogin_sdk/b/al;->b([BI[B)[B

    move-result-object v44

    const/4 v4, 0x0

    sget v5, Loicq/wlogin_sdk/request/u;->u:I

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v45

    sget-object v4, Loicq/wlogin_sdk/request/u;->G:[B

    sget-object v5, Loicq/wlogin_sdk/request/u;->H:[B

    move-object/from16 v0, v16

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v4, v5}, Loicq/wlogin_sdk/b/ar;->a(J[B[B)[B

    move-result-object v46

    const-wide/32 v4, 0x586b5015

    const-string v6, "6.0.0.2003"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Loicq/wlogin_sdk/b/bk;->a(JLjava/lang/String;)[B

    move-result-object v47

    const/16 v12, 0xa

    const/4 v4, 0x0

    new-array v5, v4, [B

    const/4 v4, 0x0

    new-array v4, v4, [B

    const/4 v4, 0x0

    new-array v4, v4, [B

    const/4 v4, 0x0

    new-array v4, v4, [B

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v48, v0

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v20, v0

    const/4 v4, 0x0

    new-array v4, v4, [B

    const/4 v4, 0x0

    new-array v4, v4, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v7, 0x0

    new-array v7, v7, [B

    const/4 v8, 0x0

    new-array v8, v8, [B

    const/4 v9, 0x0

    new-array v9, v9, [B

    const/4 v10, 0x0

    new-array v10, v10, [B

    const/4 v11, 0x0

    new-array v11, v11, [B

    if-eqz p13, :cond_9

    move-object/from16 v0, p13

    array-length v13, v0

    if-lez v13, :cond_9

    move-object/from16 v0, p13

    invoke-virtual {v14, v0}, Loicq/wlogin_sdk/b/k;->a([B)[B

    move-result-object v5

    const/16 v12, 0xb

    move-object/from16 v22, v5

    move v5, v12

    :goto_0
    if-eqz p15, :cond_8

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_8

    move-object/from16 v0, v29

    move-object/from16 v1, p15

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/b/cq;->a(Ljava/util/List;)[B

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    move-object v12, v4

    move v4, v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->r:[B

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->r:[B

    array-length v5, v5

    if-lez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->r:[B

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/bh;->a([B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object v13, v5

    :goto_2
    sget-object v5, Loicq/wlogin_sdk/request/u;->N:[B

    if-eqz v5, :cond_6

    sget-object v5, Loicq/wlogin_sdk/request/u;->N:[B

    array-length v5, v5

    if-lez v5, :cond_6

    sget-object v5, Loicq/wlogin_sdk/request/u;->N:[B

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/by;->a([B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object v14, v5

    :goto_3
    sget-object v5, Loicq/wlogin_sdk/request/u;->O:[B

    if-eqz v5, :cond_5

    sget-object v5, Loicq/wlogin_sdk/request/u;->O:[B

    array-length v5, v5

    if-lez v5, :cond_5

    sget-object v5, Loicq/wlogin_sdk/request/u;->O:[B

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/bz;->a([B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object v15, v5

    :goto_4
    sget-object v5, Loicq/wlogin_sdk/request/u;->L:[B

    if-eqz v5, :cond_4

    sget-object v5, Loicq/wlogin_sdk/request/u;->L:[B

    array-length v5, v5

    if-lez v5, :cond_4

    sget-object v5, Loicq/wlogin_sdk/request/u;->L:[B

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/cd;->a([B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v5

    :goto_5
    sget-object v5, Loicq/wlogin_sdk/request/l;->J:[B

    if-eqz v5, :cond_3

    sget-object v5, Loicq/wlogin_sdk/request/l;->J:[B

    array-length v5, v5

    if-lez v5, :cond_3

    sget-object v5, Loicq/wlogin_sdk/request/l;->J:[B

    sget-object v6, Loicq/wlogin_sdk/request/l;->K:[B

    const-string v7, "qq"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    sget-object v8, Loicq/wlogin_sdk/request/l;->L:[B

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6, v7, v8}, Loicq/wlogin_sdk/b/ci;->a([B[B[B[B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v5

    :goto_6
    sget-object v5, Loicq/wlogin_sdk/request/u;->R:[B

    if-eqz v5, :cond_2

    sget-object v5, Loicq/wlogin_sdk/request/u;->R:[B

    array-length v5, v5

    if-lez v5, :cond_2

    sget-object v5, Loicq/wlogin_sdk/request/u;->R:[B

    sget-object v6, Loicq/wlogin_sdk/request/u;->S:[B

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Loicq/wlogin_sdk/b/cj;->a([B[B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v18, v5

    move/from16 v19, v4

    :goto_7
    sget-object v4, Loicq/wlogin_sdk/request/u;->M:[B

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/l;->a([B)[B

    move-result-object v23

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_os_type()[B

    move-result-object v5

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_os_version()[B

    move-result-object v6

    sget v7, Loicq/wlogin_sdk/request/u;->D:I

    sget-object v8, Loicq/wlogin_sdk/request/u;->C:[B

    const/4 v4, 0x0

    new-array v9, v4, [B

    sget-object v10, Loicq/wlogin_sdk/request/u;->F:[B

    move-object/from16 v4, v24

    invoke-virtual/range {v4 .. v10}, Loicq/wlogin_sdk/b/ac;->a([B[BI[B[B[B)[B

    move-result-object v24

    sget v5, Loicq/wlogin_sdk/request/u;->T:I

    sget v6, Loicq/wlogin_sdk/request/u;->U:I

    sget v7, Loicq/wlogin_sdk/request/u;->V:I

    sget v8, Loicq/wlogin_sdk/request/u;->Y:I

    sget-object v9, Loicq/wlogin_sdk/request/u;->I:[B

    sget-object v10, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v11, Loicq/wlogin_sdk/request/u;->P:[B

    move-object/from16 v4, v25

    invoke-virtual/range {v4 .. v11}, Loicq/wlogin_sdk/b/ag;->a(IIII[B[B[B)[B

    move-result-object v7

    sget-object v4, Loicq/wlogin_sdk/request/u;->I:[B

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/bf;->a([B)[B

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    iget-object v9, v4, Loicq/wlogin_sdk/request/u;->b:[B

    move-object/from16 v4, v28

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    invoke-virtual/range {v4 .. v9}, Loicq/wlogin_sdk/b/ao;->a([B[B[B[B[B)[B

    move-result-object v7

    const/4 v8, 0x0

    if-eqz p14, :cond_0

    move-object/from16 v0, p14

    array-length v4, v0

    if-lez v4, :cond_0

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/b/an;->a([B)[B

    move-result-object v9

    add-int/lit8 v6, v4, 0x1

    const/16 v5, 0xb

    move-object/from16 v0, v37

    array-length v4, v0

    move-object/from16 v0, v38

    array-length v10, v0

    add-int/2addr v4, v10

    move-object/from16 v0, v39

    array-length v10, v0

    add-int/2addr v4, v10

    move-object/from16 v0, v22

    array-length v10, v0

    add-int/2addr v4, v10

    array-length v10, v7

    add-int/2addr v4, v10

    array-length v10, v9

    add-int/2addr v4, v10

    move-object/from16 v0, v41

    array-length v10, v0

    add-int/2addr v4, v10

    move-object/from16 v0, v42

    array-length v10, v0

    add-int/2addr v4, v10

    move-object/from16 v0, v43

    array-length v10, v0

    add-int/2addr v4, v10

    move-object/from16 v0, v44

    array-length v10, v0

    add-int/2addr v4, v10

    move-object/from16 v0, v45

    array-length v10, v0

    add-int/2addr v4, v10

    array-length v10, v12

    add-int/2addr v4, v10

    move-object/from16 v0, v46

    array-length v10, v0

    add-int/2addr v4, v10

    array-length v10, v13

    add-int/2addr v4, v10

    move-object/from16 v0, v47

    array-length v10, v0

    add-int/2addr v4, v10

    array-length v10, v14

    add-int/2addr v4, v10

    array-length v10, v15

    add-int/2addr v4, v10

    move-object/from16 v0, v16

    array-length v10, v0

    add-int/2addr v4, v10

    move-object/from16 v0, v17

    array-length v10, v0

    add-int/2addr v4, v10

    move-object/from16 v0, v18

    array-length v10, v0

    add-int/2addr v4, v10

    new-array v4, v4, [B

    const/4 v10, 0x0

    move-object/from16 v0, v37

    array-length v11, v0

    move-object/from16 v0, v37

    invoke-static {v0, v10, v4, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v37

    array-length v10, v0

    add-int/2addr v8, v10

    const/4 v10, 0x0

    move-object/from16 v0, v38

    array-length v11, v0

    move-object/from16 v0, v38

    invoke-static {v0, v10, v4, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v38

    array-length v10, v0

    add-int/2addr v8, v10

    const/4 v10, 0x0

    move-object/from16 v0, v39

    array-length v11, v0

    move-object/from16 v0, v39

    invoke-static {v0, v10, v4, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v39

    array-length v10, v0

    add-int/2addr v8, v10

    const/4 v10, 0x0

    move-object/from16 v0, v22

    array-length v11, v0

    move-object/from16 v0, v22

    invoke-static {v0, v10, v4, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v22

    array-length v10, v0

    add-int/2addr v8, v10

    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v7, v10, v4, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v7, v8

    const/4 v8, 0x0

    array-length v10, v9

    invoke-static {v9, v8, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v9

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v41

    array-length v9, v0

    move-object/from16 v0, v41

    invoke-static {v0, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v41

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v42

    array-length v9, v0

    move-object/from16 v0, v42

    invoke-static {v0, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v42

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v43

    array-length v9, v0

    move-object/from16 v0, v43

    invoke-static {v0, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v43

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v44

    array-length v9, v0

    move-object/from16 v0, v44

    invoke-static {v0, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v44

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v45

    array-length v9, v0

    move-object/from16 v0, v45

    invoke-static {v0, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v45

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    array-length v9, v12

    invoke-static {v12, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v12

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v46

    array-length v9, v0

    move-object/from16 v0, v46

    invoke-static {v0, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v46

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    array-length v9, v13

    invoke-static {v13, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v13

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v47

    array-length v9, v0

    move-object/from16 v0, v47

    invoke-static {v0, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v47

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    array-length v9, v14

    invoke-static {v14, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v14

    add-int/2addr v7, v8

    const/4 v8, 0x0

    array-length v9, v15

    invoke-static {v15, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v15

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v16

    array-length v9, v0

    move-object/from16 v0, v16

    invoke-static {v0, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v16

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v17

    array-length v9, v0

    move-object/from16 v0, v17

    invoke-static {v0, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v18

    array-length v9, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v18

    array-length v8, v0

    add-int/2addr v7, v8

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Loicq/wlogin_sdk/request/n;->b([BII)[B

    move-result-object v4

    return-object v4

    :cond_0
    add-int/lit8 v5, v19, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/n;->x:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/r;->a([B)[B

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    :goto_9
    move-object/from16 v0, v37

    array-length v6, v0

    move-object/from16 v0, v38

    array-length v9, v0

    add-int/2addr v6, v9

    move-object/from16 v0, v39

    array-length v9, v0

    add-int/2addr v6, v9

    move-object/from16 v0, v22

    array-length v9, v0

    add-int/2addr v6, v9

    array-length v9, v7

    add-int/2addr v6, v9

    move-object/from16 v0, v48

    array-length v9, v0

    add-int/2addr v6, v9

    array-length v9, v4

    add-int/2addr v6, v9

    move-object/from16 v0, v40

    array-length v9, v0

    add-int/2addr v6, v9

    move-object/from16 v0, v41

    array-length v9, v0

    add-int/2addr v6, v9

    move-object/from16 v0, v42

    array-length v9, v0

    add-int/2addr v6, v9

    move-object/from16 v0, v43

    array-length v9, v0

    add-int/2addr v6, v9

    move-object/from16 v0, v44

    array-length v9, v0

    add-int/2addr v6, v9

    move-object/from16 v0, v45

    array-length v9, v0

    add-int/2addr v6, v9

    array-length v9, v12

    add-int/2addr v6, v9

    move-object/from16 v0, v46

    array-length v9, v0

    add-int/2addr v6, v9

    array-length v9, v13

    add-int/2addr v6, v9

    move-object/from16 v0, v47

    array-length v9, v0

    add-int/2addr v6, v9

    array-length v9, v14

    add-int/2addr v6, v9

    array-length v9, v15

    add-int/2addr v6, v9

    move-object/from16 v0, v16

    array-length v9, v0

    add-int/2addr v6, v9

    move-object/from16 v0, v17

    array-length v9, v0

    add-int/2addr v6, v9

    move-object/from16 v0, v18

    array-length v9, v0

    add-int/2addr v6, v9

    new-array v6, v6, [B

    const/4 v9, 0x0

    move-object/from16 v0, v37

    array-length v10, v0

    move-object/from16 v0, v37

    invoke-static {v0, v9, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v37

    array-length v9, v0

    add-int/2addr v8, v9

    const/4 v9, 0x0

    move-object/from16 v0, v38

    array-length v10, v0

    move-object/from16 v0, v38

    invoke-static {v0, v9, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v38

    array-length v9, v0

    add-int/2addr v8, v9

    const/4 v9, 0x0

    move-object/from16 v0, v39

    array-length v10, v0

    move-object/from16 v0, v39

    invoke-static {v0, v9, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v39

    array-length v9, v0

    add-int/2addr v8, v9

    const/4 v9, 0x0

    move-object/from16 v0, v22

    array-length v10, v0

    move-object/from16 v0, v22

    invoke-static {v0, v9, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v22

    array-length v9, v0

    add-int/2addr v8, v9

    const/4 v9, 0x0

    array-length v10, v7

    invoke-static {v7, v9, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v48

    array-length v9, v0

    move-object/from16 v0, v48

    invoke-static {v0, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v48

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    array-length v9, v4

    invoke-static {v4, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v40

    array-length v8, v0

    move-object/from16 v0, v40

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v40

    array-length v7, v0

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v41

    array-length v8, v0

    move-object/from16 v0, v41

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v41

    array-length v7, v0

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v42

    array-length v8, v0

    move-object/from16 v0, v42

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v42

    array-length v7, v0

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v43

    array-length v8, v0

    move-object/from16 v0, v43

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v43

    array-length v7, v0

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v44

    array-length v8, v0

    move-object/from16 v0, v44

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v44

    array-length v7, v0

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v45

    array-length v8, v0

    move-object/from16 v0, v45

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v45

    array-length v7, v0

    add-int/2addr v4, v7

    const/4 v7, 0x0

    array-length v8, v12

    invoke-static {v12, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v12

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v46

    array-length v8, v0

    move-object/from16 v0, v46

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v46

    array-length v7, v0

    add-int/2addr v4, v7

    const/4 v7, 0x0

    array-length v8, v13

    invoke-static {v13, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v13

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v47

    array-length v8, v0

    move-object/from16 v0, v47

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v47

    array-length v7, v0

    add-int/2addr v4, v7

    const/4 v7, 0x0

    array-length v8, v14

    invoke-static {v14, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v14

    add-int/2addr v4, v7

    const/4 v7, 0x0

    array-length v8, v15

    invoke-static {v15, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v15

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v16

    array-length v8, v0

    move-object/from16 v0, v16

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v16

    array-length v7, v0

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v17

    array-length v8, v0

    move-object/from16 v0, v17

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    array-length v7, v0

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v18

    array-length v8, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v18

    array-length v7, v0

    add-int/2addr v4, v7

    move-object v4, v6

    move v6, v5

    move/from16 v5, v21

    goto/16 :goto_8

    :cond_1
    move-object/from16 v4, v20

    goto/16 :goto_9

    :cond_2
    move-object/from16 v18, v11

    move/from16 v19, v4

    goto/16 :goto_7

    :cond_3
    move-object/from16 v17, v10

    goto/16 :goto_6

    :cond_4
    move-object/from16 v16, v9

    goto/16 :goto_5

    :cond_5
    move-object v15, v8

    goto/16 :goto_4

    :cond_6
    move-object v14, v7

    goto/16 :goto_3

    :cond_7
    move-object v13, v6

    goto/16 :goto_2

    :cond_8
    move-object v12, v4

    move v4, v5

    goto/16 :goto_1

    :cond_9
    move-object/from16 v22, v5

    move v5, v12

    goto/16 :goto_0
.end method
