.class public Lcom/kingroot/kinguser/ug;
.super Lcom/kingroot/kinguser/ui;
.source "SourceFile"


# instance fields
.field private In:Lcom/kingroot/kinguser/ui$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/ui;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    return-void
.end method

.method private cW(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "content://task_pm/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jq()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->iq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "task_pm"

    .line 42
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tm;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/ui$a;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    .line 185
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 111
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/ui$a;->O(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    if-nez p3, :cond_3

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    invoke-interface {v0, v5}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    :cond_1
    move-object v0, v1

    .line 153
    :cond_2
    :goto_0
    return-object v0

    .line 122
    :cond_3
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    const-string v2, "pkg"

    const-string v3, ""

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_5

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    invoke-interface {v0, v5}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    :cond_4
    move-object v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_5
    :try_start_3
    const-string v1, "resid"

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 133
    const/16 v4, 0x400

    :try_start_4
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 134
    if-eqz v4, :cond_6

    .line 135
    invoke-virtual {v3, v2, v1, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 137
    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    invoke-interface {v1, v5}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 148
    :goto_2
    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    invoke-interface {v1, v5}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v1, :cond_7

    .line 149
    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    invoke-interface {v1, v5}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    :cond_7
    throw v0

    .line 145
    :catch_1
    move-exception v1

    goto :goto_2

    .line 141
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public jo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "task_pm"

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 57
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ug;->getContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 64
    if-nez v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    invoke-interface {v0, v6}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    :cond_1
    move-object v0, v1

    .line 106
    :cond_2
    :goto_0
    return-object v0

    .line 68
    :cond_3
    :try_start_1
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/ug;->cW(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    array-length v2, p2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    invoke-interface {v0, v6}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    :cond_4
    move-object v0, v1

    .line 73
    goto :goto_0

    .line 76
    :cond_5
    const/4 v2, 0x0

    :try_start_3
    aget-object v4, p2, v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    const/4 v2, -0x1

    .line 79
    const/4 v3, 0x1

    :try_start_4
    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    move v3, v2

    .line 83
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 86
    const/16 v2, 0x400

    :try_start_6
    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    .line 91
    :goto_2
    if-nez v2, :cond_7

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v0, :cond_6

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    invoke-interface {v0, v6}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    :cond_6
    move-object v0, v1

    .line 92
    goto :goto_0

    .line 80
    :catch_0
    move-exception v3

    move v3, v2

    goto :goto_1

    .line 87
    :catch_1
    move-exception v2

    move-object v2, v1

    goto :goto_2

    .line 96
    :cond_7
    :try_start_7
    invoke-virtual {v5, v4, v3, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 97
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 102
    :goto_3
    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    invoke-interface {v1, v6}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    goto :goto_0

    .line 100
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 102
    :goto_4
    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    invoke-interface {v1, v6}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    if-eqz v1, :cond_8

    .line 103
    iget-object v1, p0, Lcom/kingroot/kinguser/ug;->In:Lcom/kingroot/kinguser/ui$a;

    invoke-interface {v1, v6}, Lcom/kingroot/kinguser/ui$a;->O(Z)V

    :cond_8
    throw v0

    .line 100
    :catch_3
    move-exception v1

    goto :goto_4

    .line 98
    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method
