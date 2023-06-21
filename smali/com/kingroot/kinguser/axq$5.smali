.class Lcom/kingroot/kinguser/axq$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ClipView$b;


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
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gE()V
    .locals 4

    .prologue
    .line 853
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FE()Z

    move-result v1

    .line 855
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FB()Z

    move-result v2

    .line 856
    invoke-static {}, Lcom/kingroot/kinguser/bgt;->abX()Z

    move-result v3

    .line 859
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v1}, Lcom/kingroot/kinguser/axq;->d(Lcom/kingroot/kinguser/axq;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    new-instance v2, Lcom/kingroot/kinguser/bii;

    iget-object v3, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v3}, Lcom/kingroot/kinguser/axq;->e(Lcom/kingroot/kinguser/axq;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bii;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/axq;->a(Lcom/kingroot/kinguser/axq;Lcom/kingroot/kinguser/bii;)Lcom/kingroot/kinguser/bii;

    .line 862
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/aks;->bE(J)V

    .line 863
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 864
    iget-object v2, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v2}, Lcom/kingroot/kinguser/axq;->f(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bii;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bii;->show()V

    .line 865
    iget-object v2, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v2}, Lcom/kingroot/kinguser/axq;->f(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bii;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bii;->eg(Z)V

    .line 866
    iget-object v2, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v2}, Lcom/kingroot/kinguser/axq;->f(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bii;

    move-result-object v2

    const v3, 0x7f070245

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bii;->lN(Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v2}, Lcom/kingroot/kinguser/axq;->f(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bii;

    move-result-object v2

    const v3, 0x7f070243

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bii;->lM(Ljava/lang/String;)V

    .line 868
    iget-object v2, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v2}, Lcom/kingroot/kinguser/axq;->f(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bii;

    move-result-object v2

    const v3, 0x7f0200a4

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bii;->h(Landroid/graphics/drawable/Drawable;)V

    .line 869
    iget-object v2, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v2}, Lcom/kingroot/kinguser/axq;->f(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bii;

    move-result-object v2

    const v3, 0x7f070244

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bii;->lK(Ljava/lang/String;)V

    .line 870
    iget-object v1, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v1}, Lcom/kingroot/kinguser/axq;->f(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bii;

    move-result-object v1

    const v2, 0x7f0201f8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bii;->jd(I)V

    .line 871
    iget-object v1, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v1}, Lcom/kingroot/kinguser/axq;->f(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bii;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/axq$5$1;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/axq$5$1;-><init>(Lcom/kingroot/kinguser/axq$5;Lcom/kingroot/kinguser/aks;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bii;->n(Landroid/view/View$OnClickListener;)V

    .line 882
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v0}, Lcom/kingroot/kinguser/axq;->f(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bii;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axq$5$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axq$5$2;-><init>(Lcom/kingroot/kinguser/axq$5;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bii;->a(Lcom/kingroot/kinguser/bii$a;)V

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v0}, Lcom/kingroot/kinguser/axq;->c(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/auj$a;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auj$a;->gQ(I)V

    goto :goto_0
.end method
