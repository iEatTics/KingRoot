.class Lcom/kingroot/kinguser/anx$2;
.super Lcom/kingroot/kinguser/bhk$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anx;->aV(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEH:Lcom/kingroot/kinguser/anx;

.field final synthetic yu:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anx;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/kingroot/kinguser/anx$2;->aEH:Lcom/kingroot/kinguser/anx;

    iput-object p2, p0, Lcom/kingroot/kinguser/anx$2;->yu:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bhk$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/anx$2;->aEH:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->JQ()V

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/anx$2;->yu:Landroid/content/Context;

    const v1, 0x7f04001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/kingroot/kinguser/xr;

    sget-object v2, Lcom/kingroot/kinguser/xq;->UC:Lcom/kingroot/kinguser/xq;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/xr;-><init>(Lcom/kingroot/kinguser/xq;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 155
    new-instance v1, Lcom/kingroot/kinguser/anx$2$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/anx$2$1;-><init>(Lcom/kingroot/kinguser/anx$2;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 165
    iget-object v1, p0, Lcom/kingroot/kinguser/anx$2;->aEH:Lcom/kingroot/kinguser/anx;

    invoke-static {v1}, Lcom/kingroot/kinguser/anx;->d(Lcom/kingroot/kinguser/anx;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    return-void
.end method
