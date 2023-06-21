.class Lcom/kingroot/kinguser/aly$9$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aly$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic azq:Lcom/kingroot/kinguser/aly$9;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aly$9;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/kingroot/kinguser/aly$9$1;->azq:Lcom/kingroot/kinguser/aly$9;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 4

    .prologue
    .line 489
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 490
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aly$9$1;->azq:Lcom/kingroot/kinguser/aly$9;

    iget v1, v1, Lcom/kingroot/kinguser/aly$9;->azo:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;->f(Landroid/content/Context;I)V

    .line 491
    iget-object v0, p0, Lcom/kingroot/kinguser/aly$9$1;->azq:Lcom/kingroot/kinguser/aly$9;

    iget-object v0, v0, Lcom/kingroot/kinguser/aly$9;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-static {v0}, Lcom/kingroot/kinguser/aly;->f(Lcom/kingroot/kinguser/aly;)V

    .line 492
    iget-object v0, p0, Lcom/kingroot/kinguser/aly$9$1;->azq:Lcom/kingroot/kinguser/aly$9;

    iget-object v0, v0, Lcom/kingroot/kinguser/aly$9;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-static {v0}, Lcom/kingroot/kinguser/aly;->c(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 494
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->ar(J)V

    .line 495
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18927

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 496
    return-void
.end method
