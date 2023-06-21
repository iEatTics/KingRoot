.class Lcom/kingroot/kinguser/bev$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bev;->Zz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blI:Lcom/kingroot/kinguser/bev;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bev;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/bev$1;->blI:Lcom/kingroot/kinguser/bev;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bev$1;->blI:Lcom/kingroot/kinguser/bev;

    invoke-static {v0}, Lcom/kingroot/kinguser/bev;->a(Lcom/kingroot/kinguser/bev;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 60
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 61
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 55
    return-void
.end method
