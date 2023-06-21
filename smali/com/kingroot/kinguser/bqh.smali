.class public Lcom/kingroot/kinguser/bqh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/bqo;->agA()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bqp;->L(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/bqp;

    move-result-object v0

    const-string v1, "Common_HttpRetryCount"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bqp;->a(Ljava/lang/String;)I

    move-result v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x2

    .line 109
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/bqo;->agA()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/bqp;->L(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/bqp;

    move-result-object v0

    const-string v1, "Common_BusinessReportFrequency"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bqp;->a(Ljava/lang/String;)I

    move-result v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    const/16 v0, 0x64

    .line 101
    :cond_0
    return v0
.end method
