.class Lcom/kingroot/kinguser/axg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axg;->cO(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYv:Lcom/kingroot/kinguser/axg;

.field final synthetic aYw:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;Z)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$2;->aYv:Lcom/kingroot/kinguser/axg;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/axg$2;->aYw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$2;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-static {v0}, Lcom/kingroot/kinguser/axg;->d(Lcom/kingroot/kinguser/axg;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f0243

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 431
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$2;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-static {v0}, Lcom/kingroot/kinguser/axg;->d(Lcom/kingroot/kinguser/axg;)Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0f020c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 433
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axg$2;->aYw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axg$2;->aYw:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    :goto_1
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/axg;->g(Landroid/view/View;F)V

    .line 437
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$2;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-static {v0}, Lcom/kingroot/kinguser/axg;->d(Lcom/kingroot/kinguser/axg;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f016c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/axg$2$1;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/axg$2$1;-><init>(Lcom/kingroot/kinguser/axg$2;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 447
    return-void

    .line 433
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 434
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
