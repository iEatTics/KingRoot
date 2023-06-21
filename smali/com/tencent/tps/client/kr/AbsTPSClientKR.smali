.class public abstract Lcom/tencent/tps/client/kr/AbsTPSClientKR;
.super Lcom/tencent/tps/client/AbsTPSClientBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tps/client/kr/ISharkForXMod;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tencent/tps/client/AbsTPSClientBase;-><init>(Landroid/content/Context;Lcom/tencent/tps/client/kr/ISharkForXMod;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final disableAutoPatch()Z
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/kingroot/kinguser/fv;->ai()Lcom/kingroot/kinguser/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fv;->disableAutoPatch()Z

    move-result v0

    .line 28
    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;->a(ZLjava/lang/String;I)V

    .line 29
    return v0
.end method

.method public final enableAutoPatch()Z
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/kingroot/kinguser/fv;->ai()Lcom/kingroot/kinguser/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fv;->enableAutoPatch()Z

    move-result v0

    .line 22
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;->a(ZLjava/lang/String;I)V

    .line 23
    return v0
.end method

.method public abstract onExploitAccepted(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public final querySupportedAsync(Lcom/tencent/tps/client/kr/OnQuerySupportedListener;)Z
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/fv;->ai()Lcom/kingroot/kinguser/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/fv;->querySupportedAsync(Lcom/tencent/tps/client/kr/OnQuerySupportedListener;)Z

    move-result v0

    .line 34
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;->a(ZLjava/lang/String;I)V

    .line 35
    return v0
.end method

.method public final querySupportedSync()I
    .locals 4

    .prologue
    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/fv;->ai()Lcom/kingroot/kinguser/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fv;->querySupportedSync()I

    move-result v1

    .line 40
    const/4 v0, -0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {p0, v0, v2, v3}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;->a(ZLjava/lang/String;I)V

    .line 41
    return v1

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
