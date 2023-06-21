.class public Lcom/kingroot/kinguser/zm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zm$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/zm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private WF:Ljava/lang/String;

.field private WG:Ljava/lang/String;

.field private WH:I

.field private WI:Ljava/lang/String;

.field private WJ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/kingroot/kinguser/zm$a;->WF:Ljava/lang/String;

    .line 233
    const-string v0, "0764"

    iput-object v0, p0, Lcom/kingroot/kinguser/zm$a;->WG:Ljava/lang/String;

    .line 235
    iput p2, p0, Lcom/kingroot/kinguser/zm$a;->WH:I

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/zm$a;->WI:Ljava/lang/String;

    .line 238
    iput p3, p0, Lcom/kingroot/kinguser/zm$a;->WJ:I

    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/kingroot/kinguser/zm$a;->WF:Ljava/lang/String;

    .line 248
    const-string v0, "0764"

    iput-object v0, p0, Lcom/kingroot/kinguser/zm$a;->WG:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/zm$a;->WH:I

    .line 251
    iput-object p2, p0, Lcom/kingroot/kinguser/zm$a;->WI:Ljava/lang/String;

    .line 252
    iput p3, p0, Lcom/kingroot/kinguser/zm$a;->WJ:I

    .line 253
    return-void
.end method

.method private v(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_1

    .line 338
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 339
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 340
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rm -r "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 345
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 353
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 355
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    .line 356
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rm -r "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 357
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 363
    :cond_4
    return-void
.end method


# virtual methods
.method public dy(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/kingroot/kinguser/zm$a;->WG:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/zm$a;->WF:Ljava/lang/String;

    return-object v0
.end method

.method public px()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 267
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/zm$a;->WF:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/zm$a;->v(Ljava/io/File;)V

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 280
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    .line 281
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    .line 282
    if-eqz v3, :cond_2

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rm -rf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 286
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/zm$a;->WF:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    :cond_3
    :try_start_0
    iget v2, p0, Lcom/kingroot/kinguser/zm$a;->WH:I

    if-eqz v2, :cond_6

    .line 293
    iget v2, p0, Lcom/kingroot/kinguser/zm$a;->WJ:I

    if-nez v2, :cond_5

    .line 294
    iget v2, p0, Lcom/kingroot/kinguser/zm$a;->WH:I

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/rs;->c(ILjava/io/File;)V

    .line 298
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/zm$a;->WG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 324
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :cond_5
    :try_start_1
    iget v2, p0, Lcom/kingroot/kinguser/zm$a;->WJ:I

    if-ne v0, v2, :cond_4

    .line 296
    iget v2, p0, Lcom/kingroot/kinguser/zm$a;->WH:I

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/rs;->d(ILjava/io/File;)V

    goto :goto_1

    .line 301
    :cond_6
    iget-object v2, p0, Lcom/kingroot/kinguser/zm$a;->WI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    iget v2, p0, Lcom/kingroot/kinguser/zm$a;->WJ:I

    if-nez v2, :cond_8

    .line 303
    iget-object v2, p0, Lcom/kingroot/kinguser/zm$a;->WI:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/rs;->e(Ljava/lang/String;Ljava/io/File;)V

    .line 316
    :cond_7
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/zm$a;->WG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    goto/16 :goto_0

    .line 304
    :cond_8
    iget v2, p0, Lcom/kingroot/kinguser/zm$a;->WJ:I

    if-ne v0, v2, :cond_9

    .line 305
    iget-object v2, p0, Lcom/kingroot/kinguser/zm$a;->WI:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/rs;->f(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2

    .line 306
    :cond_9
    const/4 v2, 0x2

    iget v3, p0, Lcom/kingroot/kinguser/zm$a;->WJ:I

    if-ne v2, v3, :cond_7

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    iget-object v3, p0, Lcom/kingroot/kinguser/zm$a;->WI:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/kingroot/kinguser/rs;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {v2, v1}, Lcom/kingroot/kinguser/rs;->g(Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
