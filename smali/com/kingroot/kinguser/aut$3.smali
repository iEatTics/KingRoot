.class Lcom/kingroot/kinguser/aut$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aut;->a(Landroid/widget/Button;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qj:I

.field final synthetic aSO:Lcom/kingroot/kinguser/aut;

.field final synthetic aSS:Lcom/kingroot/kinguser/bcy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aut;Lcom/kingroot/kinguser/bcy;I)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/kingroot/kinguser/aut$3;->aSO:Lcom/kingroot/kinguser/aut;

    iput-object p2, p0, Lcom/kingroot/kinguser/aut$3;->aSS:Lcom/kingroot/kinguser/bcy;

    iput p3, p0, Lcom/kingroot/kinguser/aut$3;->Qj:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 203
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$3;->aSS:Lcom/kingroot/kinguser/bcy;

    instance-of v0, v0, Lcom/kingroot/kinguser/bdg;

    if-eqz v0, :cond_1

    .line 208
    iget-object v1, p0, Lcom/kingroot/kinguser/aut$3;->aSO:Lcom/kingroot/kinguser/aut;

    iget-object v0, p0, Lcom/kingroot/kinguser/aut$3;->aSS:Lcom/kingroot/kinguser/bcy;

    check-cast v0, Lcom/kingroot/kinguser/bdg;

    iget v2, p0, Lcom/kingroot/kinguser/aut$3;->Qj:I

    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/aut;->a(Lcom/kingroot/kinguser/aut;Lcom/kingroot/kinguser/bdg;I)Z

    move-result v0

    .line 223
    :goto_0
    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lcom/kingroot/kinguser/aut$3$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aut$3$1;-><init>(Lcom/kingroot/kinguser/aut$3;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 231
    :cond_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$3;->aSS:Lcom/kingroot/kinguser/bcy;

    instance-of v0, v0, Lcom/kingroot/kinguser/bdi;

    if-eqz v0, :cond_2

    .line 210
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18873

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$3;->aSS:Lcom/kingroot/kinguser/bcy;

    check-cast v0, Lcom/kingroot/kinguser/bdi;

    .line 212
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdi;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RootSafe"

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/apd;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/kingroot/kinguser/aut$3;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-static {v2}, Lcom/kingroot/kinguser/aut;->c(Lcom/kingroot/kinguser/aut;)Lcom/kingroot/kinguser/auk$b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdi;->YC()Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/auk$b;->f(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V

    move v0, v1

    .line 215
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$3;->aSS:Lcom/kingroot/kinguser/bcy;

    instance-of v0, v0, Lcom/kingroot/kinguser/bdc;

    if-eqz v0, :cond_3

    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18870

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$3;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-static {v0}, Lcom/kingroot/kinguser/aut;->c(Lcom/kingroot/kinguser/aut;)Lcom/kingroot/kinguser/auk$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/auk$b;->Qp()V

    move v0, v1

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$3;->aSS:Lcom/kingroot/kinguser/bcy;

    instance-of v0, v0, Lcom/kingroot/kinguser/bda;

    if-eqz v0, :cond_4

    .line 219
    const/4 v0, 0x0

    .line 220
    iget-object v2, p0, Lcom/kingroot/kinguser/aut$3;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-static {v2}, Lcom/kingroot/kinguser/aut;->c(Lcom/kingroot/kinguser/aut;)Lcom/kingroot/kinguser/auk$b;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/kingroot/kinguser/auk$b;->cV(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
