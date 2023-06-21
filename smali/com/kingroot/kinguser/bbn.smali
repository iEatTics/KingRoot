.class public Lcom/kingroot/kinguser/bbn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->ask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_RequestCallStackDump"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bbn;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static M(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 88
    const/16 v1, 0x2710

    if-ge p1, v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/akf;->An()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/avy;->Sr()Lcom/kingroot/kinguser/avy;

    move-result-object v2

    .line 108
    invoke-virtual {v2, p0}, Lcom/kingroot/kinguser/avy;->jD(Ljava/lang/String;)Lcom/kingroot/kinguser/avx;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_0

    .line 114
    invoke-static {v1, p0, p1}, Lcom/kingroot/kinguser/bbn;->a(Lcom/kingroot/kinguser/abc;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static declared-synchronized a(Lcom/kingroot/kinguser/abc;Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/abc;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const-class v1, Lcom/kingroot/kinguser/bbn;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-static {}, Lcom/kingroot/kinguser/avy;->Sr()Lcom/kingroot/kinguser/avy;

    move-result-object v2

    .line 122
    invoke-virtual {v2, p1}, Lcom/kingroot/kinguser/avy;->jD(Ljava/lang/String;)Lcom/kingroot/kinguser/avx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 123
    if-nez v3, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 199
    :goto_0
    monitor-exit v1

    return-object v0

    .line 129
    :cond_0
    const/4 v4, 0x1

    const/16 v5, 0x8

    :try_start_1
    invoke-static {v4, v5}, Lcom/kingroot/kinguser/bbj;->ac(II)Ljava/io/File;

    move-result-object v4

    .line 130
    if-nez v4, :cond_1

    .line 134
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/avy;->a(Lcom/kingroot/kinguser/avx;)V

    .line 137
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/kingroot/kinguser/bbi;->hM(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 142
    :cond_1
    :try_start_2
    invoke-static {p2}, Lcom/kingroot/kinguser/bbn;->hN(I)Ljava/util/HashSet;

    move-result-object v5

    .line 144
    invoke-static {v5}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 148
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/avy;->a(Lcom/kingroot/kinguser/avx;)V

    .line 151
    const/4 v2, -0x2

    invoke-static {v2}, Lcom/kingroot/kinguser/bbi;->hM(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_2
    const-string v6, "/dev/kinguser.req.cache/rd.cache"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v7}, Lcom/kingroot/kinguser/aja;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 157
    if-nez v5, :cond_3

    .line 161
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/avy;->a(Lcom/kingroot/kinguser/avx;)V

    .line 164
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/kingroot/kinguser/bbi;->hM(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "chown %d.%d %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "/dev/kinguser.req.cache/rd.cache"

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "chmod 0%o %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x180

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "/dev/kinguser.req.cache/rd.cache"

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "chcon %1$s %2$s;/system/bin/toolbox chcon %1$s %2$s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "u:r:untrusted_app:s0"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "/dev/kinguser.req.cache/rd.cache"

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v5, 0x1

    invoke-virtual {p0, v6, v5}, Lcom/kingroot/kinguser/abc;->e(Ljava/util/List;Z)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :try_start_3
    new-instance v5, Ljava/io/File;

    const-string v6, "/dev/kinguser.req.cache/rd.cache"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/kingroot/kinguser/zo;->a(Ljava/io/File;Ljava/io/File;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/dev/kinguser.req.cache/rd.cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 197
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/avy;->a(Lcom/kingroot/kinguser/avx;)V

    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v4

    .line 183
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/avy;->a(Lcom/kingroot/kinguser/avx;)V

    .line 186
    const/4 v2, -0x4

    invoke-static {v2}, Lcom/kingroot/kinguser/bbi;->hM(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private static hN(I)Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/kingroot/common/utils/system/ProcessUtils;->qJ()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 83
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 53
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 54
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 57
    iget v5, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    const-string v6, "zygote"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    iget v5, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    iget v5, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    if-ne v5, p0, :cond_1

    .line 63
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 69
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 70
    iget v5, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->ppid:I

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 73
    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    :cond_5
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 77
    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v0, v1

    .line 83
    goto/16 :goto_0
.end method
