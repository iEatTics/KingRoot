.class Lcom/kingcore/uilib/CircleWithButton$4;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/CircleWithButton;->gB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic An:Lcom/kingcore/uilib/CircleWithButton;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/CircleWithButton;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/kingcore/uilib/CircleWithButton$4;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 492
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 493
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$4;->An:Lcom/kingcore/uilib/CircleWithButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingcore/uilib/CircleWithButton;->a(Lcom/kingcore/uilib/CircleWithButton;Z)Z

    .line 494
    return-void
.end method
