.class Lcom/kingroot/kinguser/axc$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axc;->TG()V
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
    .line 519
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 523
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1876c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 525
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->c(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bim;->show()V

    .line 526
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->c(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bim;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07030d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bim;->setTitleText(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->c(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bim;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703a8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bim;->d(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->c(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bim;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070395

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bim;->lJ(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->c(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bim;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bim;->lK(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->c(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bim;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bim;->C(F)V

    .line 531
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->c(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bim;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bim;->lL(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->c(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bim;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/bid$a;->bti:Lcom/kingroot/kinguser/bid$a;

    const v2, 0x7f0e001a

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bim;->a(Lcom/kingroot/kinguser/bid$a;I)V

    .line 533
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->c(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bim;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axc$9$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axc$9$1;-><init>(Lcom/kingroot/kinguser/axc$9;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bim;->b(Lcom/kingroot/kinguser/bic$a;)V

    .line 545
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->c(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bim;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axc$9$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axc$9$2;-><init>(Lcom/kingroot/kinguser/axc$9;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bim;->a(Lcom/kingroot/kinguser/bic$a;)V

    .line 552
    return-void
.end method
