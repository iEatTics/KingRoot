.class public final Lcom/kingroot/kinguser/ceb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ceb$a;
    }
.end annotation


# static fields
.field private static bXP:Lcom/kingroot/kinguser/ceb$a;


# direct methods
.method public static akU()Lcom/kingroot/kinguser/cga;
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    sget-object v1, Lcom/kingroot/kinguser/ceb;->bXP:Lcom/kingroot/kinguser/ceb$a;

    if-eqz v1, :cond_0

    .line 91
    sget-object v0, Lcom/kingroot/kinguser/ceb;->bXP:Lcom/kingroot/kinguser/ceb$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/ceb$a;->akU()Lcom/kingroot/kinguser/cga;

    move-result-object v0

    .line 93
    :cond_0
    if-nez v0, :cond_1

    .line 94
    const-class v0, Lcom/kingroot/kinguser/cfz;

    invoke-static {v0}, Lcom/kingroot/kinguser/ced;->j(Ljava/lang/Class;)Lcom/kingroot/kinguser/cec;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cga;

    .line 97
    :cond_1
    return-object v0
.end method

.method public static nH(Ljava/lang/String;)Lcom/kingroot/kinguser/cch;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/kingroot/kinguser/ceb;->bXP:Lcom/kingroot/kinguser/ceb$a;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/kingroot/kinguser/ceb;->bXP:Lcom/kingroot/kinguser/ceb$a;

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ceb$a;->nH(Ljava/lang/String;)Lcom/kingroot/kinguser/cch;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 69
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/bzn;->V(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/cch;

    move-result-object v0

    goto :goto_0
.end method
