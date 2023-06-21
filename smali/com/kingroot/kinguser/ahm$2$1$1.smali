.class Lcom/kingroot/kinguser/ahm$2$1$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ahm$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic arb:Lcom/kingroot/kinguser/ahm$2$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahm$2$1;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/kingroot/kinguser/ahm$2$1$1;->arb:Lcom/kingroot/kinguser/ahm$2$1;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm$2$1$1;->arb:Lcom/kingroot/kinguser/ahm$2$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahm$2$1;->ara:Lcom/kingroot/kinguser/ahm$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahm$2;->aqX:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kingroot/kinguser/ahm$2$1$1;->arb:Lcom/kingroot/kinguser/ahm$2$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/ahm$2$1;->ara:Lcom/kingroot/kinguser/ahm$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/ahm$2;->aqY:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm$2$1$1;->arb:Lcom/kingroot/kinguser/ahm$2$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahm$2$1;->ara:Lcom/kingroot/kinguser/ahm$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahm$2;->aqZ:Lcom/kingroot/kinguser/ahm;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahm;->a(Lcom/kingroot/kinguser/ahm;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm$2$1$1;->arb:Lcom/kingroot/kinguser/ahm$2$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahm$2$1;->ara:Lcom/kingroot/kinguser/ahm$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahm$2;->aqZ:Lcom/kingroot/kinguser/ahm;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahm;->a(Lcom/kingroot/kinguser/ahm;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm$2$1$1;->arb:Lcom/kingroot/kinguser/ahm$2$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahm$2$1;->ara:Lcom/kingroot/kinguser/ahm$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahm$2;->aqZ:Lcom/kingroot/kinguser/ahm;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ahm;->a(Lcom/kingroot/kinguser/ahm;Z)Z

    .line 179
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm$2$1$1;->arb:Lcom/kingroot/kinguser/ahm$2$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahm$2$1;->ara:Lcom/kingroot/kinguser/ahm$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahm$2;->aqW:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 182
    :cond_1
    return-void
.end method
