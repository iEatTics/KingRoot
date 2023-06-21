.class Lcom/kingroot/kinguser/bir$3;
.super Lcom/tencent/tps/client/kr/AbsTPSClientKR;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bul:Lcom/kingroot/kinguser/bir;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bir;Landroid/content/Context;Lcom/tencent/tps/client/kr/ISharkForXMod;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kingroot/kinguser/bir$3;->bul:Lcom/kingroot/kinguser/bir;

    invoke-direct {p0, p2, p3}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;-><init>(Landroid/content/Context;Lcom/tencent/tps/client/kr/ISharkForXMod;)V

    return-void
.end method


# virtual methods
.method public onExploitAccepted(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/bir$3;->bul:Lcom/kingroot/kinguser/bir;

    const/4 v1, 0x5

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bir;->a(Lcom/kingroot/kinguser/bir;I[Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onExploitDenied(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/bir$3;->bul:Lcom/kingroot/kinguser/bir;

    invoke-static {v0}, Lcom/kingroot/kinguser/bir;->a(Lcom/kingroot/kinguser/bir;)Lcom/kingroot/kinguser/bis;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/bir$3;->bul:Lcom/kingroot/kinguser/bir;

    invoke-static {v0}, Lcom/kingroot/kinguser/bir;->a(Lcom/kingroot/kinguser/bir;)Lcom/kingroot/kinguser/bis;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bis;->a(Lcom/kingroot/kinguser/xmod/dao/ExploitLog;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bir$3;->bul:Lcom/kingroot/kinguser/bir;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    aput-object p3, v1, v7

    invoke-static {v0, v7, v1}, Lcom/kingroot/kinguser/bir;->a(Lcom/kingroot/kinguser/bir;I[Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onTPSServiceStop()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/bir$3;->bul:Lcom/kingroot/kinguser/bir;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bir;->a(Lcom/kingroot/kinguser/bir;I[Ljava/lang/String;)V

    .line 101
    return-void
.end method
