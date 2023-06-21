.class public Lcom/kingroot/kinguser/awk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static dK(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 138
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 139
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 141
    :catch_0
    move-exception v1

    goto :goto_0
.end method
