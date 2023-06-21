.class public Lcom/kingroot/kinguser/aqv;
.super Lcom/kingroot/kinguser/aqs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/are;)V
    .locals 4

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqs;-><init>()V

    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/aqv;->aLu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/aqv;->aLu:Ljava/util/List;

    new-instance v1, Lcom/kingroot/kinguser/arh;

    invoke-direct {v1}, Lcom/kingroot/kinguser/arh;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/aqv;->aLu:Ljava/util/List;

    new-instance v1, Lcom/kingroot/kinguser/arb;

    const v2, 0x7f0700d4

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/kingroot/kinguser/arb;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/aqv;->aLu:Ljava/util/List;

    new-instance v1, Lcom/kingroot/kinguser/arc;

    const v2, 0x7f070111

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/arc;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method


# virtual methods
.method public ME()Ljava/lang/String;
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f090005

    iget v2, p0, Lcom/kingroot/kinguser/aqv;->aLy:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/kingroot/kinguser/aqv;->aLy:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MF()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    iget v0, p0, Lcom/kingroot/kinguser/aqv;->aLx:I

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700f3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700f1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/kingroot/kinguser/aqv;->aLx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public MS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700e9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MT()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700ed

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MU()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700ee

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f020191

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
