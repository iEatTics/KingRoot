.class Lcom/kingroot/kinguser/axj$8;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axj;->D(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aZj:Lcom/kingroot/kinguser/axj;

.field final synthetic aZn:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axj;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/kingroot/kinguser/axj$8;->aZj:Lcom/kingroot/kinguser/axj;

    iput-object p2, p0, Lcom/kingroot/kinguser/axj$8;->aZn:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/axj$8;->aZn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    return-void
.end method
