.class Lcom/kingroot/kinguser/axm$24$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm$24;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bar:Lcom/kingroot/kinguser/axm$24;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm$24;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$24$1;->bar:Lcom/kingroot/kinguser/axm$24;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 3

    .prologue
    .line 378
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 379
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$24$1;->bar:Lcom/kingroot/kinguser/axm$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$24;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->i(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/aui$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axm$24$1;->bar:Lcom/kingroot/kinguser/axm$24;

    iget-object v1, v1, Lcom/kingroot/kinguser/axm$24;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v1}, Lcom/kingroot/kinguser/axm;->g(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axm$24$1;->bar:Lcom/kingroot/kinguser/axm$24;

    iget-object v2, v2, Lcom/kingroot/kinguser/axm$24;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v2}, Lcom/kingroot/kinguser/axm;->h(Lcom/kingroot/kinguser/axm;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/aui$a;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Landroid/content/Context;)V

    .line 381
    return-void
.end method
