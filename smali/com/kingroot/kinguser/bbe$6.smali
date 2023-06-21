.class final Lcom/kingroot/kinguser/bbe$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 532
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 534
    invoke-static {}, Lcom/kingroot/kinguser/arv;->NB()V

    .line 537
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ey()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    .line 543
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/arv;->isWeSecureInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/kingroot/kinguser/arv;->getAllRiskApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v1

    .line 556
    if-nez v1, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/kingroot/kinguser/arv;->downloadWeSecure()V

    goto :goto_0
.end method
