.class Lcom/kingroot/kinguser/axq$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axq$5;->gE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bao:Lcom/kingroot/kinguser/aks;

.field final synthetic bbh:Lcom/kingroot/kinguser/axq$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axq$5;Lcom/kingroot/kinguser/aks;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$5$1;->bbh:Lcom/kingroot/kinguser/axq$5;

    iput-object p2, p0, Lcom/kingroot/kinguser/axq$5$1;->bao:Lcom/kingroot/kinguser/aks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$5$1;->bbh:Lcom/kingroot/kinguser/axq$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v0}, Lcom/kingroot/kinguser/axq;->f(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bii;->dismiss()V

    .line 876
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188d4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 878
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$5$1;->bao:Lcom/kingroot/kinguser/aks;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->ci(Z)V

    .line 879
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$5$1;->bbh:Lcom/kingroot/kinguser/axq$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v0}, Lcom/kingroot/kinguser/axq;->c(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/auj$a;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auj$a;->gQ(I)V

    .line 880
    return-void
.end method
