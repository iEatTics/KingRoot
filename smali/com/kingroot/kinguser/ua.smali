.class public Lcom/kingroot/kinguser/ua;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Id:Lcom/kingroot/kinguser/ud;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ud;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/kingroot/kinguser/ua;->Id:Lcom/kingroot/kinguser/ud;

    .line 22
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected a(Lcom/kingroot/kinguser/ty;)V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ty;->ko()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ty;->kq()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/kingroot/kinguser/ua;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected a(Lcom/kingroot/kinguser/ty;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ty;->ko()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ty;->kq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/kingroot/kinguser/ua;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected b(Lcom/kingroot/kinguser/ty;)V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ty;->ko()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ty;->kq()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/kingroot/kinguser/ua;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected c(Lcom/kingroot/kinguser/ty;)V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ty;->ko()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ty;->kq()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/kingroot/kinguser/ua;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ua;->Id:Lcom/kingroot/kinguser/ud;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ud;->d(Lcom/kingroot/kinguser/ty;)V

    .line 104
    return-void
.end method
