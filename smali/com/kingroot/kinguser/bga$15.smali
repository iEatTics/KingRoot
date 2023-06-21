.class Lcom/kingroot/kinguser/bga$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bga;->abo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bga;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bga;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$15;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 382
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$15;->this$0:Lcom/kingroot/kinguser/bga;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bga;->b(Lcom/kingroot/kinguser/bga;Z)Z

    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$15;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bga;->iE(I)V

    .line 384
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$15;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0, v2, v3, v3}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;ILjava/util/List;Ljava/util/List;)V

    .line 385
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method
