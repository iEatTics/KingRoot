.class Lcom/kingroot/kinguser/awr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cbf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awr;->a(Lcom/kingroot/kinguser/x;IIILcom/qq/taf/jce/JceStruct;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVc:Lcom/kingroot/kinguser/awr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awr;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kingroot/kinguser/awr$1;->aVc:Lcom/kingroot/kinguser/awr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(JJLcom/kingroot/kinguser/u;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/kingroot/kinguser/u;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .line 43
    new-instance v14, Lcom/kingroot/kinguser/r;

    invoke-direct {v14}, Lcom/kingroot/kinguser/r;-><init>()V

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v14, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    .line 46
    move-object/from16 v0, p5

    iget v4, v0, Lcom/kingroot/kinguser/u;->gh:I

    sparse-switch v4, :sswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 48
    :sswitch_0
    new-instance v9, Lcom/kingroot/kinguser/dk;

    invoke-direct {v9}, Lcom/kingroot/kinguser/dk;-><init>()V

    .line 49
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v9, Lcom/kingroot/kinguser/dk;->gH:I

    .line 50
    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    iput-byte v4, v9, Lcom/kingroot/kinguser/dk;->no:B

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    .line 51
    invoke-static/range {v4 .. v9}, Lcom/kingroot/kinguser/awq;->a(JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/dk;)Lcom/kingroot/kinguser/w;

    move-result-object v4

    .line 52
    iget-object v5, v14, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const/4 v13, 0x1

    .line 58
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/avd;->Rq()Lcom/kingroot/kinguser/ave;

    move-result-object v4

    move-object/from16 v0, p5

    iget v5, v0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    move-wide/from16 v0, p1

    move-object/from16 v2, p6

    invoke-static {v0, v1, v5, v2}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->a(JILjava/util/List;)Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/kingroot/kinguser/ave;->f(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_1
    iget-object v15, v14, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p5

    iget v9, v0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    move-object/from16 v0, p5

    iget v10, v0, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-static/range {v4 .. v13}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto :goto_0

    .line 59
    :catch_0
    move-exception v4

    .line 61
    const/4 v13, 0x3

    goto :goto_1

    .line 77
    :sswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/avh;->Ru()Lcom/kingroot/kinguser/avh;

    move-result-object v4

    move-wide/from16 v0, p1

    move-object/from16 v2, p6

    invoke-virtual {v4, v0, v1, v2}, Lcom/kingroot/kinguser/avh;->a(JLjava/util/List;)V

    .line 79
    iget-object v15, v14, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p5

    iget v9, v0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    move-object/from16 v0, p5

    iget v10, v0, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-static/range {v4 .. v13}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto/16 :goto_0

    .line 93
    :sswitch_3
    invoke-static/range {p6 .. p6}, Lcom/kingroot/kinguser/awj;->bF(Ljava/util/List;)V

    .line 95
    iget-object v15, v14, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p5

    iget v9, v0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    move-object/from16 v0, p5

    iget v10, v0, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-static/range {v4 .. v13}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto/16 :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x35 -> :sswitch_2
        0x214 -> :sswitch_1
        0x635 -> :sswitch_3
    .end sparse-switch
.end method
