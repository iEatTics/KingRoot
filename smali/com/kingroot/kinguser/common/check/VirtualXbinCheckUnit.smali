.class public Lcom/kingroot/kinguser/common/check/VirtualXbinCheckUnit;
.super Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;-><init>()V

    return-void
.end method

.method private static g(Lcom/kingroot/kinguser/abc;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    const-string v2, "cat /proc/mounts"

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    iget-object v2, v2, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 43
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 44
    const-string v6, "tmpfs /system/xbin tmpfs rw,"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method private static h(Lcom/kingroot/kinguser/abc;)Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    const-string v0, "important"

    .line 54
    const-string v0, "useless"

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v4, "useless"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/dev/kingroot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v4, "important"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/dev/kingroot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v4, "important"

    const-string v5, "/system/bin/cp -f -a /system/xbin /dev/kingroot/xbin_bind"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v4, "important"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/dev/kingroot/xbin_bind"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lcom/kingroot/kinguser/ajj;->zl()Ljava/lang/String;

    move-result-object v3

    .line 61
    new-instance v4, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v5, "important"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "cat %s > %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v3, v8, v1

    const-string v3, "/dev/kingroot/xbin_bind/ku.sud"

    aput-object v3, v8, v2

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v4, "important"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/dev/kingroot/xbin_bind/ku.sud"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v4, "useless"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/dev/kingroot/xbin_bind/su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v4, "important"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "ln -s %s %s"

    new-array v7, v9, [Ljava/lang/Object;

    const-string v8, "/dev/kingroot/xbin_bind/ku.sud"

    aput-object v8, v7, v1

    const-string v8, "/dev/kingroot/xbin_bind/su"

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abc;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 67
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v4, v0, :cond_1

    :cond_0
    move v0, v1

    .line 74
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 69
    const-string v4, "important"

    iget-object v5, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 70
    goto :goto_0

    :cond_3
    move v0, v2

    .line 74
    goto :goto_0
.end method

.method private static i(Lcom/kingroot/kinguser/abc;)Z
    .locals 1

    .prologue
    .line 78
    const-string v0, "/system/bin/mount -o bind /dev/kingroot/xbin_bind /system/xbin"

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 79
    invoke-static {p0}, Lcom/kingroot/kinguser/common/check/VirtualXbinCheckUnit;->g(Lcom/kingroot/kinguser/abc;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public d(ZZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/aaw;->qv()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/common/check/VirtualXbinCheckUnit;->g(Lcom/kingroot/kinguser/abc;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public yQ()Z
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/VirtualXbinCheckUnit;->h(Lcom/kingroot/kinguser/abc;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/VirtualXbinCheckUnit;->i(Lcom/kingroot/kinguser/abc;)Z

    move-result v0

    goto :goto_0
.end method

.method public ze()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
