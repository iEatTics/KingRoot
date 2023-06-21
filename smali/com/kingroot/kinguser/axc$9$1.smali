.class Lcom/kingroot/kinguser/axc$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bic$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axc$9;->n(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXz:Lcom/kingroot/kinguser/axc$9;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axc$9;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$9$1;->aXz:Lcom/kingroot/kinguser/axc$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 536
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/aks;->bi(Z)V

    .line 537
    if-nez p2, :cond_0

    .line 539
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18793

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$9$1;->aXz:Lcom/kingroot/kinguser/axc$9;

    iget-object v0, v0, Lcom/kingroot/kinguser/axc$9;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->d(Lcom/kingroot/kinguser/axc;)V

    .line 543
    return-void
.end method
