.class Lcom/kingroot/kinguser/ayc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayc;->TF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcE:Lcom/kingroot/kinguser/ayc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayc;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/kingroot/kinguser/ayc$1;->bcE:Lcom/kingroot/kinguser/ayc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x18740

    const v2, 0x1873f

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/ayc$1;->bcE:Lcom/kingroot/kinguser/ayc;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayc;->a(Lcom/kingroot/kinguser/ayc;)Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CE()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 102
    :goto_0
    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bj(I)V

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/ady;->bk(I)V

    .line 112
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/ayc$1;->bcE:Lcom/kingroot/kinguser/ayc;

    invoke-static {v1}, Lcom/kingroot/kinguser/ayc;->a(Lcom/kingroot/kinguser/ayc;)Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->bq(Z)V

    .line 113
    iget-object v1, p0, Lcom/kingroot/kinguser/ayc$1;->bcE:Lcom/kingroot/kinguser/ayc;

    invoke-static {v1}, Lcom/kingroot/kinguser/ayc;->a(Lcom/kingroot/kinguser/ayc;)Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->bB(Z)V

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/ayc$1;->bcE:Lcom/kingroot/kinguser/ayc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ayc;->oR()V

    .line 116
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/ady;->bj(I)V

    .line 110
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bk(I)V

    goto :goto_1
.end method
