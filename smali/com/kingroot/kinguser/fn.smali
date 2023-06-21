.class public final Lcom/kingroot/kinguser/fn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const-string v0, ""

    .line 33
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/kingroot/kinguser/fm;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 19
    :goto_0
    return v0

    .line 15
    :cond_0
    :try_start_0
    invoke-static {p0, p0}, Lcom/kingroot/kinguser/fm;->a(Landroid/content/Context;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    const/4 v0, 0x1

    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    goto :goto_0
.end method
