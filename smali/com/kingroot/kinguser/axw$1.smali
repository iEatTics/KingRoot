.class Lcom/kingroot/kinguser/axw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axw;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bch:Lcom/kingroot/kinguser/axw;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axw;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kingroot/kinguser/axw$1;->bch:Lcom/kingroot/kinguser/axw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/axw$1;->bch:Lcom/kingroot/kinguser/axw;

    invoke-static {v0}, Lcom/kingroot/kinguser/axw;->a(Lcom/kingroot/kinguser/axw;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axw$1;->bch:Lcom/kingroot/kinguser/axw;

    invoke-static {v0}, Lcom/kingroot/kinguser/axw;->b(Lcom/kingroot/kinguser/axw;)Landroid/widget/BaseAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/kingroot/kinguser/axw$a;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axw$1;->bch:Lcom/kingroot/kinguser/axw;

    invoke-static {v0}, Lcom/kingroot/kinguser/axw;->c(Lcom/kingroot/kinguser/axw;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/axw$a;

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/axw$a;->hD(I)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/axw$1;->bch:Lcom/kingroot/kinguser/axw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axw;->oR()V

    .line 63
    :cond_0
    return-void
.end method
