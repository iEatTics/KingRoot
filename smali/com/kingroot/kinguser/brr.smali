.class public Lcom/kingroot/kinguser/brr;
.super Lcom/kingroot/kinguser/brl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingroot/kinguser/brl;-><init>()V

    return-void
.end method


# virtual methods
.method public ahF()V
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/brr;->mState:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/brr;->mState:I

    .line 44
    return-void
.end method

.method public kd(I)V
    .locals 2

    .prologue
    .line 15
    iget v0, p0, Lcom/kingroot/kinguser/brr;->mState:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/brr;->mState:I

    .line 16
    iget v0, p0, Lcom/kingroot/kinguser/brr;->bKf:I

    if-nez v0, :cond_2

    .line 17
    iput p1, p0, Lcom/kingroot/kinguser/brr;->bKf:I

    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/brr;->bKf:I

    if-nez v0, :cond_0

    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/brr;->bKf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/brr;->bKf:I

    .line 24
    :cond_0
    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/brr;->bKd:I

    if-lez v0, :cond_1

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/brr;->bKd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/brr;->bKd:I

    .line 27
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/brr;->bKg:J

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdLifeCycle onDisplay:mWeight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/kingroot/kinguser/brr;->bKf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|maxweight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|mRemainDisplayCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/brr;->bKd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 29
    return-void

    .line 22
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/brr;->bKf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/brr;->bKf:I

    goto :goto_0
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/brr;->mState:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/brr;->mState:I

    .line 34
    iget v0, p0, Lcom/kingroot/kinguser/brr;->bKf:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/brr;->bKf:I

    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/brr;->bKe:I

    if-lez v0, :cond_0

    .line 36
    iget v0, p0, Lcom/kingroot/kinguser/brr;->bKe:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/brr;->bKe:I

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdLifeCycle onDisplay:mWeight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/kingroot/kinguser/brr;->bKf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|mRemainDisplayCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/brr;->bKd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 39
    return-void
.end method
