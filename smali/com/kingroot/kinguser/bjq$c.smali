.class final Lcom/kingroot/kinguser/bjq$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic bxW:Lcom/kingroot/kinguser/bjq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjq;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/kingroot/kinguser/bjq$c;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 451
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$c;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aer;->aq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f000f

    if-ne v0, v1, :cond_2

    .line 457
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18790

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 458
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$c;->bxW:Lcom/kingroot/kinguser/bjq;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bjq;->b(Lcom/kingroot/kinguser/bjq;I)V

    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f0010

    if-ne v0, v1, :cond_0

    .line 462
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18791

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 463
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$c;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bjq;->b(Lcom/kingroot/kinguser/bjq;I)V

    .line 465
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$c;->bxW:Lcom/kingroot/kinguser/bjq;

    iput v2, v0, Lcom/kingroot/kinguser/bjq;->bxN:I

    goto :goto_0
.end method
