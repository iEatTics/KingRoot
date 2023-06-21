.class public Lcom/kingroot/kinguser/bsm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/bsm;->ahW()Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p1

    if-eqz v3, :cond_2

    if-nez p2, :cond_3

    .line 58
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 62
    :cond_3
    array-length v4, p1

    move v3, v1

    :goto_1
    if-lt v3, v4, :cond_4

    .line 84
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 87
    if-eqz v3, :cond_0

    .line 91
    array-length v0, p1

    if-ge v3, v0, :cond_6

    move v0, v1

    .line 92
    goto :goto_0

    .line 62
    :cond_4
    aget-object v5, p1, v3

    .line 64
    const-string v6, "PermissionsUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "check permission "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_5

    .line 72
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v5, "PermissionsUtil"

    const-string v6, "check result - denied"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    :cond_5
    const-string v5, "PermissionsUtil"

    const-string v6, "check result - granted"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move v0, v2

    .line 95
    goto :goto_0
.end method

.method public static ahW()Z
    .locals 2

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs b(Landroid/content/Context;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/bsm;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method
