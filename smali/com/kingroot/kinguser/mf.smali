.class public final Lcom/kingroot/kinguser/mf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ev()I
    .locals 1

    .prologue
    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static ey()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v4, "SUPPORTED_64_BIT_ABIS"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 157
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 158
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 165
    :goto_0
    if-eqz v3, :cond_1

    .line 166
    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 167
    const-string v6, "arm64-v8a"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    .line 173
    :goto_2
    return v0

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 173
    goto :goto_2

    .line 161
    :catch_0
    move-exception v0

    goto :goto_0
.end method
