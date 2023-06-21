.class public Lcom/kingroot/kinguser/ot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/pu;


# instance fields
.field private yo:Lcom/kingroot/kinguser/cbe;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/cbe;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/cbe;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ot;->yo:Lcom/kingroot/kinguser/cbe;

    .line 36
    iput-object p1, p0, Lcom/kingroot/kinguser/ot;->yo:Lcom/kingroot/kinguser/cbe;

    .line 37
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
    .line 53
    new-instance v2, Lcom/kingroot/kinguser/t;

    invoke-direct {v2}, Lcom/kingroot/kinguser/t;-><init>()V

    .line 54
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/t;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 56
    iget-object v3, v2, Lcom/kingroot/kinguser/t;->gi:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v3, v2, Lcom/kingroot/kinguser/t;->gj:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v3, v2, Lcom/kingroot/kinguser/t;->gk:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v3, v2, Lcom/kingroot/kinguser/t;->gl:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, v2, Lcom/kingroot/kinguser/t;->gm:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    .line 62
    invoke-direct/range {v3 .. v9}, Lcom/kingroot/kinguser/ot;->a(JJLcom/kingroot/kinguser/u;Ljava/util/List;)V

    .line 63
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
    .line 68
    .line 69
    new-instance v12, Lcom/kingroot/kinguser/r;

    invoke-direct {v12}, Lcom/kingroot/kinguser/r;-><init>()V

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v12, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    .line 71
    move-object/from16 v0, p5

    iget v2, v0, Lcom/kingroot/kinguser/u;->gh:I

    packed-switch v2, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v3, p0, Lcom/kingroot/kinguser/ot;->yo:Lcom/kingroot/kinguser/cbe;

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/kingroot/kinguser/cbe;->O(ILjava/lang/String;)V

    .line 75
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

    .line 78
    iget-object v3, v12, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x267
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/x;IIILcom/qq/taf/jce/JceStruct;)V
    .locals 9
    .param p1    # Lcom/kingroot/kinguser/x;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    if-eqz p1, :cond_0

    instance-of v0, p5, Lcom/kingroot/kinguser/u;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, p5

    .line 45
    check-cast v6, Lcom/kingroot/kinguser/u;

    .line 46
    new-instance v7, Lcom/qq/taf/jce/JceInputStream;

    iget-object v0, v6, Lcom/kingroot/kinguser/u;->gn:[B

    invoke-direct {v7, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 47
    const-string v0, "UTF-8"

    invoke-virtual {v7, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 48
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-wide v2, p1, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/x;->gu:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/kingroot/kinguser/ot;->a(JJLcom/kingroot/kinguser/u;Lcom/qq/taf/jce/JceInputStream;Ljava/util/List;)V

    goto :goto_0
.end method
