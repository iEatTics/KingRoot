.class public Lcom/kingroot/kinguser/ov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/pu;


# instance fields
.field private ym:Lcom/kingroot/kinguser/pv;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/pv;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ov;->ym:Lcom/kingroot/kinguser/pv;

    .line 24
    iput-object p1, p0, Lcom/kingroot/kinguser/ov;->ym:Lcom/kingroot/kinguser/pv;

    .line 25
    return-void
.end method

.method private a(JJLcom/kingroot/kinguser/u;Lcom/qq/taf/jce/JceInputStream;)V
    .locals 9

    .prologue
    .line 42
    new-instance v7, Lcom/kingroot/kinguser/aa;

    invoke-direct {v7}, Lcom/kingroot/kinguser/aa;-><init>()V

    .line 43
    invoke-virtual {v7, p6}, Lcom/kingroot/kinguser/aa;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/bzu;->ge()Landroid/content/Context;

    move-result-object v1

    .line 45
    iget-object v8, p0, Lcom/kingroot/kinguser/ov;->ym:Lcom/kingroot/kinguser/pv;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v8}, Lcom/kingroot/kinguser/ox;->a(Landroid/content/Context;JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/aa;Lcom/kingroot/kinguser/pv;)V

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/x;IIILcom/qq/taf/jce/JceStruct;)V
    .locals 8

    .prologue
    .line 29
    if-eqz p1, :cond_0

    instance-of v0, p5, Lcom/kingroot/kinguser/u;

    if-nez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, p5

    .line 34
    check-cast v6, Lcom/kingroot/kinguser/u;

    .line 35
    new-instance v7, Lcom/qq/taf/jce/JceInputStream;

    iget-object v0, v6, Lcom/kingroot/kinguser/u;->gn:[B

    invoke-direct {v7, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 36
    const-string v0, "UTF-8"

    invoke-virtual {v7, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 38
    iget-wide v2, p1, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/x;->gu:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/kingroot/kinguser/ov;->a(JJLcom/kingroot/kinguser/u;Lcom/qq/taf/jce/JceInputStream;)V

    goto :goto_0
.end method
