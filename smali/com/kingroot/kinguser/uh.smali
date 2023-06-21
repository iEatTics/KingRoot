.class public Lcom/kingroot/kinguser/uh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Io:Lcom/kingroot/kinguser/uh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/uh;->Io:Lcom/kingroot/kinguser/uh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ky()Lcom/kingroot/kinguser/uh;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/uh;->Io:Lcom/kingroot/kinguser/uh;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/kingroot/kinguser/uh;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/uh;->Io:Lcom/kingroot/kinguser/uh;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/kingroot/kinguser/uh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/uh;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/uh;->Io:Lcom/kingroot/kinguser/uh;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/uh;->Io:Lcom/kingroot/kinguser/uh;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public i(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 45
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ug;->jq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 46
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 50
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 55
    :goto_0
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    :goto_1
    move-object v6, v0

    .line 74
    :cond_0
    :goto_2
    return-object v6

    .line 52
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 55
    :goto_3
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    move-object v0, v6

    .line 56
    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    throw v0

    .line 62
    :cond_1
    :try_start_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "resid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/ug;->jq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/ug;->jq()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 65
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto :goto_2

    .line 70
    :catch_1
    move-exception v0

    goto :goto_2

    .line 55
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_4

    .line 52
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method
