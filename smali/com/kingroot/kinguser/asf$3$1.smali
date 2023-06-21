.class Lcom/kingroot/kinguser/asf$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asf$3;->onAnimationEnd(Lcom/android/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aMG:Lcom/kingroot/kinguser/asf$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asf$3;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/kingroot/kinguser/asf$3$1;->aMG:Lcom/kingroot/kinguser/asf$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$3$1;->aMG:Lcom/kingroot/kinguser/asf$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/asf$3;->aMC:Lcom/kingroot/kinguser/asf;

    iget-object v1, p0, Lcom/kingroot/kinguser/asf$3$1;->aMG:Lcom/kingroot/kinguser/asf$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/asf$3;->aMF:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/asf;->c(Landroid/view/View;Z)V

    .line 527
    return-void
.end method
