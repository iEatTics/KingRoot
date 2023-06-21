.class public Lcom/kingroot/kinguser/cbx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "k_"

.field private static Wo:Ljava/lang/String; = null

.field private static Wp:Z = false

.field private static Wq:Z = false

.field private static Wr:I = 0x0

.field private static Ws:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final bWT:Ljava/lang/String; = "common"

.field public static final bWU:Ljava/lang/String; = "k_framework"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cbx;->Wo:Ljava/lang/String;

    .line 35
    sput-boolean v1, Lcom/kingroot/kinguser/cbx;->Wp:Z

    .line 37
    sput-boolean v1, Lcom/kingroot/kinguser/cbx;->Wq:Z

    .line 38
    const/4 v0, -0x1

    sput v0, Lcom/kingroot/kinguser/cbx;->Wr:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cbx;->Ws:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 303
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/cbx;->e(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 154
    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/cbx;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {p0}, Lcom/kingroot/kinguser/cbx;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 173
    if-nez p2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/cbx;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {p0}, Lcom/kingroot/kinguser/cbx;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 247
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/cbz;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/cbz;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 256
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cbz;->X(Z)Z

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/cbx;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-boolean v0, Lcom/kingroot/kinguser/cbx;->Wp:Z

    if-eqz v0, :cond_1

    .line 125
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/cbx;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/kingroot/kinguser/cbx;->ds(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/cbx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method public static d(ZI)V
    .locals 0

    .prologue
    .line 76
    sput-boolean p0, Lcom/kingroot/kinguser/cbx;->Wq:Z

    .line 77
    sput p1, Lcom/kingroot/kinguser/cbx;->Wr:I

    .line 78
    return-void
.end method

.method private static ds(Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 313
    sget-object v0, Lcom/kingroot/kinguser/cbx;->Ws:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/gu;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 323
    :goto_0
    return v0

    .line 317
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cbx;->Ws:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 323
    goto :goto_0
.end method

.method private static dt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    const-string v1, "k_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {}, Lcom/kingroot/kinguser/cbx;->pp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 273
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const/4 v1, 0x0

    .line 279
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 281
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 283
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v2, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 285
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    invoke-static {v2}, Lcom/kingroot/kinguser/gx;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    :goto_1
    :try_start_2
    const-string v2, "common"

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/cbx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    invoke-static {v1}, Lcom/kingroot/kinguser/gx;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/gx;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 286
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/cbx;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-boolean v0, Lcom/kingroot/kinguser/cbx;->Wp:Z

    if-eqz v0, :cond_1

    .line 214
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/cbx;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/kingroot/kinguser/cbx;->ds(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {p0}, Lcom/kingroot/kinguser/cbx;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static eD(Z)V
    .locals 0

    .prologue
    .line 72
    sput-boolean p0, Lcom/kingroot/kinguser/cbx;->Wq:Z

    .line 73
    return-void
.end method

.method public static varargs g([Ljava/lang/String;)V
    .locals 1
    .param p0    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    sget-object v0, Lcom/kingroot/kinguser/cbx;->Ws:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    sget-object v0, Lcom/kingroot/kinguser/cbx;->Ws:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    sget-object v0, Lcom/kingroot/kinguser/cbx;->Ws:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 58
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/cbx;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-boolean v0, Lcom/kingroot/kinguser/cbx;->Wp:Z

    if-eqz v0, :cond_1

    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/cbx;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/kingroot/kinguser/cbx;->ds(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static ih()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/kingroot/kinguser/cbx;->Wq:Z

    return v0
.end method

.method public static varargs k([Ljava/lang/String;)V
    .locals 1
    .param p0    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    sget-object v0, Lcom/kingroot/kinguser/cbx;->Ws:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method

.method public static l(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 231
    if-nez p0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/cbx;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/cbx;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static pp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/kingroot/kinguser/cbx;->Wo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/kingroot/kinguser/cbx;->Wo:Ljava/lang/String;

    .line 336
    :goto_0
    return-object v0

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ptag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/kingroot/kinguser/cbx;->Wr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/cbx;->Wo:Ljava/lang/String;

    .line 336
    sget-object v0, Lcom/kingroot/kinguser/cbx;->Wo:Ljava/lang/String;

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/kingroot/kinguser/cbx;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-boolean v0, Lcom/kingroot/kinguser/cbx;->Wp:Z

    if-eqz v0, :cond_1

    .line 193
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/cbx;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/kingroot/kinguser/cbx;->ds(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p0}, Lcom/kingroot/kinguser/cbx;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/cbx;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "k_"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void
.end method
