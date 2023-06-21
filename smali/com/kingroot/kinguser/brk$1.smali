.class Lcom/kingroot/kinguser/brk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/brk;-><init>(Lcom/tencent/qqpim/discovery/AdRequestData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bJZ:Lcom/kingroot/kinguser/brk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brk$1;->bJZ:Lcom/kingroot/kinguser/brk;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$1;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0, p1, p2}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$1;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$1;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/brd;->c(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    goto :goto_0
.end method

.method public h(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$1;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$1;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$1;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/brd;->d(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    goto :goto_0
.end method
