.class public Lcom/kingroot/kinguser/sr$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/sr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private GI:Landroid/content/ContentValues;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/sr$b;->GI:Landroid/content/ContentValues;

    .line 366
    iput-object p1, p0, Lcom/kingroot/kinguser/sr$b;->mName:Ljava/lang/String;

    .line 367
    return-void
.end method

.method private a(Landroid/content/ContentValues;Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 436
    if-nez p1, :cond_0

    .line 460
    :goto_0
    return v3

    .line 439
    :cond_0
    const-string v1, ""

    .line 440
    const/4 v0, 0x0

    .line 441
    if-eqz p2, :cond_1

    .line 442
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "option_is_by_apply"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/kingroot/kinguser/ss;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "true"

    aput-object v4, v0, v3

    .line 446
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v4

    .line 449
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    invoke-static {}, Lcom/kingroot/kinguser/st;->jq()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kingroot/kinguser/sr$b;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 450
    invoke-virtual {v4, v5, p1, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 454
    if-ne v0, v2, :cond_2

    move v0, v2

    .line 457
    :goto_1
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    move v3, v0

    .line 454
    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    .line 455
    :catch_0
    move-exception v0

    .line 457
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    throw v0
.end method


# virtual methods
.method public apply()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/kingroot/kinguser/sr$b;->GI:Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/sr$b;->a(Landroid/content/ContentValues;Z)Z

    .line 433
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/sr$b;->GI:Landroid/content/ContentValues;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 414
    return-object p0
.end method

.method public commit()Z
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/kingroot/kinguser/sr$b;->GI:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/sr$b;->a(Landroid/content/ContentValues;Z)Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/kingroot/kinguser/sr$b;->GI:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 402
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/kingroot/kinguser/sr$b;->GI:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 396
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/sr$b;->GI:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/kingroot/kinguser/sr$b;->GI:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 390
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/sr$b;->GI:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 378
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/kingroot/kinguser/sr$b;->GI:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 408
    return-object p0
.end method
