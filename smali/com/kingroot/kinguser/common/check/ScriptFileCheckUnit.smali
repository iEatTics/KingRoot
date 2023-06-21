.class public Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;
.super Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static atT:[B


# instance fields
.field private atM:Z

.field private atN:Z

.field private atO:Z

.field private atP:Z

.field private atQ:Z

.field private atR:Z

.field private atS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atT:[B

    .line 712
    new-instance v0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit$3;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit$3;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 256
    nop

    :array_0
    .array-data 1
        0x7ft
        0x45t
        0x4ct
        0x46t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atM:Z

    .line 39
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atN:Z

    .line 44
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atO:Z

    .line 45
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atP:Z

    .line 48
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atQ:Z

    .line 49
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atR:Z

    .line 50
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atS:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 159
    .line 161
    const/4 v2, 0x0

    .line 162
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 171
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 172
    array-length v0, v5

    if-le v0, v1, :cond_5

    .line 173
    if-eqz p3, :cond_1

    .line 174
    aget-object v0, v5, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 200
    :cond_0
    :goto_1
    return v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_0

    .line 179
    :cond_1
    array-length v6, v5

    move v4, v3

    move v2, v3

    move v0, v3

    :goto_2
    if-ge v4, v6, :cond_3

    aget-object v7, v5, v4

    .line 181
    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 183
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v1

    .line 186
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v9, v2

    move v2, v0

    move v0, v9

    .line 179
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v9, v0

    move v0, v2

    move v2, v9

    goto :goto_2

    .line 191
    :cond_3
    if-eq v2, v1, :cond_0

    if-eqz v0, :cond_0

    move v0, v3

    .line 192
    goto :goto_1

    :cond_4
    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method private ac(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 212
    .line 213
    const/4 v3, 0x0

    .line 215
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpz:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpA:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 223
    goto :goto_0

    .line 226
    :cond_2
    invoke-static {p1}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->go(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 228
    goto :goto_0

    .line 231
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 241
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 242
    array-length v3, v2

    if-le v3, v0, :cond_4

    .line 243
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v2

    move-object v2, v3

    goto :goto_1
.end method

.method private ad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 361
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpA:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpz:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 372
    :cond_0
    :goto_0
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    invoke-static {v0, p1, p2, v3}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 367
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->go(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpz:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static declared-synchronized ae(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 482
    const-class v1, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit$1;

    invoke-direct {v0, p1, p0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    monitor-exit v1

    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static af(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 580
    .line 582
    const/4 v4, 0x0

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 588
    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    move v3, v0

    .line 596
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 597
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 598
    array-length v4, v6

    if-lez v4, :cond_1

    .line 599
    array-length v7, v6

    move v4, v0

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v8, v6, v4

    .line 600
    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v1

    .line 599
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 590
    :catch_0
    move-exception v3

    move v3, v2

    .line 592
    goto :goto_0

    .line 603
    :cond_0
    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 608
    :cond_1
    if-eqz v0, :cond_2

    .line 610
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zl;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sh.tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v0}, Lcom/kingroot/kinguser/rs;->c([BLjava/lang/String;)V

    .line 612
    invoke-static {v0, p0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->ae(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 622
    :goto_3
    return v1

    .line 615
    :catch_1
    move-exception v0

    move v1, v2

    .line 617
    goto :goto_3

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 631
    new-instance v0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit$2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    return-void
.end method

.method public static go(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    :goto_0
    return v1

    .line 266
    :cond_0
    const/4 v3, 0x0

    .line 267
    const/16 v2, 0x400

    new-array v5, v2, [B

    .line 269
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    const/4 v3, 0x0

    const/16 v4, 0x3ff

    :try_start_1
    invoke-virtual {v2, v5, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 271
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 272
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 273
    const-string v4, "#!/system/bin/sh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_2

    .line 301
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    :goto_2
    move v1, v0

    .line 304
    goto :goto_0

    :cond_2
    move v3, v1

    .line 278
    :goto_3
    :try_start_2
    sget-object v4, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atT:[B

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 279
    sget-object v4, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atT:[B

    aget-byte v4, v4, v3

    aget-byte v6, v5, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v4, v6, :cond_4

    .line 278
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 282
    :cond_4
    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    .line 293
    :goto_4
    :try_start_3
    sget-object v4, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atT:[B

    array-length v4, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 294
    goto :goto_1

    .line 298
    :catch_0
    move-exception v0

    move v0, v1

    move-object v1, v3

    .line 301
    :goto_5
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_6
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 298
    :catch_1
    move-exception v0

    move v0, v1

    move-object v1, v2

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    iput-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atQ:Z

    .line 114
    iput-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atR:Z

    .line 115
    iput-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atS:Z

    .line 119
    invoke-static {p1, p2, p3, v0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atQ:Z

    .line 122
    const-string v2, "/system/etc/install-recovery-2.sh"

    const-string v3, "/system/etc/install-recovery-2.sh"

    invoke-static {p1, v2, v3, v1}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atR:Z

    .line 126
    const-string v2, "/system/etc/install-recovery-2.sh"

    invoke-static {v2, p2, p3, v0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atS:Z

    .line 130
    iget-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atQ:Z

    if-eqz v2, :cond_2

    .line 132
    iget-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atR:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atS:Z

    if-eqz v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 132
    goto :goto_0

    .line 136
    :cond_2
    iget-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atR:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atS:Z

    if-eqz v2, :cond_0

    .line 137
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-N9002"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 142
    goto :goto_0
.end method

.method private static q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 381
    const/4 v2, -0x1

    .line 382
    const/4 v1, 0x0

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    invoke-static {p0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->go(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 387
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    const-string v1, "#!/system/bin/sh"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 400
    array-length v0, v1

    if-lez v0, :cond_2

    .line 402
    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v1, v0

    .line 403
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 404
    const-string v6, "#!/system/bin/sh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 402
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 406
    sget-object v6, Lcom/kingroot/kinguser/bha;->bpz:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 407
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 413
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpz:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 415
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ddexe.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/rs;->c([BLjava/lang/String;)V

    .line 421
    invoke-static {v0, p0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->ae(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 423
    const/4 v0, 0x1

    .line 428
    :goto_3
    return v0

    .line 424
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 434
    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atQ:Z

    if-eqz v1, :cond_1

    .line 435
    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atR:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atS:Z

    if-eqz v1, :cond_0

    .line 437
    const-string v1, "/system/etc/install-recovery-2.sh"

    sget-object v2, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->af(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atR:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atS:Z

    if-eqz v1, :cond_2

    .line 444
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-N9002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {p1, p2, p3, v0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atQ:Z

    .line 456
    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atQ:Z

    if-eqz v1, :cond_3

    .line 457
    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atR:Z

    if-eqz v1, :cond_0

    .line 458
    const-string v1, "/system/etc/install-recovery-2.sh"

    sget-object v2, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->af(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :cond_3
    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atR:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atS:Z

    if-nez v1, :cond_4

    .line 466
    const-string v1, "/system/etc/install-recovery-2.sh"

    invoke-static {v1, p2, p3}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v1, "/system/etc/install-recovery-2.sh"

    invoke-static {v1, p2, p3, v0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atS:Z

    .line 471
    :cond_4
    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atR:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atS:Z

    if-nez v1, :cond_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 524
    const/4 v2, -0x1

    .line 525
    const/4 v1, 0x0

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 531
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    const-string v1, "#!/system/bin/sh"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 543
    array-length v0, v1

    if-lez v0, :cond_2

    .line 545
    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    .line 546
    const-string v6, "#!/system/bin/sh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 547
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 551
    :cond_1
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_2
    :goto_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sh.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/rs;->c([BLjava/lang/String;)V

    .line 563
    invoke-static {v0, p0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->ae(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 565
    const/4 v0, 0x1

    .line 570
    :goto_3
    return v0

    .line 555
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install-recovery-2.sh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 556
    const-string v0, "\n/system/etc/install-recovery-2.sh\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 566
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public d(ZZ)Z
    .locals 7

    .prologue
    const/16 v6, 0x1ed

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    iput-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atM:Z

    .line 58
    iput-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atN:Z

    .line 60
    iput-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atO:Z

    .line 61
    iput-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atP:Z

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -d"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -d &"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->ac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atM:Z

    .line 72
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atM:Z

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 74
    iput v2, v0, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 75
    iput v2, v0, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 76
    iput v6, v0, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 77
    const-string v5, "u:object_r:system_file:s0"

    iput-object v5, v0, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 78
    sget-object v5, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/kingroot/kinguser/zn;->a(Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I

    move-result v0

    .line 79
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 80
    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atO:Z

    .line 85
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ajg;->zi()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-direct {p0, v0, v3, v4}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atN:Z

    .line 90
    iget-boolean v3, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atN:Z

    if-nez v3, :cond_1

    .line 91
    new-instance v3, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v3}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 92
    iput v2, v3, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 93
    iput v2, v3, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 94
    iput v6, v3, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 95
    const-string v4, "u:object_r:system_file:s0"

    iput-object v4, v3, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v0, "/system/etc/install-recovery-2.sh"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {v4, v3}, Lcom/kingroot/kinguser/zn;->a(Ljava/util/List;Lcom/kingroot/kinguser/zn$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atP:Z

    .line 107
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atM:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atN:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atO:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atP:Z

    if-nez v0, :cond_4

    :goto_2
    return v1

    :cond_2
    move v0, v2

    .line 69
    goto :goto_0

    :cond_3
    move v0, v2

    .line 80
    goto :goto_1

    :cond_4
    move v1, v2

    .line 107
    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    return v0
.end method

.method public e(Lcom/kingroot/kinguser/aka;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, -0x1

    .line 668
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v0

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -d &"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 675
    const/4 v4, 0x0

    invoke-static {v4, v0}, Lcom/kingroot/kinguser/zn;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/zn$a;

    move-result-object v6

    .line 680
    sget-object v4, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 681
    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->go(Ljava/lang/String;)Z

    move-result v8

    .line 682
    if-eqz v8, :cond_0

    .line 683
    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->ac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 693
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 694
    iget v1, v6, Lcom/kingroot/kinguser/zn$a;->WN:I

    iget v2, v6, Lcom/kingroot/kinguser/zn$a;->WO:I

    iget v3, v6, Lcom/kingroot/kinguser/zn$a;->mode:I

    iget-wide v4, v6, Lcom/kingroot/kinguser/zn$a;->size:J

    iget-object v6, v6, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/aka;->a(IIIJLjava/lang/String;ZZ)V

    .line 700
    :goto_1
    return-void

    .line 685
    :cond_1
    sget-object v4, Lcom/kingroot/kinguser/bha;->bpz:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpA:Ljava/lang/String;

    .line 686
    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v8, v7

    .line 687
    goto :goto_0

    .line 690
    :cond_3
    invoke-static {v0, v2, v3, v8}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_0

    .line 697
    :cond_4
    const-wide/16 v4, 0x0

    const-string v6, ""

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/aka;->a(IIIJLjava/lang/String;ZZ)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 710
    return-void
.end method

.method public yQ()Z
    .locals 7

    .prologue
    const/16 v6, 0x1ed

    const/4 v1, 0x0

    .line 309
    const/4 v0, 0x1

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -d &"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/aio;->d(Lcom/kingroot/kinguser/abc;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    iget-boolean v4, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atM:Z

    if-eqz v4, :cond_3

    .line 325
    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->ad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 338
    :cond_2
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/ajg;->zi()Ljava/lang/String;

    move-result-object v4

    .line 339
    iget-boolean v5, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atN:Z

    if-eqz v5, :cond_4

    .line 342
    invoke-direct {p0, v4, v2, v3}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 326
    :cond_3
    iget-boolean v4, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atO:Z

    if-eqz v4, :cond_2

    .line 328
    new-instance v4, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v4}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 329
    iput v1, v4, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 330
    iput v1, v4, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 331
    iput v6, v4, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 332
    const-string v5, "u:object_r:system_file:s0"

    iput-object v5, v4, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 333
    sget-object v5, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/kingroot/kinguser/zn;->b(Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)V

    goto :goto_1

    .line 343
    :cond_4
    iget-boolean v2, p0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->atP:Z

    if-eqz v2, :cond_0

    .line 345
    new-instance v2, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v2}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 346
    iput v1, v2, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 347
    iput v1, v2, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 348
    iput v6, v2, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 349
    const-string v1, "u:object_r:system_file:s0"

    iput-object v1, v2, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    const-string v3, "/system/etc/install-recovery-2.sh"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/zn;->b(Ljava/util/List;Lcom/kingroot/kinguser/zn$a;)V

    goto :goto_0
.end method

.method public ze()Z
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x1

    return v0
.end method
