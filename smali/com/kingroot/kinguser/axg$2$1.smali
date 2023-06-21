.class Lcom/kingroot/kinguser/axg$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axg$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYx:Landroid/view/View;

.field final synthetic aYy:Lcom/kingroot/kinguser/axg$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg$2;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$2$1;->aYy:Lcom/kingroot/kinguser/axg$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/axg$2$1;->aYx:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 441
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$2$1;->aYy:Lcom/kingroot/kinguser/axg$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/axg$2;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-static {v0}, Lcom/kingroot/kinguser/axg;->d(Lcom/kingroot/kinguser/axg;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f0169

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 442
    const-string v1, "scrollY"

    new-array v2, v5, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/axg$2$1;->aYx:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 443
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$2$1;->aYx:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 444
    return v5
.end method
