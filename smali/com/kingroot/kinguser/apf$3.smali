.class Lcom/kingroot/kinguser/apf$3;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apf;->Li()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aHy:Lcom/kingroot/kinguser/apf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apf;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/kingroot/kinguser/apf$3;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$3;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->h(Lcom/kingroot/kinguser/apf;)V

    .line 276
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$3;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->b(Lcom/kingroot/kinguser/apf;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$3;->aHy:Lcom/kingroot/kinguser/apf;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf$3;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v1}, Lcom/kingroot/kinguser/apf;->d(Lcom/kingroot/kinguser/apf;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apf;->removeView(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$3;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->i(Lcom/kingroot/kinguser/apf;)V

    .line 279
    return-void
.end method
