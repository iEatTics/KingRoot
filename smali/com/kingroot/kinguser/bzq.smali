.class Lcom/kingroot/kinguser/bzq;
.super Lcom/kingroot/kinguser/cah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cah",
        "<",
        "Lcom/kingroot/kinguser/bzo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bVP:Lcom/kingroot/kinguser/bzp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bzp;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kingroot/kinguser/bzq;->bVP:Lcom/kingroot/kinguser/bzp;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cah;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/kingroot/kinguser/caf;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Lcom/kingroot/kinguser/bzo;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bzq;->d(Lcom/kingroot/kinguser/bzo;)V

    return-void
.end method

.method public synthetic b(Lcom/kingroot/kinguser/caf;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Lcom/kingroot/kinguser/bzo;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bzq;->c(Lcom/kingroot/kinguser/bzo;)V

    return-void
.end method

.method public c(Lcom/kingroot/kinguser/bzo;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/bzq;->bVP:Lcom/kingroot/kinguser/bzp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bzp;->a(Lcom/kingroot/kinguser/bzp;Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cab;

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/bzq;->bVP:Lcom/kingroot/kinguser/bzp;

    iget-object v1, p0, Lcom/kingroot/kinguser/bzq;->bVP:Lcom/kingroot/kinguser/bzp;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/kingroot/kinguser/bzp;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bzp;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/bzo;)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/bzq;->bVP:Lcom/kingroot/kinguser/bzp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bzp;->a(Lcom/kingroot/kinguser/bzp;Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cab;

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bzq;->bVP:Lcom/kingroot/kinguser/bzp;

    iget-object v1, p0, Lcom/kingroot/kinguser/bzq;->bVP:Lcom/kingroot/kinguser/bzp;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/kingroot/kinguser/bzp;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bzp;->sendMessage(Landroid/os/Message;)Z

    .line 116
    return-void
.end method
