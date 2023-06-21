.class Lcom/kingroot/kinguser/axc$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axc;->TI()V
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
    .line 617
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$11;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$11;->aXx:Lcom/kingroot/kinguser/axc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axc;->a(Lcom/kingroot/kinguser/axc;Z)Z

    .line 621
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axc$11;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v1}, Lcom/kingroot/kinguser/axc;->e(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 623
    new-instance v0, Lcom/kingroot/kinguser/axc$11$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axc$11$1;-><init>(Lcom/kingroot/kinguser/axc$11;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 632
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187f2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 633
    return-void
.end method
