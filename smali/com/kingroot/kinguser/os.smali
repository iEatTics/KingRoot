.class public Lcom/kingroot/kinguser/os;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/pu;


# instance fields
.field private ym:Lcom/kingroot/kinguser/pv;

.field private yn:Lcom/kingroot/kinguser/cbe;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/cbe;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/kingroot/kinguser/os;->ym:Lcom/kingroot/kinguser/pv;

    .line 43
    iput-object v0, p0, Lcom/kingroot/kinguser/os;->yn:Lcom/kingroot/kinguser/cbe;

    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/os;->ym:Lcom/kingroot/kinguser/pv;

    .line 47
    iput-object p2, p0, Lcom/kingroot/kinguser/os;->yn:Lcom/kingroot/kinguser/cbe;

    .line 48
    return-void
.end method

.method private a(JJLcom/kingroot/kinguser/u;Lcom/qq/taf/jce/JceInputStream;Ljava/util/List;)V
    .locals 11
    .param p5    # Lcom/kingroot/kinguser/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/qq/taf/jce/JceInputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/kingroot/kinguser/u;",
            "Lcom/qq/taf/jce/JceInputStream;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v2, Lcom/kingroot/kinguser/t;

    invoke-direct {v2}, Lcom/kingroot/kinguser/t;-><init>()V

    .line 64
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/t;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 66
    iget-object v3, v2, Lcom/kingroot/kinguser/t;->gi:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v3, v2, Lcom/kingroot/kinguser/t;->gj:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v3, v2, Lcom/kingroot/kinguser/t;->gk:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v3, v2, Lcom/kingroot/kinguser/t;->gl:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, v2, Lcom/kingroot/kinguser/t;->gm:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    .line 72
    invoke-direct/range {v3 .. v9}, Lcom/kingroot/kinguser/os;->a(JJLcom/kingroot/kinguser/u;Ljava/util/List;)V

    .line 73
    return-void
.end method

.method private a(JJLcom/kingroot/kinguser/u;Ljava/util/List;)V
    .locals 13
    .param p5    # Lcom/kingroot/kinguser/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 78
    .line 79
    new-instance v12, Lcom/kingroot/kinguser/r;

    invoke-direct {v12}, Lcom/kingroot/kinguser/r;-><init>()V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v12, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    .line 81
    invoke-static {}, Lcom/kingroot/kinguser/bzu;->ge()Landroid/content/Context;

    move-result-object v3

    .line 82
    move-object/from16 v0, p5

    iget v2, v0, Lcom/kingroot/kinguser/u;->gh:I

    sparse-switch v2, :sswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 85
    :sswitch_0
    new-instance v9, Lcom/kingroot/kinguser/cm;

    invoke-direct {v9}, Lcom/kingroot/kinguser/cm;-><init>()V

    .line 86
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v9, Lcom/kingroot/kinguser/cm;->gD:I

    .line 87
    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v9, Lcom/kingroot/kinguser/cm;->uid:Ljava/lang/String;

    .line 88
    const/4 v2, 0x2

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v9, Lcom/kingroot/kinguser/cm;->lU:I

    .line 89
    iget-object v10, p0, Lcom/kingroot/kinguser/os;->ym:Lcom/kingroot/kinguser/pv;

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v10}, Lcom/kingroot/kinguser/ox;->a(Landroid/content/Context;JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/cm;Lcom/kingroot/kinguser/pv;)Lcom/kingroot/kinguser/w;

    move-result-object v2

    .line 90
    iget-object v3, v12, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto :goto_0

    .line 95
    :sswitch_1
    new-instance v7, Lcom/kingroot/kinguser/cj;

    invoke-direct {v7}, Lcom/kingroot/kinguser/cj;-><init>()V

    .line 96
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v7, Lcom/kingroot/kinguser/cj;->process:Ljava/lang/String;

    .line 97
    iget-object v8, p0, Lcom/kingroot/kinguser/os;->ym:Lcom/kingroot/kinguser/pv;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v8}, Lcom/kingroot/kinguser/ox;->a(JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/cj;Lcom/kingroot/kinguser/pv;)Lcom/kingroot/kinguser/w;

    move-result-object v2

    .line 98
    iget-object v3, v12, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto :goto_0

    .line 103
    :sswitch_2
    new-instance v7, Lcom/kingroot/kinguser/ch;

    invoke-direct {v7}, Lcom/kingroot/kinguser/ch;-><init>()V

    .line 104
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v7, Lcom/kingroot/kinguser/ch;->file:Ljava/lang/String;

    .line 105
    iget-object v8, p0, Lcom/kingroot/kinguser/os;->ym:Lcom/kingroot/kinguser/pv;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v8}, Lcom/kingroot/kinguser/ox;->a(JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ch;Lcom/kingroot/kinguser/pv;)Lcom/kingroot/kinguser/w;

    move-result-object v2

    .line 106
    iget-object v3, v12, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto/16 :goto_0

    .line 111
    :sswitch_3
    new-instance v7, Lcom/kingroot/kinguser/ci;

    invoke-direct {v7}, Lcom/kingroot/kinguser/ci;-><init>()V

    .line 112
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v7, Lcom/kingroot/kinguser/ci;->lR:Ljava/lang/String;

    .line 113
    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v7, Lcom/kingroot/kinguser/ci;->lS:I

    .line 114
    iget-object v8, p0, Lcom/kingroot/kinguser/os;->ym:Lcom/kingroot/kinguser/pv;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v8}, Lcom/kingroot/kinguser/ox;->a(JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ci;Lcom/kingroot/kinguser/pv;)Lcom/kingroot/kinguser/w;

    move-result-object v2

    .line 115
    iget-object v3, v12, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto/16 :goto_0

    .line 120
    :sswitch_4
    const/4 v2, 0x2

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 121
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 122
    iget-object v2, p0, Lcom/kingroot/kinguser/os;->yn:Lcom/kingroot/kinguser/cbe;

    invoke-virtual {v2, v3, v4, v5}, Lcom/kingroot/kinguser/cbe;->g(IJ)V

    .line 123
    const/4 v6, 0x0

    move-object/from16 v0, p5

    iget v7, v0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    move-object/from16 v0, p5

    iget v8, v0, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-static/range {v2 .. v11}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v2

    .line 131
    iget-object v3, v12, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto/16 :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x9 -> :sswitch_3
        0x6a5 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/x;IIILcom/qq/taf/jce/JceStruct;)V
    .locals 9
    .param p1    # Lcom/kingroot/kinguser/x;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    if-eqz p1, :cond_0

    instance-of v0, p5, Lcom/kingroot/kinguser/u;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, p5

    .line 55
    check-cast v6, Lcom/kingroot/kinguser/u;

    .line 56
    new-instance v7, Lcom/qq/taf/jce/JceInputStream;

    iget-object v0, v6, Lcom/kingroot/kinguser/u;->gn:[B

    invoke-direct {v7, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 57
    const-string v0, "UTF-8"

    invoke-virtual {v7, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 58
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-wide v2, p1, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/x;->gu:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/kingroot/kinguser/os;->a(JJLcom/kingroot/kinguser/u;Lcom/qq/taf/jce/JceInputStream;Ljava/util/List;)V

    goto :goto_0
.end method
