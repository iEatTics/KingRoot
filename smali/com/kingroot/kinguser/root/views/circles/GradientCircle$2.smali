.class Lcom/kingroot/kinguser/root/views/circles/GradientCircle$2;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bgT:Lcom/kingroot/kinguser/root/views/circles/GradientCircle;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/views/circles/GradientCircle;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle$2;->bgT:Lcom/kingroot/kinguser/root/views/circles/GradientCircle;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle$2;->bgT:Lcom/kingroot/kinguser/root/views/circles/GradientCircle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->a(Lcom/kingroot/kinguser/root/views/circles/GradientCircle;Z)Z

    .line 111
    return-void
.end method
