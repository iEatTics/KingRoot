.class Lcom/kingroot/kinguser/bjj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjj;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxe:Lcom/kingroot/kinguser/bjj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjj;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/kingroot/kinguser/bjj$1;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$1;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjj;->a(Lcom/kingroot/kinguser/bjj;)Lcom/kingroot/kinguser/aex;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/aex;->bU(I)Lcom/kingroot/kinguser/yn$b;

    move-result-object v0

    .line 131
    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 135
    if-eqz v0, :cond_0

    .line 139
    iget-boolean v1, v0, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    if-eqz v1, :cond_0

    .line 141
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1878e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 143
    new-instance v1, Lcom/kingroot/kinguser/bjp;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjj$1;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bjj;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/bjp;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/aex$a;)V

    .line 144
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjp;->show()V

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$1;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjj;->b(Lcom/kingroot/kinguser/bjj;)Lcom/kingroot/kinguser/bjp$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bjp;->a(Lcom/kingroot/kinguser/bjp$a;)V

    goto :goto_0
.end method
