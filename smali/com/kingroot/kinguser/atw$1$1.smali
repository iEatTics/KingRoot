.class Lcom/kingroot/kinguser/atw$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atw$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aQJ:Lcom/kingroot/kinguser/atw$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atw$1;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/kingroot/kinguser/atw$1$1;->aQJ:Lcom/kingroot/kinguser/atw$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/atw$1$1;->aQJ:Lcom/kingroot/kinguser/atw$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atw$1;->aQI:Lcom/kingroot/kinguser/atw;

    invoke-static {v0}, Lcom/kingroot/kinguser/atw;->d(Lcom/kingroot/kinguser/atw;)Lcom/kingroot/kinguser/atw$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/atw$1$1;->aQJ:Lcom/kingroot/kinguser/atw$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atw$1;->aQI:Lcom/kingroot/kinguser/atw;

    invoke-static {v0}, Lcom/kingroot/kinguser/atw;->d(Lcom/kingroot/kinguser/atw;)Lcom/kingroot/kinguser/atw$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/atw$a;->PC()V

    .line 149
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
