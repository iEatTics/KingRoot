.class Lcom/kingroot/kinguser/axu$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu$7;->onAnimationEnd(Lcom/android/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbY:Lcom/kingroot/kinguser/axu$7;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu$7;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$7$1;->bbY:Lcom/kingroot/kinguser/axu$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$7$1;->bbY:Lcom/kingroot/kinguser/axu$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu$7;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->b(Lcom/kingroot/kinguser/axu;)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$7$1;->bbY:Lcom/kingroot/kinguser/axu$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu$7;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axu;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axu$7$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axu$7$1$1;-><init>(Lcom/kingroot/kinguser/axu$7$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    return-void
.end method
