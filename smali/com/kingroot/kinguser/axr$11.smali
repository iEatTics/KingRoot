.class Lcom/kingroot/kinguser/axr$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bic$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axr;->a(ILcom/kingroot/kinguser/bcy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qj:I

.field final synthetic bbr:Lcom/kingroot/kinguser/axr;

.field final synthetic bby:Lcom/kingroot/kinguser/bcy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axr;ILcom/kingroot/kinguser/bcy;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/kingroot/kinguser/axr$11;->bbr:Lcom/kingroot/kinguser/axr;

    iput p2, p0, Lcom/kingroot/kinguser/axr$11;->Qj:I

    iput-object p3, p0, Lcom/kingroot/kinguser/axr$11;->bby:Lcom/kingroot/kinguser/bcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1886d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 315
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$11;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->b(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/auk$a;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/axr$11;->Qj:I

    iget-object v2, p0, Lcom/kingroot/kinguser/axr$11;->bby:Lcom/kingroot/kinguser/bcy;

    invoke-interface {v0, v1, v2, p2}, Lcom/kingroot/kinguser/auk$a;->a(ILcom/kingroot/kinguser/bcy;Z)V

    .line 316
    return-void
.end method
