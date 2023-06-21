.class public Lcom/kingroot/kinguser/ow;
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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ow;->yo:Lcom/kingroot/kinguser/cbe;

    .line 30
    iput-object p1, p0, Lcom/kingroot/kinguser/ow;->yo:Lcom/kingroot/kinguser/cbe;

    .line 31
    return-void
.end method

.method private b(JJLcom/kingroot/kinguser/u;Lcom/qq/taf/jce/JceInputStream;)V
    .locals 7

    .prologue
    .line 46
    new-instance v5, Lcom/kingroot/kinguser/ah;

    invoke-direct {v5}, Lcom/kingroot/kinguser/ah;-><init>()V

    .line 47
    invoke-virtual {v5, p6}, Lcom/kingroot/kinguser/ah;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 49
    iget-object v6, p0, Lcom/kingroot/kinguser/ow;->yo:Lcom/kingroot/kinguser/cbe;

    move-wide v0, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-static/range {v0 .. v6}, Lcom/kingroot/kinguser/ps;->a(JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ah;Lcom/kingroot/kinguser/cbe;)Lcom/kingroot/kinguser/w;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/kingroot/kinguser/r;

    invoke-direct {v1}, Lcom/kingroot/kinguser/r;-><init>()V

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    .line 52
    iget-object v2, v1, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    .line 54
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/x;IIILcom/qq/taf/jce/JceStruct;)V
    .locals 8

    .prologue
    .line 34
    if-eqz p1, :cond_0

    instance-of v0, p5, Lcom/kingroot/kinguser/u;

    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, p5

    .line 39
    check-cast v6, Lcom/kingroot/kinguser/u;

    .line 40
    new-instance v7, Lcom/qq/taf/jce/JceInputStream;

    iget-object v0, v6, Lcom/kingroot/kinguser/u;->gn:[B

    invoke-direct {v7, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 41
    const-string v0, "UTF-8"

    invoke-virtual {v7, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 42
    iget-wide v2, p1, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/x;->gu:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/kingroot/kinguser/ow;->b(JJLcom/kingroot/kinguser/u;Lcom/qq/taf/jce/JceInputStream;)V

    goto :goto_0
.end method
