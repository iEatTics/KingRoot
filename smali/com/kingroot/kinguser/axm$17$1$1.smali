.class Lcom/kingroot/kinguser/axm$17$1$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm$17$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bam:Lcom/kingroot/kinguser/axm$17$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm$17$1;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$17$1$1;->bam:Lcom/kingroot/kinguser/axm$17$1;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 1381
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 1382
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$17$1$1;->bam:Lcom/kingroot/kinguser/axm$17$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$17$1;->bal:Lcom/kingroot/kinguser/axm$17;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$17;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->j(Lcom/kingroot/kinguser/axm;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1383
    return-void
.end method
