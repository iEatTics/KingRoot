.class Lcom/kingcore/uilib/LoadingCircle$5;
.super Lcom/kingroot/kinguser/px;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/LoadingCircle;->a(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bc:Lcom/kingcore/uilib/LoadingCircle;

.field final synthetic Bd:F

.field final synthetic Be:F


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/LoadingCircle;FF)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/kingcore/uilib/LoadingCircle$5;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    iput p2, p0, Lcom/kingcore/uilib/LoadingCircle$5;->Bd:F

    iput p3, p0, Lcom/kingcore/uilib/LoadingCircle$5;->Be:F

    invoke-direct {p0}, Lcom/kingroot/kinguser/px;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 287
    new-instance v0, Lcom/kingroot/kinguser/qc;

    iget-object v1, p0, Lcom/kingcore/uilib/LoadingCircle$5;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    invoke-static {v1}, Lcom/kingcore/uilib/LoadingCircle;->b(Lcom/kingcore/uilib/LoadingCircle;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/view/ContextThemeWrapper;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    iget v4, p0, Lcom/kingcore/uilib/LoadingCircle$5;->Bd:F

    iget v5, p0, Lcom/kingcore/uilib/LoadingCircle$5;->Be:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/qc;-><init>(Landroid/view/ContextThemeWrapper;FFFFFZ)V

    .line 288
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/qc;->setDuration(J)V

    .line 289
    invoke-virtual {v0, v7}, Lcom/kingroot/kinguser/qc;->setFillAfter(Z)V

    .line 290
    iget-object v1, p0, Lcom/kingcore/uilib/LoadingCircle$5;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    invoke-static {v1}, Lcom/kingcore/uilib/LoadingCircle;->c(Lcom/kingcore/uilib/LoadingCircle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle$5;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    invoke-static {v0}, Lcom/kingcore/uilib/LoadingCircle;->c(Lcom/kingcore/uilib/LoadingCircle;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle$5;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    invoke-static {v0}, Lcom/kingcore/uilib/LoadingCircle;->d(Lcom/kingcore/uilib/LoadingCircle;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    return-void
.end method
