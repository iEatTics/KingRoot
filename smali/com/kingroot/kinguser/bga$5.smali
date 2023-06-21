.class Lcom/kingroot/kinguser/bga$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 650
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$5;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$5;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->v(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$5;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->v(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    :cond_0
    return-void
.end method
