.class Lcom/kingroot/kinguser/ayc$2;
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
    .line 129
    iput-object p1, p0, Lcom/kingroot/kinguser/ayc$2;->bcE:Lcom/kingroot/kinguser/ayc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x18760

    const v2, 0x1875f

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/ayc$2;->bcE:Lcom/kingroot/kinguser/ayc;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayc;->a(Lcom/kingroot/kinguser/ayc;)Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dg()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 133
    :goto_0
    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bj(I)V

    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/ady;->bk(I)V

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/ayc$2;->bcE:Lcom/kingroot/kinguser/ayc;

    invoke-static {v1}, Lcom/kingroot/kinguser/ayc;->a(Lcom/kingroot/kinguser/ayc;)Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->bB(Z)V

    .line 144
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/ady;->bj(I)V

    .line 141
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bk(I)V

    goto :goto_1
.end method
