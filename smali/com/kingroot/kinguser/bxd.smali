.class public Lcom/kingroot/kinguser/bxd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bxd$a;
    }
.end annotation


# static fields
.field private static final bTd:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "^/data/user/\\d+$"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "^/data/data$"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/bxd;->bTd:[Ljava/lang/String;

    return-void
.end method

.method private static R(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/bza;->T(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/bza;->S(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 187
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-wide/16 v0, -0x1

    .line 195
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 201
    :cond_0
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static ajq()Z
    .locals 3

    .prologue
    .line 352
    const/16 v0, 0x3e7

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const v2, 0x186a0

    div-int/2addr v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    .line 355
    :catch_0
    move-exception v0

    .line 358
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ca(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 67
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-static {p0}, Lcom/kingroot/kinguser/bxd;->cb(Landroid/content/Context;)Lcom/kingroot/kinguser/bxd$a;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajr()Z

    move-result v2

    invoke-static {v3, v2, v3}, Lcom/kingroot/kinguser/byx;->d(IZI)I

    move-result v2

    .line 74
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajr()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    new-instance v3, Lcom/kingroot/kinguser/byl;

    invoke-direct {v3}, Lcom/kingroot/kinguser/byl;-><init>()V

    .line 76
    const-string v4, "turingmm_dual_a"

    iput-object v4, v3, Lcom/kingroot/kinguser/byl;->bUx:Ljava/lang/String;

    .line 77
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajs()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/kingroot/kinguser/byl;->bUy:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/kingroot/kinguser/bxd;->cc(Landroid/content/Context;)Lcom/kingroot/kinguser/bxd$a;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajr()Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/byx;->d(IZI)I

    move-result v2

    .line 86
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajr()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    new-instance v3, Lcom/kingroot/kinguser/byl;

    invoke-direct {v3}, Lcom/kingroot/kinguser/byl;-><init>()V

    .line 88
    const-string v4, "turingmm_dual_b"

    iput-object v4, v3, Lcom/kingroot/kinguser/byl;->bUx:Ljava/lang/String;

    .line 89
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajs()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/kingroot/kinguser/byl;->bUy:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/bxd;->cd(Landroid/content/Context;)Lcom/kingroot/kinguser/bxd$a;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajr()Z

    move-result v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/byx;->d(IZI)I

    move-result v2

    .line 98
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajr()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    new-instance v3, Lcom/kingroot/kinguser/byl;

    invoke-direct {v3}, Lcom/kingroot/kinguser/byl;-><init>()V

    .line 100
    const-string v4, "turingmm_dual_c"

    iput-object v4, v3, Lcom/kingroot/kinguser/byl;->bUx:Ljava/lang/String;

    .line 101
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajs()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/kingroot/kinguser/byl;->bUy:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    invoke-static {p0}, Lcom/kingroot/kinguser/bxd;->cf(Landroid/content/Context;)Lcom/kingroot/kinguser/bxd$a;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajr()Z

    move-result v3

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/byx;->d(IZI)I

    move-result v2

    .line 110
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajr()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    new-instance v3, Lcom/kingroot/kinguser/byl;

    invoke-direct {v3}, Lcom/kingroot/kinguser/byl;-><init>()V

    .line 112
    const-string v4, "turingmm_dual_d"

    iput-object v4, v3, Lcom/kingroot/kinguser/byl;->bUx:Ljava/lang/String;

    .line 113
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxd$a;->ajs()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/kingroot/kinguser/byl;->bUy:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_3
    if-lez v2, :cond_4

    .line 119
    new-instance v1, Lcom/kingroot/kinguser/byl;

    invoke-direct {v1}, Lcom/kingroot/kinguser/byl;-><init>()V

    .line 120
    const-string v3, "turingmm_dual_result"

    iput-object v3, v1, Lcom/kingroot/kinguser/byl;->bUx:Ljava/lang/String;

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingroot/kinguser/byl;->bUy:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_4
    return-object v0
.end method

.method private static cb(Landroid/content/Context;)Lcom/kingroot/kinguser/bxd$a;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 133
    if-nez v3, :cond_0

    .line 134
    new-instance v1, Lcom/kingroot/kinguser/bxd$a;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    move-object v0, v1

    .line 173
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 138
    if-nez v4, :cond_1

    .line 139
    new-instance v1, Lcom/kingroot/kinguser/bxd$a;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x1

    .line 143
    sget-object v5, Lcom/kingroot/kinguser/bxd;->bTd:[Ljava/lang/String;

    array-length v6, v5

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_6

    aget-object v7, v5, v2

    .line 144
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 145
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 147
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v3, "/"

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v4, "/data/data/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    array-length v4, v3

    if-lt v4, v9, :cond_4

    aget-object v4, v3, v10

    .line 159
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 160
    aget-object v1, v3, v10

    .line 169
    :cond_2
    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 170
    invoke-static {p0, v1}, Lcom/kingroot/kinguser/bxd;->R(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    new-instance v1, Lcom/kingroot/kinguser/bxd$a;

    invoke-direct {v1, v0, v2}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 143
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    :cond_4
    const-string v4, "/data/user/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    array-length v2, v3

    const/4 v4, 0x5

    if-lt v2, v4, :cond_2

    aget-object v2, v3, v9

    .line 163
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    aget-object v1, v3, v9

    goto :goto_3

    .line 173
    :cond_5
    new-instance v1, Lcom/kingroot/kinguser/bxd$a;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private static cc(Landroid/content/Context;)Lcom/kingroot/kinguser/bxd$a;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 208
    if-nez v4, :cond_0

    .line 209
    new-instance v0, Lcom/kingroot/kinguser/bxd$a;

    const-string v1, ""

    invoke-direct {v0, v2, v1}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    .line 293
    :goto_0
    return-object v0

    .line 216
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v1, "/proc/self/maps"

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 220
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 221
    if-eq v6, v9, :cond_1

    .line 222
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 224
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_5

    .line 225
    const-string v6, "/data/dalvik-cache/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 226
    const-string v6, ".apk@classes.dex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 228
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 229
    if-eq v6, v9, :cond_1

    .line 230
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "@classes.dex"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 231
    const-string v6, "/data/app/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    const-string v5, "base.apk"

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 235
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 236
    if-eqz v5, :cond_2

    .line 237
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 256
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/kingroot/kinguser/bxt;->c(Ljava/io/Closeable;)V

    .line 257
    invoke-static {v1}, Lcom/kingroot/kinguser/bxt;->c(Ljava/io/Closeable;)V

    .line 261
    :goto_2
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 267
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 268
    if-ne v3, v9, :cond_6

    .line 289
    :cond_3
    :goto_3
    if-eqz v2, :cond_8

    .line 290
    invoke-static {p0, v1}, Lcom/kingroot/kinguser/bxd;->R(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    new-instance v0, Lcom/kingroot/kinguser/bxd$a;

    invoke-direct {v0, v2, v1}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 240
    :cond_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 244
    :cond_5
    const-string v6, "/data/app/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 245
    const-string v6, "/base.odex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 248
    array-length v6, v5

    const/4 v7, 0x7

    if-lt v6, v7, :cond_1

    .line 249
    const/4 v6, 0x3

    aget-object v0, v5, v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 254
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v3, v0

    .line 256
    :goto_4
    invoke-static {v3}, Lcom/kingroot/kinguser/bxt;->c(Ljava/io/Closeable;)V

    .line 257
    invoke-static {v1}, Lcom/kingroot/kinguser/bxt;->c(Ljava/io/Closeable;)V

    goto :goto_2

    .line 256
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_5
    invoke-static {v3}, Lcom/kingroot/kinguser/bxt;->c(Ljava/io/Closeable;)V

    .line 257
    invoke-static {v1}, Lcom/kingroot/kinguser/bxt;->c(Ljava/io/Closeable;)V

    .line 258
    throw v0

    .line 272
    :cond_6
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 277
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 282
    :goto_6
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_7
    move v2, v1

    move-object v1, v0

    .line 284
    goto :goto_3

    :cond_7
    move v1, v2

    .line 282
    goto :goto_7

    .line 293
    :cond_8
    new-instance v0, Lcom/kingroot/kinguser/bxd$a;

    const-string v1, ""

    invoke-direct {v0, v2, v1}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 254
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v5

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_6
.end method

.method private static cd(Landroid/content/Context;)Lcom/kingroot/kinguser/bxd$a;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 299
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    .line 300
    new-instance v0, Lcom/kingroot/kinguser/bxd$a;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    .line 347
    :goto_0
    return-object v0

    .line 302
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    const-string v3, "HUAWEI"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/bxd;->ce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 309
    new-instance v4, Ljava/lang/String;

    const-string v5, "5YiG6Lqr5bqU55So"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 310
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_5

    .line 312
    :try_start_1
    const-string v1, "HuaWei"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 347
    :goto_1
    new-instance v1, Lcom/kingroot/kinguser/bxd$a;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 316
    :cond_1
    const-string v3, "xiaomi"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    invoke-static {}, Lcom/kingroot/kinguser/bxd;->ajq()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 319
    const-string v1, "XiaoMi"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 321
    :cond_2
    const-string v3, "oppo"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 322
    invoke-static {}, Lcom/kingroot/kinguser/bxd;->ajq()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 324
    const-string v1, "OPPO"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 326
    :cond_3
    const-string v3, "vivo"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 328
    invoke-static {}, Lcom/kingroot/kinguser/bxd;->ajq()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 330
    const-string v1, "VIVO_A"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 334
    :cond_4
    :try_start_2
    new-instance v3, Ljava/lang/String;

    const-string v4, "/proc/self/mountinfo"

    invoke-static {v4}, Lcom/kingroot/kinguser/byy;->cy(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_cloned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-eqz v3, :cond_5

    .line 338
    :try_start_3
    const-string v1, "VIVO_B"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 340
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto/16 :goto_1

    .line 314
    :catch_2
    move-exception v0

    move v0, v1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method

.method private static ce(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 363
    :try_start_0
    const-string v0, "android.os.UserManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "USER_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 365
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 366
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 369
    if-nez v0, :cond_0

    const-string v0, ""

    .line 377
    :goto_0
    return-object v0

    .line 371
    :cond_0
    const-string v2, "getUserName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 372
    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 373
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 374
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    const-string v0, ""

    goto :goto_0
.end method

.method private static cf(Landroid/content/Context;)Lcom/kingroot/kinguser/bxd$a;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 384
    new-instance v0, Lcom/kingroot/kinguser/bxd$a;

    const-string v1, ""

    invoke-direct {v0, v2, v1}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    .line 408
    :goto_0
    return-object v0

    .line 390
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 391
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 392
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 393
    invoke-static {}, Lcom/kingroot/kinguser/bxv;->qJ()Ljava/util/List;

    move-result-object v0

    .line 395
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move v1, v2

    :goto_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bxv$a;

    .line 396
    iget-object v6, v0, Lcom/kingroot/kinguser/bxv$a;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v0, v0, Lcom/kingroot/kinguser/bxv$a;->uid:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v4, v0, :cond_3

    .line 397
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 399
    goto :goto_1

    .line 400
    :catch_0
    move-exception v0

    move v1, v2

    .line 403
    :cond_1
    :goto_3
    if-le v1, v7, :cond_2

    .line 405
    new-instance v0, Lcom/kingroot/kinguser/bxd$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/bxd$a;

    const-string v1, ""

    invoke-direct {v0, v2, v1}, Lcom/kingroot/kinguser/bxd$a;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 400
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2
.end method
