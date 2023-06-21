.class public Loicq/wlogin_sdk/request/m;
.super Loicq/wlogin_sdk/request/oicq_request;


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/m;->t:I

    const/16 v0, 0xd

    iput v0, p0, Loicq/wlogin_sdk/request/m;->u:I

    const-string v0, "wtlogin.login"

    iput-object v0, p0, Loicq/wlogin_sdk/request/m;->v:Ljava/lang/String;

    iput-object p1, p0, Loicq/wlogin_sdk/request/m;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, p0, Loicq/wlogin_sdk/request/m;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    return-void
.end method


# virtual methods
.method public a(JJJII[B[BII[J[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 27

    sget v9, Loicq/wlogin_sdk/request/u;->w:I

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/m;->c([B)[B

    move-result-object v11

    if-nez v11, :cond_1

    const/16 v2, -0x3f6

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    move/from16 v26, v2

    :goto_1
    sget-object v16, Loicq/wlogin_sdk/request/u;->aa:[B

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v10, p8

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v17, p14

    move-wide/from16 v18, p15

    move-wide/from16 v20, p17

    move-wide/from16 v22, p19

    move-object/from16 v24, p21

    move-object/from16 v25, p22

    invoke-virtual/range {v2 .. v25}, Loicq/wlogin_sdk/request/m;->a(JJJII[B[BII[J[B[BJJJ[B[B)[B

    move-result-object v22

    move-object/from16 v0, p0

    iget v13, v0, Loicq/wlogin_sdk/request/m;->i:I

    move-object/from16 v0, p0

    iget v14, v0, Loicq/wlogin_sdk/request/m;->t:I

    move-object/from16 v0, p0

    iget v15, v0, Loicq/wlogin_sdk/request/m;->j:I

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/m;->m:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/m;->n:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/m;->p:I

    move/from16 v21, v0

    move-object/from16 v12, p0

    move-wide/from16 v16, p1

    move/from16 v20, v9

    invoke-virtual/range {v12 .. v22}, Loicq/wlogin_sdk/request/m;->a(IIIJIIII[B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/m;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p23

    invoke-virtual {v0, v2, v3, v1}, Loicq/wlogin_sdk/request/m;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/m;->b()I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry num:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb4

    if-eq v3, v2, :cond_2

    move v2, v3

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v2, v26, 0x1

    const/4 v4, 0x1

    move/from16 v0, v26

    if-lt v0, v4, :cond_3

    move v2, v3

    goto/16 :goto_0

    :cond_3
    move/from16 v26, v2

    goto/16 :goto_1
.end method

.method public a(JJJII[B[BII[J[B[BJJJ[B[B)[B
    .locals 46

    new-instance v6, Loicq/wlogin_sdk/b/i;

    invoke-direct {v6}, Loicq/wlogin_sdk/b/i;-><init>()V

    new-instance v23, Loicq/wlogin_sdk/b/ao;

    invoke-direct/range {v23 .. v23}, Loicq/wlogin_sdk/b/ao;-><init>()V

    new-instance v5, Loicq/wlogin_sdk/b/d;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/d;-><init>()V

    new-instance v13, Loicq/wlogin_sdk/b/k;

    invoke-direct {v13}, Loicq/wlogin_sdk/b/k;-><init>()V

    new-instance v12, Loicq/wlogin_sdk/b/u;

    invoke-direct {v12}, Loicq/wlogin_sdk/b/u;-><init>()V

    new-instance v15, Loicq/wlogin_sdk/b/r;

    invoke-direct {v15}, Loicq/wlogin_sdk/b/r;-><init>()V

    new-instance v14, Loicq/wlogin_sdk/b/am;

    invoke-direct {v14}, Loicq/wlogin_sdk/b/am;-><init>()V

    new-instance v16, Loicq/wlogin_sdk/b/ap;

    invoke-direct/range {v16 .. v16}, Loicq/wlogin_sdk/b/ap;-><init>()V

    new-instance v17, Loicq/wlogin_sdk/b/bd;

    invoke-direct/range {v17 .. v17}, Loicq/wlogin_sdk/b/bd;-><init>()V

    new-instance v4, Loicq/wlogin_sdk/b/bs;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/bs;-><init>()V

    new-instance v18, Loicq/wlogin_sdk/b/al;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/b/al;-><init>()V

    new-instance v19, Loicq/wlogin_sdk/b/cr;

    invoke-direct/range {v19 .. v19}, Loicq/wlogin_sdk/b/cr;-><init>()V

    new-instance v24, Loicq/wlogin_sdk/b/l;

    invoke-direct/range {v24 .. v24}, Loicq/wlogin_sdk/b/l;-><init>()V

    new-instance v25, Loicq/wlogin_sdk/b/ac;

    invoke-direct/range {v25 .. v25}, Loicq/wlogin_sdk/b/ac;-><init>()V

    new-instance v26, Loicq/wlogin_sdk/b/ag;

    invoke-direct/range {v26 .. v26}, Loicq/wlogin_sdk/b/ag;-><init>()V

    new-instance v20, Loicq/wlogin_sdk/b/ar;

    invoke-direct/range {v20 .. v20}, Loicq/wlogin_sdk/b/ar;-><init>()V

    new-instance v27, Loicq/wlogin_sdk/b/as;

    invoke-direct/range {v27 .. v27}, Loicq/wlogin_sdk/b/as;-><init>()V

    new-instance v28, Loicq/wlogin_sdk/b/av;

    invoke-direct/range {v28 .. v28}, Loicq/wlogin_sdk/b/av;-><init>()V

    new-instance v29, Loicq/wlogin_sdk/b/bf;

    invoke-direct/range {v29 .. v29}, Loicq/wlogin_sdk/b/bf;-><init>()V

    new-instance v21, Loicq/wlogin_sdk/b/bh;

    invoke-direct/range {v21 .. v21}, Loicq/wlogin_sdk/b/bh;-><init>()V

    new-instance v22, Loicq/wlogin_sdk/b/bk;

    invoke-direct/range {v22 .. v22}, Loicq/wlogin_sdk/b/bk;-><init>()V

    new-instance v30, Loicq/wlogin_sdk/b/by;

    invoke-direct/range {v30 .. v30}, Loicq/wlogin_sdk/b/by;-><init>()V

    new-instance v31, Loicq/wlogin_sdk/b/bz;

    invoke-direct/range {v31 .. v31}, Loicq/wlogin_sdk/b/bz;-><init>()V

    new-instance v32, Loicq/wlogin_sdk/b/cd;

    invoke-direct/range {v32 .. v32}, Loicq/wlogin_sdk/b/cd;-><init>()V

    new-instance v33, Loicq/wlogin_sdk/b/cj;

    invoke-direct/range {v33 .. v33}, Loicq/wlogin_sdk/b/cj;-><init>()V

    move-object/from16 v0, p9

    array-length v7, v0

    move-object/from16 v0, p9

    invoke-virtual {v6, v0, v7}, Loicq/wlogin_sdk/b/i;->b([BI)V

    invoke-virtual {v6}, Loicq/wlogin_sdk/b/i;->b()[B

    move-result-object v34

    move-wide/from16 v6, p18

    move-wide/from16 v8, p20

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v5 .. v11}, Loicq/wlogin_sdk/b/d;->a(JJII)[B

    move-result-object v35

    move/from16 v0, p11

    move/from16 v1, p12

    move-object/from16 v2, p13

    invoke-virtual {v12, v0, v1, v2}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v36

    sget-object v5, Loicq/wlogin_sdk/request/u;->E:[B

    invoke-virtual {v14, v5}, Loicq/wlogin_sdk/b/am;->a([B)[B

    move-result-object v37

    sget-object v5, Loicq/wlogin_sdk/request/u;->A:[B

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/ap;->a([B)[B

    move-result-object v38

    const/4 v10, 0x0

    move-wide/from16 v5, p3

    move/from16 v7, p7

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v10}, Loicq/wlogin_sdk/b/bs;->a(JIJI)[B

    move-result-object v39

    sget-object v4, Loicq/wlogin_sdk/request/u;->C:[B

    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    sget-object v6, Loicq/wlogin_sdk/request/u;->F:[B

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v6}, Loicq/wlogin_sdk/b/al;->b([BI[B)[B

    move-result-object v40

    const/4 v4, 0x0

    sget v5, Loicq/wlogin_sdk/request/u;->u:I

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v41

    sget-object v4, Loicq/wlogin_sdk/request/u;->G:[B

    sget-object v5, Loicq/wlogin_sdk/request/u;->H:[B

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v4, v5}, Loicq/wlogin_sdk/b/ar;->a(J[B[B)[B

    move-result-object v42

    const-wide/32 v4, 0x586b5015

    const-string v6, "6.0.0.2003"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Loicq/wlogin_sdk/b/bk;->a(JLjava/lang/String;)[B

    move-result-object v43

    const/16 v5, 0xa

    const/4 v4, 0x0

    new-array v4, v4, [B

    const/4 v6, 0x0

    new-array v12, v6, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v6, 0x0

    new-array v0, v6, [B

    move-object/from16 v44, v0

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v7, 0x0

    new-array v7, v7, [B

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

    if-eqz p14, :cond_7

    move-object/from16 v0, p14

    array-length v14, v0

    if-lez v14, :cond_7

    move-object/from16 v0, p14

    invoke-virtual {v13, v0}, Loicq/wlogin_sdk/b/k;->a([B)[B

    move-result-object v4

    const/16 v5, 0xb

    move-object v14, v4

    move v4, v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/m;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/m;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/m;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v15, v5}, Loicq/wlogin_sdk/b/r;->a([B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v22, v5

    move v5, v4

    :goto_1
    if-eqz p10, :cond_5

    move-object/from16 v0, p10

    array-length v4, v0

    if-lez v4, :cond_5

    move-object/from16 v0, v17

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/b/bd;->a([B)[B

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    move-object v15, v4

    move v4, v5

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/m;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->r:[B

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/m;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->r:[B

    array-length v5, v5

    if-lez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/m;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->r:[B

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/bh;->a([B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v5

    :goto_3
    sget-object v5, Loicq/wlogin_sdk/request/u;->N:[B

    if-eqz v5, :cond_3

    sget-object v5, Loicq/wlogin_sdk/request/u;->N:[B

    array-length v5, v5

    if-lez v5, :cond_3

    sget-object v5, Loicq/wlogin_sdk/request/u;->N:[B

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/by;->a([B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v5

    :goto_4
    sget-object v5, Loicq/wlogin_sdk/request/u;->O:[B

    if-eqz v5, :cond_2

    sget-object v5, Loicq/wlogin_sdk/request/u;->O:[B

    array-length v5, v5

    if-lez v5, :cond_2

    sget-object v5, Loicq/wlogin_sdk/request/u;->O:[B

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/bz;->a([B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v18, v5

    :goto_5
    sget-object v5, Loicq/wlogin_sdk/request/u;->L:[B

    if-eqz v5, :cond_1

    sget-object v5, Loicq/wlogin_sdk/request/u;->L:[B

    array-length v5, v5

    if-lez v5, :cond_1

    sget-object v5, Loicq/wlogin_sdk/request/u;->L:[B

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/cd;->a([B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v19, v5

    :goto_6
    sget-object v5, Loicq/wlogin_sdk/request/u;->R:[B

    if-eqz v5, :cond_0

    sget-object v5, Loicq/wlogin_sdk/request/u;->R:[B

    array-length v5, v5

    if-lez v5, :cond_0

    sget-object v5, Loicq/wlogin_sdk/request/u;->R:[B

    sget-object v6, Loicq/wlogin_sdk/request/u;->S:[B

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Loicq/wlogin_sdk/b/cj;->a([B[B)[B

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v20, v5

    move/from16 v21, v4

    :goto_7
    sget-object v4, Loicq/wlogin_sdk/request/u;->M:[B

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/l;->a([B)[B

    move-result-object v24

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_os_type()[B

    move-result-object v5

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_os_version()[B

    move-result-object v6

    sget v7, Loicq/wlogin_sdk/request/u;->D:I

    sget-object v8, Loicq/wlogin_sdk/request/u;->C:[B

    const/4 v4, 0x0

    new-array v9, v4, [B

    sget-object v10, Loicq/wlogin_sdk/request/u;->F:[B

    move-object/from16 v4, v25

    invoke-virtual/range {v4 .. v10}, Loicq/wlogin_sdk/b/ac;->a([B[BI[B[B[B)[B

    move-result-object v25

    sget v5, Loicq/wlogin_sdk/request/u;->T:I

    sget v6, Loicq/wlogin_sdk/request/u;->U:I

    sget v7, Loicq/wlogin_sdk/request/u;->V:I

    const/4 v8, 0x0

    sget-object v9, Loicq/wlogin_sdk/request/u;->I:[B

    sget-object v10, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v11, Loicq/wlogin_sdk/request/u;->P:[B

    move-object/from16 v4, v26

    invoke-virtual/range {v4 .. v11}, Loicq/wlogin_sdk/b/ag;->a(IIII[B[B[B)[B

    move-result-object v26

    move-object/from16 v4, v27

    move-object/from16 v5, p15

    move-wide/from16 v6, p16

    move-wide/from16 v8, p18

    move-wide/from16 v10, p20

    move-object/from16 v12, p22

    move-object/from16 v13, p23

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/b/as;->a([BJJJ[B[B)[B

    move-result-object v8

    sget v4, Loicq/wlogin_sdk/request/u;->Z:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/av;->a(I)[B

    move-result-object v10

    sget-object v4, Loicq/wlogin_sdk/request/u;->I:[B

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/bf;->a([B)[B

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/m;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v4

    iget-object v12, v4, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v9, v44

    invoke-virtual/range {v4 .. v12}, Loicq/wlogin_sdk/b/ao;->a([B[B[B[B[B[B[B[B)[B

    move-result-object v4

    add-int/lit8 v5, v21, 0x1

    move-object/from16 v0, v34

    array-length v6, v0

    move-object/from16 v0, v35

    array-length v7, v0

    add-int/2addr v6, v7

    array-length v7, v14

    add-int/2addr v6, v7

    move-object/from16 v0, v36

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v22

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v37

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v38

    array-length v7, v0

    add-int/2addr v6, v7

    array-length v7, v4

    add-int/2addr v6, v7

    array-length v7, v15

    add-int/2addr v6, v7

    move-object/from16 v0, v39

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v40

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v41

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v42

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v16

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v43

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v17

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v18

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v19

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v20

    array-length v7, v0

    add-int/2addr v6, v7

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    array-length v9, v0

    move-object/from16 v0, v34

    invoke-static {v0, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v34

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v35

    array-length v9, v0

    move-object/from16 v0, v35

    invoke-static {v0, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v35

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    array-length v9, v14

    invoke-static {v14, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v14

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v36

    array-length v9, v0

    move-object/from16 v0, v36

    invoke-static {v0, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v36

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v22

    array-length v9, v0

    move-object/from16 v0, v22

    invoke-static {v0, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v22

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v37

    array-length v9, v0

    move-object/from16 v0, v37

    invoke-static {v0, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v37

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v38

    array-length v9, v0

    move-object/from16 v0, v38

    invoke-static {v0, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v38

    array-length v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x0

    array-length v9, v4

    invoke-static {v4, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v4, v7

    const/4 v7, 0x0

    array-length v8, v15

    invoke-static {v15, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v15

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v39

    array-length v8, v0

    move-object/from16 v0, v39

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v39

    array-length v7, v0

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

    move-object/from16 v0, v16

    array-length v8, v0

    move-object/from16 v0, v16

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v16

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

    const/4 v7, 0x0

    move-object/from16 v0, v19

    array-length v8, v0

    move-object/from16 v0, v19

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v19

    array-length v7, v0

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, v20

    array-length v8, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v20

    array-length v7, v0

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/m;->u:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5}, Loicq/wlogin_sdk/request/m;->b([BII)[B

    move-result-object v4

    return-object v4

    :cond_0
    move-object/from16 v20, v11

    move/from16 v21, v4

    goto/16 :goto_7

    :cond_1
    move-object/from16 v19, v10

    goto/16 :goto_6

    :cond_2
    move-object/from16 v18, v9

    goto/16 :goto_5

    :cond_3
    move-object/from16 v17, v8

    goto/16 :goto_4

    :cond_4
    move-object/from16 v16, v7

    goto/16 :goto_3

    :cond_5
    move-object v15, v6

    move v4, v5

    goto/16 :goto_2

    :cond_6
    move-object/from16 v22, v12

    move v5, v4

    goto/16 :goto_1

    :cond_7
    move-object v14, v4

    move v4, v5

    goto/16 :goto_0
.end method
