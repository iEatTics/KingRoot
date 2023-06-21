.class Lcom/kingroot/kinguser/bga$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bga;
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
    .line 660
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$6;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$6;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->w(Lcom/kingroot/kinguser/bga;)V

    .line 668
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bga$6;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v1}, Lcom/kingroot/kinguser/bga;->x(Lcom/kingroot/kinguser/bga;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 669
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 678
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 663
    return-void
.end method
