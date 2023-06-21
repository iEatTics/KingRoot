.class Lcom/kingroot/kinguser/aiv$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aiv;->yD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic asy:Lcom/kingroot/kinguser/aiv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aiv;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/kingroot/kinguser/aiv$6;->asy:Lcom/kingroot/kinguser/aiv;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 993
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 995
    invoke-static {}, Lcom/kingroot/kinguser/bap;->VF()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/aiu;->aM(Z)I

    move-result v0

    if-nez v0, :cond_0

    .line 997
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bG(Z)V

    .line 998
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bF(Z)V

    .line 999
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->es(I)V

    .line 1001
    :cond_0
    return-void
.end method
