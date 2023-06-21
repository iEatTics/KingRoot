.class public Lcom/kingroot/kinguser/util/protect/DeviceStat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;,
        Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public currentTime:J

.field public procStatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;",
            ">;"
        }
    .end annotation
.end field

.field public uptime:Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat;->currentTime:J

    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;->acC()Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat;->uptime:Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acy()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat;->procStatList:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/util/protect/DeviceStat;Lcom/kingroot/kinguser/util/protect/DeviceStat;Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/util/protect/DeviceStat;",
            "Lcom/kingroot/kinguser/util/protect/DeviceStat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 141
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat;->uptime:Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat;->procStatList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat;->uptime:Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat;->procStatList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat;->procStatList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat;->procStatList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->j(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 149
    if-eqz p2, :cond_2

    .line 150
    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat;->uptime:Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;

    iget-object v2, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat;->uptime:Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;->a(Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v3

    .line 154
    goto :goto_0

    .line 157
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    move v0, v4

    .line 158
    goto :goto_0

    .line 164
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acz()Ljava/util/List;

    move-result-object v6

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acA()Ljava/util/List;

    move-result-object v7

    move v1, v0

    move v2, v0

    .line 166
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_7

    .line 167
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 166
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_6
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    :cond_7
    const-string v0, "/init"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    .line 178
    goto :goto_0

    .line 181
    :cond_8
    const/4 v0, 0x5

    if-lt v1, v0, :cond_9

    if-le v2, v3, :cond_9

    move v0, v3

    .line 182
    goto :goto_0

    .line 185
    :cond_9
    if-lez v2, :cond_a

    .line 186
    const/4 v0, 0x3

    goto :goto_0

    :cond_a
    move v0, v4

    .line 189
    goto :goto_0
.end method

.method public static acA()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    const-string v1, "/system/bin/servicemanager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v1, "/system/bin/surfaceflinger"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v1, "zygote"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v1, "system_server"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-object v0
.end method

.method public static acx()Lcom/kingroot/kinguser/util/protect/DeviceStat;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/kingroot/kinguser/util/protect/DeviceStat;

    invoke-direct {v0}, Lcom/kingroot/kinguser/util/protect/DeviceStat;-><init>()V

    return-object v0
.end method

.method private static acy()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acz()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acA()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    new-instance v5, Ljava/io/File;

    const-string v0, "/proc"

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 75
    if-nez v6, :cond_0

    move-object v0, v1

    .line 129
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, v6

    if-ge v0, v2, :cond_1

    .line 80
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 129
    goto :goto_0

    .line 85
    :cond_2
    new-instance v7, Ljava/io/File;

    aget-object v2, v6, v0

    invoke-direct {v7, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    .line 79
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_4
    const/4 v2, 0x0

    .line 94
    new-instance v3, Ljava/io/File;

    const-string v8, "cmdline"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 96
    invoke-static {v3}, Lcom/kingroot/kinguser/rs;->t(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 97
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 103
    :goto_3
    if-nez v3, :cond_6

    .line 104
    new-instance v2, Ljava/io/File;

    const-string v8, "comm"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 106
    invoke-static {v2}, Lcom/kingroot/kinguser/rs;->t(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 114
    :goto_4
    if-eqz v2, :cond_5

    .line 115
    invoke-static {v4, v2}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->h(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_5
    if-eqz v2, :cond_3

    .line 120
    new-instance v3, Ljava/io/File;

    const-string v8, "stat"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-static {v2, v3}, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->k(Ljava/lang/String;Ljava/io/File;)Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;

    move-result-object v3

    .line 122
    if-eqz v3, :cond_3

    .line 123
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v2, v3

    goto :goto_4

    :cond_7
    move-object v3, v2

    goto :goto_3
.end method

.method public static acz()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    const-string v1, "/init"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v1, "/sbin/ueventd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v1, "/system/bin/vold"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v1, "/system/bin/netd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v1, "/system/bin/debuggerd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v1, "/system/bin/rild"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v1, "/system/bin/installd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v1, "/system/bin/keystore"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-object v0
.end method

.method private static h(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 260
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v3

    .line 271
    :goto_0
    return-object v0

    :cond_1
    move v1, v2

    .line 263
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 264
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    const-string v0, "\u0000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 266
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 263
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 271
    goto :goto_0
.end method

.method public static j(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v2

    .line 250
    :goto_0
    return-object v0

    .line 234
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;

    .line 235
    const/4 v3, 0x0

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;

    .line 238
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->a(Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 239
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->b(Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    const/4 v1, 0x1

    .line 245
    :goto_2
    if-nez v1, :cond_2

    .line 246
    iget-object v0, v0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->name:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 250
    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public acB()J
    .locals 4

    .prologue
    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat;->currentTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
