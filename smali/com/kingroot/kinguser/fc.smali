.class public Lcom/kingroot/kinguser/fc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static af()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    const-string v0, "cat /proc/version"

    .line 45
    invoke-static {v0}, Lcom/kingroot/kinguser/fe;->Z(Ljava/lang/String;)Lcom/kingroot/kinguser/fi;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fi;->ah()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    const-string v0, ""

    .line 51
    :goto_0
    return-object v0

    .line 49
    :cond_1
    iget-object v0, v0, Lcom/kingroot/kinguser/fi;->ah:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
