.class public Lcom/kingroot/kinguser/arb;
.super Lcom/kingroot/kinguser/aqy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/aqy",
        "<",
        "Lcom/kingroot/kinguser/arl;",
        ">;"
    }
.end annotation


# instance fields
.field private aLG:I

.field private aLH:I

.field private aLI:I

.field private aLJ:I

.field private final key:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqy;-><init>()V

    .line 22
    iput v0, p0, Lcom/kingroot/kinguser/arb;->aLG:I

    .line 25
    iput v0, p0, Lcom/kingroot/kinguser/arb;->aLH:I

    .line 28
    iput v0, p0, Lcom/kingroot/kinguser/arb;->aLI:I

    .line 31
    iput v0, p0, Lcom/kingroot/kinguser/arb;->aLJ:I

    .line 56
    iput p1, p0, Lcom/kingroot/kinguser/arb;->aLG:I

    .line 57
    iput p1, p0, Lcom/kingroot/kinguser/arb;->aLH:I

    .line 58
    iput p1, p0, Lcom/kingroot/kinguser/arb;->aLI:I

    .line 59
    iput p1, p0, Lcom/kingroot/kinguser/arb;->aLJ:I

    .line 60
    iput p2, p0, Lcom/kingroot/kinguser/arb;->key:I

    .line 61
    return-void
.end method


# virtual methods
.method public MK()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public Nb()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/kingroot/kinguser/arb;->aLI:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/arb;->aLI:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Nc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/kingroot/kinguser/arb;->aLI:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/arb;->aLI:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Nd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/kingroot/kinguser/arb;->aLJ:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/arb;->aLJ:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Nf()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/kingroot/kinguser/arb;->aLJ:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/arb;->aLJ:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/kingroot/kinguser/aqy;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/arb;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
