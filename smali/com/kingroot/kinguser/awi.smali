.class public Lcom/kingroot/kinguser/awi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Mt:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "b_d_pre"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    return-void
.end method

.method static SM()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    const-string v1, "aaa"

    const-string v2, "141;1;;;"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method public static SN()J
    .locals 4

    .prologue
    .line 206
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    const-string v1, "aaar"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 208
    return-wide v0
.end method

.method public static SO()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    const-string v1, "g"

    const-string v2, "163;1;1;1;"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    return-object v0
.end method

.method public static SP()J
    .locals 4

    .prologue
    .line 308
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    const-string v1, "ga"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static SQ()J
    .locals 4

    .prologue
    .line 315
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    const-string v1, "gb"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static SR()J
    .locals 4

    .prologue
    .line 322
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    const-string v1, "gc"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static SS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    const-string v1, "h"

    const-string v2, "139;1;;;"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    return-object v0
.end method

.method public static bE(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    :try_start_0
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 64
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Lcom/kingroot/kinguser/awk;->dK(Ljava/lang/String;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 115
    :sswitch_0
    invoke-static {v0}, Lcom/kingroot/kinguser/awi;->jK(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0

    .line 67
    :sswitch_1
    invoke-static {v0}, Lcom/kingroot/kinguser/awi;->jI(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :sswitch_2
    invoke-static {v0}, Lcom/kingroot/kinguser/awi;->jJ(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Lcom/kingroot/kinguser/awk;->dK(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/awm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/awj;->jN(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x8b -> :sswitch_0
        0x8d -> :sswitch_1
        0xa3 -> :sswitch_2
    .end sparse-switch
.end method

.method public static ck(J)V
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aaar"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    return-void
.end method

.method public static cl(J)V
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ga"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 306
    return-void
.end method

.method public static cm(J)V
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gb"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 313
    return-void
.end method

.method public static cn(J)V
    .locals 2

    .prologue
    .line 319
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gc"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    return-void
.end method

.method public static ho(I)Lcom/kingroot/kinguser/awh;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 130
    .line 131
    sparse-switch p0, :sswitch_data_0

    move-object v0, v1

    .line 170
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    :goto_1
    return-object v1

    .line 133
    :sswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/awi;->SM()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :sswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/awi;->SO()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :sswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/awi;->SS()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_0
    :try_start_0
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 176
    new-instance v0, Lcom/kingroot/kinguser/awh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awh;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v4, v1

    invoke-static {v1}, Lcom/kingroot/kinguser/awk;->dK(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/awh;->aUQ:I

    .line 178
    const/4 v1, 0x1

    aget-object v1, v4, v1

    invoke-static {v1}, Lcom/kingroot/kinguser/awk;->dK(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/kingroot/kinguser/awh;->aUR:Z

    .line 179
    array-length v1, v4

    if-lt v1, v5, :cond_1

    .line 180
    const/4 v1, 0x2

    aget-object v1, v4, v1

    invoke-static {v1}, Lcom/kingroot/kinguser/awk;->dK(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/awh;->aUS:I

    .line 182
    :cond_1
    array-length v1, v4

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 183
    const/4 v1, 0x3

    aget-object v1, v4, v1

    iput-object v1, v0, Lcom/kingroot/kinguser/awh;->aUT:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_3
    move-object v1, v0

    .line 188
    goto :goto_1

    :cond_3
    move v1, v3

    .line 178
    goto :goto_2

    .line 186
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x8b -> :sswitch_2
        0x8d -> :sswitch_0
        0xa3 -> :sswitch_1
    .end sparse-switch
.end method

.method public static jI(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aaa"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    return-void
.end method

.method public static jJ(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 295
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "g"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 296
    return-void
.end method

.method public static jK(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 328
    sget-object v0, Lcom/kingroot/kinguser/awi;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "h"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    return-void
.end method
