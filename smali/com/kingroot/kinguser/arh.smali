.class public Lcom/kingroot/kinguser/arh;
.super Lcom/kingroot/kinguser/aqy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/aqy",
        "<",
        "Lcom/kingroot/kinguser/ars;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqy;-><init>()V

    .line 15
    const-class v0, Lcom/kingroot/kinguser/ars;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/arq;->a(Ljava/lang/Class;Z)Lcom/kingroot/kinguser/aqb;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ars;

    iput-object v0, p0, Lcom/kingroot/kinguser/arh;->aLz:Lcom/kingroot/kinguser/arl;

    .line 16
    return-void
.end method


# virtual methods
.method public Au()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public MK()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method protected Nb()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Nc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Nd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Nf()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
