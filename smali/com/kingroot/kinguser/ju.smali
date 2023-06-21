.class public final Lcom/kingroot/kinguser/ju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/js;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ju$a;
    }
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ju;->mPackageName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/jv;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kingroot/kinguser/ju;-><init>()V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/jx;Lcom/kingroot/kinguser/jq;Lcom/kingroot/kinguser/it;)Lcom/kingroot/kinguser/ha;
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/kingroot/kinguser/jx;->cM()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p1, Lcom/kingroot/kinguser/jx;->tq:Lcom/kingroot/kinguser/jr;

    iget-object v2, p1, Lcom/kingroot/kinguser/jx;->to:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/kingroot/kinguser/jq;->a(Lcom/kingroot/kinguser/jr;Ljava/lang/String;)V

    .line 80
    invoke-interface {p3, v0}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/jz;->cN()V

    .line 84
    iget-object v0, v1, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    .line 94
    :goto_0
    iget-object v1, v1, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    iget v2, p1, Lcom/kingroot/kinguser/jx;->pid:I

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/jy;->b(Ljava/lang/String;ILjava/lang/String;)Lcom/kingroot/kinguser/ha;

    move-result-object v0

    .line 95
    iget-object v1, p1, Lcom/kingroot/kinguser/jx;->tq:Lcom/kingroot/kinguser/jr;

    invoke-virtual {p2, v1, v0}, Lcom/kingroot/kinguser/jq;->a(Lcom/kingroot/kinguser/jr;Lcom/kingroot/kinguser/ha;)V

    .line 98
    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/kingroot/kinguser/ix$b;->mExitValue:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/kingroot/kinguser/ix$b;->mStdErr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/kingroot/kinguser/it;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/lz;->eq()I

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ju;->b(Ljava/lang/String;Lcom/kingroot/kinguser/it;)Ljava/lang/String;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/kingroot/kinguser/ju;->c(Ljava/lang/String;Lcom/kingroot/kinguser/it;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aP(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 211
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 212
    invoke-interface {v0, v6}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 218
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v2

    .line 219
    new-instance v3, Lcom/kingroot/kinguser/jw;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/jw;-><init>(Lcom/kingroot/kinguser/it;)V

    .line 220
    invoke-virtual {v2}, Lcom/kingroot/kinguser/if;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    .line 221
    invoke-virtual {v2}, Lcom/kingroot/kinguser/if;->bx()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/jw;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 226
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%s %s %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    const-string v2, "-n"

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object p0, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 242
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 222
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b(Lcom/kingroot/kinguser/jr;Lcom/kingroot/kinguser/jq;Lcom/kingroot/kinguser/it;)Lcom/kingroot/kinguser/jx;
    .locals 4

    .prologue
    .line 103
    invoke-interface {p3}, Lcom/kingroot/kinguser/it;->cf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/king/uranus/UranusException;

    const/4 v1, 0x2

    const-string v2, "no root"

    invoke-direct {v0, v1, v2}, Lcom/king/uranus/UranusException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/jr;->getPid()I

    move-result v0

    .line 109
    if-gtz v0, :cond_1

    .line 110
    invoke-interface {p1}, Lcom/kingroot/kinguser/jr;->cG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/ju;->aP(Ljava/lang/String;)I

    move-result v0

    .line 113
    :cond_1
    invoke-interface {p1}, Lcom/kingroot/kinguser/jr;->cG()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/ju;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-direct {p0, v1, p3}, Lcom/kingroot/kinguser/ju;->a(Ljava/lang/String;Lcom/kingroot/kinguser/it;)Ljava/lang/String;

    move-result-object v1

    .line 115
    if-nez v1, :cond_2

    new-instance v0, Lcom/king/uranus/UranusException;

    const/4 v1, 0x6

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/king/uranus/UranusException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    invoke-interface {p1}, Lcom/kingroot/kinguser/jr;->w()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/kingroot/kinguser/ju;->a(Ljava/lang/String;Lcom/kingroot/kinguser/it;)Ljava/lang/String;

    move-result-object v2

    .line 118
    if-nez v2, :cond_3

    new-instance v0, Lcom/king/uranus/UranusException;

    const/4 v1, 0x7

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/king/uranus/UranusException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 120
    :cond_3
    new-instance v3, Lcom/kingroot/kinguser/jx;

    invoke-direct {v3, v1, v0, v2, p1}, Lcom/kingroot/kinguser/jx;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/kingroot/kinguser/jr;)V

    .line 123
    invoke-virtual {v3}, Lcom/kingroot/kinguser/jx;->E()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-interface {p3, v0}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    .line 125
    if-eqz v0, :cond_5

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/kingroot/kinguser/jq;->a(Lcom/kingroot/kinguser/jr;)V

    .line 128
    :cond_4
    new-instance v0, Lcom/king/uranus/UranusException;

    const/4 v1, 0x1

    const-string v2, "injected already"

    invoke-direct {v0, v1, v2}, Lcom/king/uranus/UranusException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 131
    :cond_5
    return-object v3
.end method

.method private b(Ljava/lang/String;Lcom/kingroot/kinguser/it;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/lz;->eq()I

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    new-instance v0, Lcom/king/uranus/UranusException;

    const/4 v1, 0x4

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/king/uranus/UranusException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 155
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/jw;

    invoke-direct {v0, p2}, Lcom/kingroot/kinguser/jw;-><init>(Lcom/kingroot/kinguser/it;)V

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ju;->mPackageName:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/jw;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    new-instance v0, Lcom/king/uranus/UranusException;

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redirct "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/king/uranus/UranusException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private c(Ljava/lang/String;Lcom/kingroot/kinguser/it;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 0755 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chown 0.0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chcon u:object_r:system_file:s0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-interface {p2, v0}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 178
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/toolbox "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 182
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/mf;->ev()I

    move-result v2

    const/16 v3, 0x16

    if-lt v2, v3, :cond_4

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/toybox "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    :cond_4
    move v0, v1

    .line 186
    goto :goto_0
.end method

.method public static cK()Lcom/kingroot/kinguser/ju;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/ju$a;->cL()Lcom/kingroot/kinguser/ju;

    move-result-object v0

    return-object v0
.end method

.method private f(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    .line 194
    const-class v0, Lcom/kingroot/kinguser/lm;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/lm;

    .line 197
    if-lez p1, :cond_0

    .line 198
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/lm;->ai(I)I

    move-result v0

    .line 203
    :goto_0
    const/16 v2, 0x40

    if-ne v0, v2, :cond_1

    .line 204
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->by()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_1
    return-object v0

    .line 200
    :cond_0
    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/lm;->bc(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bx()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/kingroot/kinguser/jr;Lcom/kingroot/kinguser/jq;Lcom/kingroot/kinguser/it;)Lcom/kingroot/kinguser/ha;
    .locals 3

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/jt;

    invoke-direct {v0, p2}, Lcom/kingroot/kinguser/jt;-><init>(Lcom/kingroot/kinguser/jq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :try_start_1
    invoke-direct {p0, p1, v0, p3}, Lcom/kingroot/kinguser/ju;->b(Lcom/kingroot/kinguser/jr;Lcom/kingroot/kinguser/jq;Lcom/kingroot/kinguser/it;)Lcom/kingroot/kinguser/jx;
    :try_end_1
    .catch Lcom/king/uranus/UranusException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 69
    :try_start_2
    invoke-direct {p0, v1, v0, p3}, Lcom/kingroot/kinguser/ju;->a(Lcom/kingroot/kinguser/jx;Lcom/kingroot/kinguser/jq;Lcom/kingroot/kinguser/it;)Lcom/kingroot/kinguser/ha;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 64
    :catch_0
    move-exception v1

    .line 66
    :try_start_3
    new-instance v0, Lcom/kingroot/kinguser/jy;

    invoke-virtual {v1}, Lcom/king/uranus/UranusException;->cb()I

    move-result v2

    invoke-virtual {v1}, Lcom/king/uranus/UranusException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/kingroot/kinguser/jy;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
