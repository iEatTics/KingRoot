.class Lcom/kingroot/kinguser/anx$1;
.super Lcom/kingroot/kinguser/bhk$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anx;->l(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEH:Lcom/kingroot/kinguser/anx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anx;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/anx$1;->aEH:Lcom/kingroot/kinguser/anx;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bhk$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/anx$1;->aEH:Lcom/kingroot/kinguser/anx;

    invoke-static {v0}, Lcom/kingroot/kinguser/anx;->a(Lcom/kingroot/kinguser/anx;)Lcom/kingroot/kinguser/anx$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/anx$a;->xr()V

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/anx$1;->aEH:Lcom/kingroot/kinguser/anx;

    invoke-static {v0}, Lcom/kingroot/kinguser/anx;->b(Lcom/kingroot/kinguser/anx;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    return-void
.end method
