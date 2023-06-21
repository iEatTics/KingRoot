.class Lcom/kingroot/kinguser/axq$12;
.super Lcom/kingroot/kinguser/axq$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbg:Lcom/kingroot/kinguser/axq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axq;)V
    .locals 1

    .prologue
    .line 757
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$12;->bbg:Lcom/kingroot/kinguser/axq;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/axq$b;-><init>(Lcom/kingroot/kinguser/axq;Lcom/kingroot/kinguser/axq$1;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 762
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bX(Z)V

    .line 763
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axq$12;->aYC:Z

    if-eqz v0, :cond_0

    .line 765
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1885b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 770
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$12;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v0}, Lcom/kingroot/kinguser/axq;->c(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/auj$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/auj$a;->Qj()V

    .line 771
    return-void

    .line 768
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1885a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method
