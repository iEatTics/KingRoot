.class public Lcom/kingroot/kinguser/aco;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aaE:Lcom/kingroot/kinguser/wo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/kingroot/kinguser/aco$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aco$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aco;->aaE:Lcom/kingroot/kinguser/wo;

    return-void
.end method

.method public static a(JZI)V
    .locals 8

    .prologue
    .line 229
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hU()Lcom/kingroot/kinguser/rh;

    move-result-object v1

    .line 230
    instance-of v0, v1, Lcom/kingroot/kinguser/rg;

    if-eqz v0, :cond_0

    .line 231
    check-cast v1, Lcom/kingroot/kinguser/rg;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v6

    move-wide v2, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/rg;->a(JZII)V

    .line 233
    :cond_0
    return-void
.end method

.method public static ao(Z)V
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hU()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 241
    instance-of v1, v0, Lcom/kingroot/kinguser/rg;

    if-eqz v1, :cond_0

    .line 242
    check-cast v0, Lcom/kingroot/kinguser/rg;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/rg;->J(Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public static ap(Z)V
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hU()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 252
    instance-of v1, v0, Lcom/kingroot/kinguser/rg;

    if-eqz v1, :cond_0

    .line 253
    check-cast v0, Lcom/kingroot/kinguser/rg;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/kingroot/kinguser/rg;->b(ZI)V

    .line 255
    :cond_0
    return-void
.end method

.method public static e(Lcom/kingroot/kinguser/abm;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/aco;->rS()Ljava/io/File;

    move-result-object v1

    .line 38
    invoke-static {}, Lcom/kingroot/kinguser/aco;->rT()Ljava/io/File;

    move-result-object v2

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    :goto_0
    return v0

    .line 44
    :cond_0
    if-eqz p0, :cond_2

    .line 46
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_1
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/abm;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 57
    :cond_2
    :goto_1
    sget-object v1, Lcom/kingroot/kinguser/aco;->aaE:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/wo;->ny()Z

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static rF()Lcom/kingroot/kinguser/abm;
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/kingroot/kinguser/aco;->rS()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized rS()Ljava/io/File;
    .locals 5

    .prologue
    .line 127
    const-class v1, Lcom/kingroot/kinguser/aco;

    monitor-enter v1

    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 129
    if-eqz v2, :cond_0

    .line 130
    new-instance v3, Ljava/io/File;

    const-string v4, "applib"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    new-instance v0, Ljava/io/File;

    const-string v2, "kd"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 137
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/aco;->rU()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v2, "kd"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/abu;->rx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "kd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_1
    monitor-exit v1

    return-object v0

    .line 144
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static declared-synchronized rT()Ljava/io/File;
    .locals 6

    .prologue
    .line 162
    const-class v1, Lcom/kingroot/kinguser/aco;

    monitor-enter v1

    const/4 v0, 0x0

    .line 163
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 164
    if-eqz v2, :cond_0

    .line 165
    new-instance v3, Ljava/io/File;

    const-string v4, "applib"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    new-instance v0, Ljava/io/File;

    const-string v2, "krsdk.cert"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 171
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "krsdk.cert"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v2, Lcom/kingroot/kinguser/zm$a;

    const-string v4, "krsdk.cert"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v4, v5}, Lcom/kingroot/kinguser/zm$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    const-string v0, "0640"

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zm$a;->dy(Ljava/lang/String;)V

    .line 175
    invoke-static {v2}, Lcom/kingroot/kinguser/zm;->a(Lcom/kingroot/kinguser/zm$d;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v2, "krsdk.cert"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    :cond_0
    if-nez v0, :cond_1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/abu;->rx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "krsdk.cert"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :cond_1
    monitor-exit v1

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static rU()V
    .locals 4

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    const/4 v1, 0x1

    .line 212
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hV()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 213
    instance-of v3, v0, Lcom/kingroot/kinguser/re;

    if-eqz v3, :cond_0

    .line 214
    check-cast v0, Lcom/kingroot/kinguser/re;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/re;->hL()I

    move-result v0

    .line 217
    :goto_0
    new-instance v1, Lcom/kingroot/kinguser/zm$a;

    const-string v3, "kd"

    invoke-direct {v1, v2, v3, v0}, Lcom/kingroot/kinguser/zm$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    const-string v0, "0755"

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zm$a;->dy(Ljava/lang/String;)V

    .line 219
    invoke-static {v1}, Lcom/kingroot/kinguser/zm;->a(Lcom/kingroot/kinguser/zm$d;)Z

    .line 220
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
