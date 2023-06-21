.class Lcom/kingroot/kinguser/axc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axc;->TF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXx:Lcom/kingroot/kinguser/axc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axc;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$1;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$1;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070317

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$1;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->a(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 222
    :goto_1
    iget-object v3, p0, Lcom/kingroot/kinguser/axc$1;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v3}, Lcom/kingroot/kinguser/axc;->a(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/aks;->bc(Z)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$1;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->a(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    invoke-static {}, Lcom/kingroot/kinguser/bby;->WY()V

    .line 228
    invoke-static {}, Lcom/kingroot/kinguser/bbf;->Wn()V

    .line 239
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$1;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axc;->oR()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 221
    goto :goto_1

    .line 231
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bc(Z)V

    .line 234
    invoke-static {}, Lcom/kingroot/kinguser/ajn;->zp()Lcom/kingroot/kinguser/ajn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajn;->zq()V

    .line 237
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yT()Lcom/kingroot/kinguser/ajb;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/ajb;->checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V

    goto :goto_2
.end method
