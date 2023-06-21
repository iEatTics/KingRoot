.class public final Lcom/kingroot/kinguser/gb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final qj:Ljava/lang/Object;

.field private static final qk:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/gb;->qj:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/gb;->qk:Ljava/lang/Object;

    return-void
.end method

.method private static ag(Ljava/lang/String;)Lcom/kingroot/kinguser/ew;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 224
    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_0

    .line 227
    const/4 v1, -0x1

    .line 229
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 233
    :goto_1
    if-lez v1, :cond_0

    .line 236
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/gb;->b(ILjava/lang/String;)Lcom/kingroot/kinguser/ew;

    move-result-object v0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static synthetic ah(Ljava/lang/String;)Lcom/kingroot/kinguser/ew;
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/kingroot/kinguser/gb;->ag(Ljava/lang/String;)Lcom/kingroot/kinguser/ew;

    move-result-object v0

    return-object v0
.end method

.method static ao()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ew;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    sget-object v1, Lcom/kingroot/kinguser/gb;->qj:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v2, Lcom/kingroot/kinguser/fb;->S:Ljava/lang/String;

    new-instance v3, Lcom/kingroot/kinguser/gc;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/gc;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/fo;->a(Ljava/lang/String;Lcom/kingroot/kinguser/fq;)V

    .line 121
    monitor-exit v1

    .line 123
    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static ap()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ew;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/gb;->aq()Ljava/io/File;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 144
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    sget-object v2, Lcom/kingroot/kinguser/gb;->qk:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    new-instance v3, Lcom/kingroot/kinguser/ge;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/ge;-><init>(Ljava/util/List;)V

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;Lcom/kingroot/kinguser/fp;)V

    .line 158
    invoke-static {v1}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;)V

    .line 159
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static aq()Ljava/io/File;
    .locals 3

    .prologue
    .line 165
    sget-object v0, Lcom/kingroot/kinguser/fb;->R:Ljava/lang/String;

    .line 166
    const-string v1, "asap"

    .line 167
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method static ar()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ew;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/kingroot/kinguser/gb;->at()Ljava/io/File;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    .line 195
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    new-instance v2, Lcom/kingroot/kinguser/gf;

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/gf;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;Lcom/kingroot/kinguser/fp;)V

    goto :goto_0
.end method

.method static as()V
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/kingroot/kinguser/gb;->at()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;)V

    .line 211
    return-void
.end method

.method private static at()Ljava/io/File;
    .locals 3

    .prologue
    .line 214
    sget-object v0, Lcom/kingroot/kinguser/fb;->R:Ljava/lang/String;

    .line 215
    const-string v1, "es"

    .line 216
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static b(ILjava/lang/String;)Lcom/kingroot/kinguser/ew;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 243
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/gj;->aj(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {p0}, Lcom/kingroot/kinguser/ez;->D(I)Lcom/kingroot/kinguser/ew;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ew;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ew;->c([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 254
    goto :goto_0
.end method

.method static c(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ew;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/gb;->at()Ljava/io/File;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-static {v1}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;)V

    .line 179
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ew;

    .line 181
    if-eqz v0, :cond_3

    .line 184
    const-string v4, "%1$d:%2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ew;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/gj;->h(Lcom/kingroot/kinguser/ew;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/fu;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_4
    const-wide/32 v4, 0x300000

    invoke-static {v1, v2, v4, v5}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;Ljava/util/List;J)V

    goto :goto_0
.end method

.method public static d(Lcom/kingroot/kinguser/ew;)V
    .locals 1

    .prologue
    .line 40
    if-nez p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 45
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ew;->ad()I

    move-result v0

    .line 46
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-static {p0}, Lcom/kingroot/kinguser/gb;->f(Lcom/kingroot/kinguser/ew;)V

    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/fz;->ak()Lcom/kingroot/kinguser/fz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fz;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/gg;->au()Lcom/kingroot/kinguser/gg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gg;->ax()V

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0

    .line 54
    :pswitch_2
    invoke-static {p0}, Lcom/kingroot/kinguser/gb;->e(Lcom/kingroot/kinguser/ew;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Lcom/kingroot/kinguser/ew;)V
    .locals 6

    .prologue
    .line 69
    sget-object v0, Lcom/kingroot/kinguser/fb;->S:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ew;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "%1$d:%2$s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ew;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/kingroot/kinguser/gj;->h(Lcom/kingroot/kinguser/ew;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/fu;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 73
    sget-object v3, Lcom/kingroot/kinguser/gb;->qj:Ljava/lang/Object;

    monitor-enter v3

    .line 74
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-wide/32 v0, 0x4b000

    invoke-static {v4, v2, v0, v1}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;Ljava/lang/String;J)V

    .line 76
    monitor-exit v3

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static f(Lcom/kingroot/kinguser/ew;)V
    .locals 6

    .prologue
    .line 127
    invoke-static {}, Lcom/kingroot/kinguser/gb;->aq()Ljava/io/File;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {v0}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;)V

    .line 131
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/gb;->qk:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    const-string v2, "%1$d:%2$s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ew;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/kingroot/kinguser/gj;->h(Lcom/kingroot/kinguser/ew;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/fu;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0x4b000

    invoke-static {v0, v2, v4, v5}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;Ljava/lang/String;J)V

    .line 135
    monitor-exit v1

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
