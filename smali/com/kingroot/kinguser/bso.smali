.class public Lcom/kingroot/kinguser/bso;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bLT:I

.field public bLU:I

.field public bLV:Lcom/kingroot/kinguser/bsp;

.field public gw:I

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/kingroot/kinguser/bso;->bLT:I

    .line 6
    iput v0, p0, Lcom/kingroot/kinguser/bso;->bLU:I

    .line 3
    return-void
.end method


# virtual methods
.method public ahH()Z
    .locals 4

    .prologue
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 12
    iget-object v1, p0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget v1, v1, Lcom/kingroot/kinguser/bsp;->bKb:I

    if-ge v1, v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 15
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ahX()Z
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/bso;->bLT:I

    if-eqz v0, :cond_0

    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/bso;->bLU:I

    if-nez v0, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v1, "DbUnifiedData [phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/kingroot/kinguser/bso;->gw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", displayMaxTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget v1, p0, Lcom/kingroot/kinguser/bso;->bLT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", clickMaxTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget v1, p0, Lcom/kingroot/kinguser/bso;->bLU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/kingroot/kinguser/bso;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ", unifiedAdData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
