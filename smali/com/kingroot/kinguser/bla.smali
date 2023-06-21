.class public Lcom/kingroot/kinguser/bla;
.super Lcom/kingroot/kinguser/abt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/abt;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/abw$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/abt;->a(Lcom/kingroot/kinguser/abw$a;)V

    .line 74
    sget-object v0, Lcom/kingroot/kinguser/bla$1;->ZN:[I

    iget-object v1, p1, Lcom/kingroot/kinguser/abw$a;->aab:Lcom/kingroot/kinguser/aci$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aci$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yT()Lcom/kingroot/kinguser/ajb;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Lcom/kingroot/kinguser/ajb;->checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yT()Lcom/kingroot/kinguser/ajb;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Lcom/kingroot/kinguser/ajb;->checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lcom/kingroot/kinguser/abw$a;)V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/abt;->b(Lcom/kingroot/kinguser/abw$a;)V

    .line 26
    invoke-virtual {p1}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p1, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    invoke-static {v0}, Lcom/kingroot/kinguser/aco;->e(Lcom/kingroot/kinguser/abm;)Z

    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/aco;->rF()Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/kingroot/kinguser/bla;->ZK:Lcom/kingroot/kinguser/abw$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/abm;->shutdown()V

    .line 36
    iget-object v1, p0, Lcom/kingroot/kinguser/bla;->ZK:Lcom/kingroot/kinguser/abw$a;

    iput-object v0, v1, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 44
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/kingroot/kinguser/abt;->onStart()V

    .line 21
    return-void
.end method

.method protected rt()Lcom/kingroot/kinguser/aci;
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/kingroot/kinguser/aci$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/kingroot/kinguser/aci$a;->aap:Lcom/kingroot/kinguser/aci$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kingroot/kinguser/aci$a;->aak:Lcom/kingroot/kinguser/aci$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kingroot/kinguser/aci$a;->aaq:Lcom/kingroot/kinguser/aci$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kingroot/kinguser/aci$a;->aat:Lcom/kingroot/kinguser/aci$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kingroot/kinguser/aci$a;->aaj:Lcom/kingroot/kinguser/aci$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kingroot/kinguser/aci$a;->aai:Lcom/kingroot/kinguser/aci$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kingroot/kinguser/aci$a;->aam:Lcom/kingroot/kinguser/aci$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kingroot/kinguser/aci$a;->aan:Lcom/kingroot/kinguser/aci$a;

    aput-object v2, v0, v1

    .line 68
    new-instance v1, Lcom/kingroot/kinguser/aci;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/aci;-><init>([Lcom/kingroot/kinguser/aci$a;)V

    return-object v1
.end method
