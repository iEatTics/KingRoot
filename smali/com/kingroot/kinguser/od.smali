.class public Lcom/kingroot/kinguser/od;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/oo;


# instance fields
.field private xW:Lcom/kingroot/kinguser/og;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/kingroot/kinguser/og;

    invoke-direct {v0}, Lcom/kingroot/kinguser/og;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/od;->xW:Lcom/kingroot/kinguser/og;

    .line 33
    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/od;->xW:Lcom/kingroot/kinguser/og;

    invoke-virtual {v0, p1, v2}, Lcom/kingroot/kinguser/og;->aA(II)Lcom/kingroot/kinguser/cck;

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/od;->xW:Lcom/kingroot/kinguser/og;

    new-instance v1, Lcom/kingroot/kinguser/oe;

    invoke-direct {v1, p0, p3}, Lcom/kingroot/kinguser/oe;-><init>(Lcom/kingroot/kinguser/od;Lcom/kingroot/kinguser/cat;)V

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/kingroot/kinguser/og;->a(ILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;)V

    .line 82
    return-void
.end method

.method public a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V
    .locals 6

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/od;->xW:Lcom/kingroot/kinguser/og;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/of;

    invoke-direct {v5, p0, p4}, Lcom/kingroot/kinguser/of;-><init>(Lcom/kingroot/kinguser/od;Lcom/kingroot/kinguser/cat;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/og;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;)Ljava/lang/ref/WeakReference;

    .line 97
    return-void
.end method

.method public a(Landroid/content/Context;ZZZLcom/kingroot/kinguser/cas;Lcom/kingroot/kinguser/cau;Lcom/kingroot/kinguser/cgj;Lcom/kingroot/kinguser/car;)V
    .locals 10

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/od;->xW:Lcom/kingroot/kinguser/og;

    new-instance v3, Lcom/kingroot/kinguser/on;

    invoke-direct {v3}, Lcom/kingroot/kinguser/on;-><init>()V

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p5

    move-object/from16 v4, p6

    move v5, p2

    move v6, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/kingroot/kinguser/og;->a(Landroid/content/Context;Lcom/kingroot/kinguser/cas;Lcom/kingroot/kinguser/cdy;Lcom/kingroot/kinguser/cau;ZZLjava/lang/String;Lcom/kingroot/kinguser/cgj;Lcom/kingroot/kinguser/car;)V

    .line 46
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZT:Z

    if-eqz v0, :cond_0

    .line 51
    :cond_0
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_1

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/od;->xW:Lcom/kingroot/kinguser/og;

    invoke-virtual {v0, p4}, Lcom/kingroot/kinguser/og;->p(Z)V

    goto :goto_0
.end method
