.class public Lcom/kingroot/kinguser/arn;
.super Lcom/kingroot/kinguser/arl;
.source "SourceFile"


# instance fields
.field private aLV:Z

.field private aLW:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Lcom/kingroot/kinguser/arl;-><init>()V

    .line 9
    iput-boolean v0, p0, Lcom/kingroot/kinguser/arn;->aLV:Z

    .line 12
    iput v0, p0, Lcom/kingroot/kinguser/arn;->aLW:I

    return-void
.end method


# virtual methods
.method protected MG()Z
    .locals 6

    .prologue
    .line 16
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ef()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/arn;->aLV:Z

    .line 17
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ek()J

    move-result-wide v0

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 19
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 20
    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/arn;->aLW:I

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/arn;->aLV:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/arn;->aLW:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected MH()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public Nn()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/arn;->aLW:I

    return v0
.end method
