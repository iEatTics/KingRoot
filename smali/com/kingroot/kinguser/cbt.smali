.class Lcom/kingroot/kinguser/cbt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# instance fields
.field final synthetic bWP:Lcom/kingroot/kinguser/cbq;

.field final synthetic bWQ:Lcom/kingroot/kinguser/cbr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cbr;Lcom/kingroot/kinguser/cbq;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kingroot/kinguser/cbt;->bWQ:Lcom/kingroot/kinguser/cbr;

    iput-object p2, p0, Lcom/kingroot/kinguser/cbt;->bWP:Lcom/kingroot/kinguser/cbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 14

    .prologue
    .line 57
    check-cast p5, Lcom/kingroot/kinguser/ae;

    .line 59
    new-instance v10, Lcom/kingroot/kinguser/q;

    invoke-direct {v10}, Lcom/kingroot/kinguser/q;-><init>()V

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lcom/kingroot/kinguser/q;->ge:Ljava/util/ArrayList;

    .line 62
    if-eqz p5, :cond_2

    .line 64
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/kingroot/kinguser/ae;->gQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/kingroot/kinguser/x;

    .line 65
    iget-object v2, v9, Lcom/kingroot/kinguser/x;->gy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/kingroot/kinguser/u;

    .line 66
    iget-object v13, v10, Lcom/kingroot/kinguser/q;->ge:Ljava/util/ArrayList;

    iget-wide v2, v9, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v4, v9, Lcom/kingroot/kinguser/x;->gu:J

    iget v6, v7, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iget v7, v7, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/kingroot/kinguser/cba;->a(JJIII)Lcom/kingroot/kinguser/v;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v10}, Lcom/kingroot/kinguser/oq;->a(Lcom/kingroot/kinguser/q;)V

    .line 71
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string v3, "key_softupdate_conch"

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 74
    iget-object v3, p0, Lcom/kingroot/kinguser/cbt;->bWP:Lcom/kingroot/kinguser/cbq;

    invoke-interface {v3, v2}, Lcom/kingroot/kinguser/cbq;->c(Landroid/os/Bundle;)V

    .line 76
    :cond_2
    return-void
.end method
