.class Lcom/kingroot/kinguser/anx$2$1;
.super Lcom/kingroot/kinguser/bhk$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anx$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEI:Lcom/kingroot/kinguser/anx$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anx$2;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/kingroot/kinguser/anx$2$1;->aEI:Lcom/kingroot/kinguser/anx$2;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bhk$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/anx$2$1;->aEI:Lcom/kingroot/kinguser/anx$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/anx$2;->yu:Landroid/content/Context;

    const v1, 0x7f04001e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 159
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 160
    iget-object v1, p0, Lcom/kingroot/kinguser/anx$2$1;->aEI:Lcom/kingroot/kinguser/anx$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/anx$2;->aEH:Lcom/kingroot/kinguser/anx;

    invoke-static {v1}, Lcom/kingroot/kinguser/anx;->c(Lcom/kingroot/kinguser/anx;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/anx$2$1;->aEI:Lcom/kingroot/kinguser/anx$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/anx$2;->aEH:Lcom/kingroot/kinguser/anx;

    invoke-static {v0}, Lcom/kingroot/kinguser/anx;->c(Lcom/kingroot/kinguser/anx;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/anx$2$1;->aEI:Lcom/kingroot/kinguser/anx$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/anx$2;->aEH:Lcom/kingroot/kinguser/anx;

    invoke-static {v0}, Lcom/kingroot/kinguser/anx;->a(Lcom/kingroot/kinguser/anx;)Lcom/kingroot/kinguser/anx$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/anx$a;->xr()V

    .line 163
    return-void
.end method
