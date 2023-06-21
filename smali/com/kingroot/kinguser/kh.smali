.class Lcom/kingroot/kinguser/kh;
.super Lcom/kingroot/kinguser/is;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/is",
        "<",
        "Lcom/kingroot/kinguser/kf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic tN:Lcom/kingroot/kinguser/kg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/kg;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/kingroot/kinguser/kh;->tN:Lcom/kingroot/kinguser/kg;

    invoke-direct {p0}, Lcom/kingroot/kinguser/is;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/kingroot/kinguser/kf;)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/kh;->tN:Lcom/kingroot/kinguser/kg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/kg;->a(Lcom/kingroot/kinguser/kg;Lcom/kingroot/kinguser/ki;)Lcom/kingroot/kinguser/ki;

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/kh;->tN:Lcom/kingroot/kinguser/kg;

    iget-object v1, p0, Lcom/kingroot/kinguser/kh;->tN:Lcom/kingroot/kinguser/kg;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/kingroot/kinguser/kg;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/kg;->sendMessage(Landroid/os/Message;)Z

    .line 108
    return-void
.end method

.method public synthetic d(Lcom/kingroot/kinguser/ir;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Lcom/kingroot/kinguser/kf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/kh;->d(Lcom/kingroot/kinguser/kf;)V

    return-void
.end method

.method public d(Lcom/kingroot/kinguser/kf;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/kh;->tN:Lcom/kingroot/kinguser/kg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/kg;->a(Lcom/kingroot/kinguser/kg;Lcom/kingroot/kinguser/ki;)Lcom/kingroot/kinguser/ki;

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/kh;->tN:Lcom/kingroot/kinguser/kg;

    iget-object v1, p0, Lcom/kingroot/kinguser/kh;->tN:Lcom/kingroot/kinguser/kg;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/kingroot/kinguser/kg;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/kg;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method

.method public synthetic e(Lcom/kingroot/kinguser/ir;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Lcom/kingroot/kinguser/kf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/kh;->c(Lcom/kingroot/kinguser/kf;)V

    return-void
.end method
