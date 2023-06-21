.class public Lcom/kingroot/kinguser/avv;
.super Lcom/kingroot/kinguser/ael;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/avv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/kingroot/kinguser/avv$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avv$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/avv;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ael;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/avv$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/avv;-><init>()V

    return-void
.end method

.method public static Sj()Lcom/kingroot/kinguser/avv;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/kingroot/kinguser/avv;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/avv;

    return-object v0
.end method

.method private Sk()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    const v1, 0x9d9f

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const v1, 0x9db4

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->CX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const v1, 0x9d3b

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    const v1, 0x9d68

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const v1, 0x9d71

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const v1, 0x9d6b

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    const v1, 0x9d79

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const v1, 0x9d78

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const v1, 0x9dac

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    const v1, 0x9dae

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    const v1, 0x9dc2

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const v1, 0x9d66

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    const v1, 0x9df4

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const v1, 0x9e2b

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const v1, 0x9e54

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const v1, 0x9e80

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const v1, 0x9e87

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/avv;->hk(I)Lcom/kingroot/kinguser/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/avv;Lcom/kingroot/kinguser/g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avv;->a(Lcom/kingroot/kinguser/g;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/g;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/g;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/network/download/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/kingroot/kinguser/g;->ef:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p1, Lcom/kingroot/kinguser/g;->ef:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/h;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    new-instance v3, Lcom/kingroot/common/network/download/UpdateInfo;

    invoke-direct {v3}, Lcom/kingroot/common/network/download/UpdateInfo;-><init>()V

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/kingroot/kinguser/h;->Y()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".new"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/common/network/download/UpdateInfo;->fileName:Ljava/lang/String;

    .line 250
    iget-object v4, v3, Lcom/kingroot/common/network/download/UpdateInfo;->fileName:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/common/network/download/UpdateInfo;->localName:Ljava/lang/String;

    .line 251
    iget v4, v0, Lcom/kingroot/kinguser/h;->timestamp:I

    iput v4, v3, Lcom/kingroot/common/network/download/UpdateInfo;->timestamp:I

    .line 252
    iget-object v4, v0, Lcom/kingroot/kinguser/h;->url:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    .line 253
    iget-object v4, v0, Lcom/kingroot/kinguser/h;->dX:[B

    if-nez v4, :cond_1

    .line 254
    const/4 v4, 0x0

    new-array v4, v4, [B

    iput-object v4, v0, Lcom/kingroot/kinguser/h;->dX:[B

    .line 256
    :cond_1
    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/kingroot/kinguser/h;->dX:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Lcom/kingroot/common/network/download/UpdateInfo;->checksum:Ljava/lang/String;

    .line 257
    iget v0, v0, Lcom/kingroot/kinguser/h;->fileSize:I

    iput v0, v3, Lcom/kingroot/common/network/download/UpdateInfo;->size:I

    .line 260
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_2
    return-object v1
.end method

.method private e(Lcom/kingroot/kinguser/vf;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/kingroot/kinguser/vf;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 303
    :cond_1
    :goto_0
    return v0

    .line 278
    :cond_2
    iget-object v2, p1, Lcom/kingroot/kinguser/vf;->KW:Ljava/lang/String;

    .line 279
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingroot/kinguser/avv;->uu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/kingroot/kinguser/vf;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-static {v4}, Lcom/kingroot/kinguser/aen;->y(Ljava/io/File;)Lcom/kingroot/kinguser/aen;

    move-result-object v3

    .line 287
    if-nez v3, :cond_4

    .line 288
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    move v0, v1

    .line 291
    goto :goto_0

    .line 293
    :cond_4
    invoke-virtual {v3}, Lcom/kingroot/kinguser/aen;->uB()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 296
    iget-wide v8, p1, Lcom/kingroot/kinguser/vf;->mSize:J

    .line 298
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    cmp-long v2, v6, v8

    if-eqz v2, :cond_1

    .line 302
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move v0, v1

    .line 303
    goto :goto_0
.end method

.method private hk(I)Lcom/kingroot/kinguser/f;
    .locals 5

    .prologue
    .line 204
    new-instance v0, Lcom/kingroot/kinguser/f;

    invoke-direct {v0}, Lcom/kingroot/kinguser/f;-><init>()V

    .line 205
    iput p1, v0, Lcom/kingroot/kinguser/f;->fileId:I

    .line 206
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/f;->dX:[B

    .line 207
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/f;->timestamp:I

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingroot/kinguser/avv;->uu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    :try_start_0
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/rs;->e(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-static {v2}, Lcom/kingroot/kinguser/aen;->y(Ljava/io/File;)Lcom/kingroot/kinguser/aen;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_1

    .line 224
    iget-object v2, v1, Lcom/kingroot/kinguser/aen;->afn:[B

    iput-object v2, v0, Lcom/kingroot/kinguser/f;->dX:[B

    .line 225
    iget v2, v1, Lcom/kingroot/kinguser/aen;->afm:I

    iput v2, v0, Lcom/kingroot/kinguser/f;->timestamp:I

    .line 226
    iget v1, v1, Lcom/kingroot/kinguser/aen;->mVersion:I

    iput v1, v0, Lcom/kingroot/kinguser/f;->version:I

    .line 230
    :cond_1
    return-object v0

    .line 216
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private jB(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    :goto_0
    return v0

    .line 318
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingroot/kinguser/avv;->uu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    const-string v1, ".dat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 322
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingroot/kinguser/avv;->uu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".dat"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 328
    :cond_1
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    const/4 v0, 0x1

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private t(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/f;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/network/download/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-static {}, Lcom/kingroot/kinguser/cbo;->akB()Lcom/kingroot/kinguser/cbo;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/avv$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/kingroot/kinguser/avv$2;-><init>(Lcom/kingroot/kinguser/avv;Ljava/util/List;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Lcom/kingroot/kinguser/cbo;->a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/cbn;)V

    .line 155
    monitor-enter v1

    .line 157
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 159
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected c(Lcom/kingroot/kinguser/vf;)V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avv;->e(Lcom/kingroot/kinguser/vf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p1, Lcom/kingroot/kinguser/vf;->mName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avv;->jB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/vf;->mName:Ljava/lang/String;

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 102
    :try_start_0
    iget-object v1, p1, Lcom/kingroot/kinguser/vf;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/avv;->cN(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected d(Lcom/kingroot/kinguser/vf;)V
    .locals 0

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 116
    :cond_0
    return-void
.end method

.method public di(Z)V
    .locals 0

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-super {p0}, Lcom/kingroot/kinguser/ael;->uv()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avv;->uv()V

    goto :goto_0
.end method

.method public uv()V
    .locals 6

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cz()J

    move-result-wide v0

    .line 64
    const-wide/32 v4, 0x5265c00

    .line 65
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ael;->uv()V

    goto :goto_0
.end method

.method protected uw()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/network/download/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/kingroot/kinguser/avv;->Sk()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avv;->t(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
