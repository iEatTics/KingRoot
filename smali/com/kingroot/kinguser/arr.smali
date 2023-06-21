.class public Lcom/kingroot/kinguser/arr;
.super Lcom/kingroot/kinguser/arl;
.source "SourceFile"


# instance fields
.field private aMd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/kingroot/kinguser/arl;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/arr;->aMd:Z

    return-void
.end method


# virtual methods
.method protected MG()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 13
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->aeW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Et()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/arr;->aMd:Z

    .line 16
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ef()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/arr;->aMd:Z

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 14
    goto :goto_0

    :cond_1
    move v1, v2

    .line 16
    goto :goto_1
.end method

.method protected MH()Z
    .locals 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/kingroot/kinguser/arr;->aMd:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->aeV()V

    .line 23
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eB(I)V

    .line 26
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
