.class public Lcom/kingroot/kinguser/bkx;
.super Lcom/kingroot/kinguser/re;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/kingroot/kinguser/re;-><init>()V

    return-void
.end method


# virtual methods
.method public hI()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    return v0
.end method

.method public hJ()Lcom/kingroot/kinguser/vv;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/kinguser/avo;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avo;-><init>()V

    return-object v0
.end method

.method public hM()Z
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FN()Z

    move-result v0

    return v0
.end method
