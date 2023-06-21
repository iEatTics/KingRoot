.class Lcom/kingroot/kinguser/bjq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjq;->vg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxW:Lcom/kingroot/kinguser/bjq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjq;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/kingroot/kinguser/bjq$3;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 434
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$3;->bxW:Lcom/kingroot/kinguser/bjq;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$3;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjq;->c(Lcom/kingroot/kinguser/bjq;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$3;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bjq;->a(Lcom/kingroot/kinguser/bjq;Z)Z

    .line 438
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$3;->bxW:Lcom/kingroot/kinguser/bjq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bjq;->a(Lcom/kingroot/kinguser/bjq;Z)Z

    .line 425
    return-void
.end method
