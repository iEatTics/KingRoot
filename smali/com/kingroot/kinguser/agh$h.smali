.class abstract Lcom/kingroot/kinguser/agh$h;
.super Lcom/kingroot/kinguser/agh$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "h"
.end annotation


# instance fields
.field private alK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/agh$k;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic amc:Lcom/kingroot/kinguser/agh;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 464
    iput-object p1, p0, Lcom/kingroot/kinguser/agh$h;->amc:Lcom/kingroot/kinguser/agh;

    .line 465
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/agh$a;-><init>(Landroid/view/View;)V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$h;->alK:Ljava/lang/ref/WeakReference;

    move-object v0, p2

    .line 467
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/ws;->h(Landroid/view/View;)V

    .line 469
    const v0, 0x7f0f024e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 477
    :goto_0
    if-eqz p3, :cond_0

    .line 478
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$h;->alK:Ljava/lang/ref/WeakReference;

    .line 480
    :cond_0
    return-void

    .line 474
    :cond_1
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/bcy;)V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$h;->alK:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$h;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agh$k;

    .line 493
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agh$h;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/agh$k;->c(Landroid/view/View;I)V

    goto :goto_0
.end method
