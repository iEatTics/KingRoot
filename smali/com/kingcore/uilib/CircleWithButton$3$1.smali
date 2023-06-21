.class Lcom/kingcore/uilib/CircleWithButton$3$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/CircleWithButton$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Au:Lcom/kingcore/uilib/CircleWithButton$3;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/CircleWithButton$3;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/kingcore/uilib/CircleWithButton$3$1;->Au:Lcom/kingcore/uilib/CircleWithButton$3;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 412
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$3$1;->Au:Lcom/kingcore/uilib/CircleWithButton$3;

    iget-object v0, v0, Lcom/kingcore/uilib/CircleWithButton$3;->At:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    return-void
.end method
