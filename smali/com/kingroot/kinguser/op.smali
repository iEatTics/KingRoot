.class public Lcom/kingroot/kinguser/op;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# instance fields
.field private yl:Lcom/kingroot/kinguser/pe;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/pe;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/kingroot/kinguser/op;->yl:Lcom/kingroot/kinguser/pe;

    .line 31
    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 15

    .prologue
    .line 37
    iget-object v2, p0, Lcom/kingroot/kinguser/op;->yl:Lcom/kingroot/kinguser/pe;

    if-eqz v2, :cond_0

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    instance-of v2, v0, Lcom/kingroot/kinguser/af;

    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    check-cast p5, Lcom/kingroot/kinguser/af;

    .line 41
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/kingroot/kinguser/af;->gQ:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 45
    new-instance v11, Lcom/kingroot/kinguser/q;

    invoke-direct {v11}, Lcom/kingroot/kinguser/q;-><init>()V

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v11, Lcom/kingroot/kinguser/q;->ge:Ljava/util/ArrayList;

    .line 48
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/kingroot/kinguser/af;->gQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/kingroot/kinguser/x;

    .line 49
    if-eqz v9, :cond_2

    iget-object v2, v9, Lcom/kingroot/kinguser/x;->gy:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 52
    iget-object v2, v9, Lcom/kingroot/kinguser/x;->gy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/kingroot/kinguser/u;

    .line 53
    if-eqz v10, :cond_3

    .line 56
    iget-object v14, v11, Lcom/kingroot/kinguser/q;->ge:Ljava/util/ArrayList;

    iget-wide v2, v9, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v4, v9, Lcom/kingroot/kinguser/x;->gu:J

    iget v6, v10, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iget v7, v10, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/kingroot/kinguser/cba;->a(JJIII)Lcom/kingroot/kinguser/v;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/op;->yl:Lcom/kingroot/kinguser/pe;

    iget v3, v10, Lcom/kingroot/kinguser/u;->gh:I

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/pe;->ax(I)Lcom/kingroot/kinguser/pu;

    move-result-object v2

    .line 59
    iget v4, v10, Lcom/kingroot/kinguser/u;->gh:I

    move-object v3, v9

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v10

    invoke-interface/range {v2 .. v7}, Lcom/kingroot/kinguser/pu;->a(Lcom/kingroot/kinguser/x;IIILcom/qq/taf/jce/JceStruct;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 60
    :catch_0
    move-exception v2

    goto :goto_1

    .line 65
    :cond_4
    invoke-static {v11}, Lcom/kingroot/kinguser/oq;->a(Lcom/kingroot/kinguser/q;)V

    goto :goto_0
.end method
