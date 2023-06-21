.class Lcom/kingroot/kinguser/afi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/afi;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahG:Lcom/kingroot/kinguser/afi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afi;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/kingroot/kinguser/afi$1;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$1;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {v0}, Lcom/kingroot/kinguser/afi;->a(Lcom/kingroot/kinguser/afi;)Lcom/kingroot/kinguser/afh;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/afh;->cR(I)Lcom/kingroot/kinguser/aex$a;

    move-result-object v0

    .line 163
    new-instance v1, Lcom/kingroot/kinguser/bjp;

    iget-object v2, p0, Lcom/kingroot/kinguser/afi$1;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/afi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/bjp;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/aex$a;)V

    .line 164
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjp;->show()V

    .line 165
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bjp;->iY(I)V

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$1;->ahG:Lcom/kingroot/kinguser/afi;

    const-wide/32 v2, 0x7f070373

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/afi;->V(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bjp;->lK(Ljava/lang/String;)V

    .line 168
    return-void
.end method
