.class public Lcom/kingroot/kinguser/ara;
.super Lcom/kingroot/kinguser/aqy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/aqy",
        "<",
        "Lcom/kingroot/kinguser/arn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqy;-><init>()V

    .line 14
    const-class v0, Lcom/kingroot/kinguser/arn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/arq;->a(Ljava/lang/Class;Z)Lcom/kingroot/kinguser/aqb;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/arn;

    iput-object v0, p0, Lcom/kingroot/kinguser/ara;->aLz:Lcom/kingroot/kinguser/arl;

    .line 15
    return-void
.end method


# virtual methods
.method public MK()I
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/ara;->aLz:Lcom/kingroot/kinguser/arl;

    check-cast v0, Lcom/kingroot/kinguser/arn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arn;->Nn()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ara;->aLz:Lcom/kingroot/kinguser/arl;

    check-cast v0, Lcom/kingroot/kinguser/arn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arn;->Nn()I

    move-result v0

    goto :goto_0
.end method

.method public Nb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public Nc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public Nd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public Nf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method
