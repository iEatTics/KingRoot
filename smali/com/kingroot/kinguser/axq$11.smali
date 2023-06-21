.class Lcom/kingroot/kinguser/axq$11;
.super Lcom/kingroot/kinguser/axq$a;
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
    .line 719
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$11;->bbg:Lcom/kingroot/kinguser/axq;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/axq$a;-><init>(Lcom/kingroot/kinguser/axq;Lcom/kingroot/kinguser/axq$1;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 723
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bX(Z)V

    .line 725
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1885f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 726
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$11;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/axq;->cS(Z)V

    .line 727
    return-void
.end method
