.class public Lcom/kingroot/kinguser/ni$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ni$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private xc:Ljava/lang/String;

.field private xd:Ljava/lang/String;

.field private xe:I

.field private xf:Ljava/lang/String;

.field private xg:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/kingroot/kinguser/ni$a;->xc:Ljava/lang/String;

    .line 188
    const-string v0, "0764"

    iput-object v0, p0, Lcom/kingroot/kinguser/ni$a;->xd:Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ni$a;->xe:I

    .line 191
    iput-object p2, p0, Lcom/kingroot/kinguser/ni$a;->xf:Ljava/lang/String;

    .line 192
    iput p3, p0, Lcom/kingroot/kinguser/ni$a;->xg:I

    .line 193
    return-void
.end method

.method private k(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 260
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_1

    .line 265
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, v1, v0

    .line 266
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 267
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm -r "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/kingroot/kinguser/iv;->aD(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 272
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 280
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 282
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 283
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 284
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_2
    if-ltz v2, :cond_4

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rm -r "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    .line 284
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_2

    .line 290
    :cond_4
    return-void
.end method


# virtual methods
.method public bI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/kingroot/kinguser/ni$a;->xd:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public fd()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 207
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/kingroot/kinguser/ni$a;->xc:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/ni$a;->k(Ljava/io/File;)V

    .line 256
    :goto_0
    return v1

    .line 217
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 221
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v3

    .line 222
    if-eqz v3, :cond_1

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rm -r "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    .line 226
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/ni$a;->xc:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    :goto_1
    :try_start_0
    iget v2, p0, Lcom/kingroot/kinguser/ni$a;->xe:I

    if-eqz v2, :cond_5

    .line 233
    iget v2, p0, Lcom/kingroot/kinguser/ni$a;->xg:I

    if-nez v2, :cond_4

    .line 234
    iget v2, p0, Lcom/kingroot/kinguser/ni$a;->xe:I

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/nk;->a(ILjava/io/File;)V

    .line 238
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ni$a;->xd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/iv;->aD(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    :cond_3
    :goto_3
    move v0, v1

    :goto_4
    move v1, v0

    .line 256
    goto :goto_0

    .line 235
    :cond_4
    iget v2, p0, Lcom/kingroot/kinguser/ni$a;->xg:I

    if-ne v1, v2, :cond_2

    .line 236
    iget v2, p0, Lcom/kingroot/kinguser/ni$a;->xe:I

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/nk;->b(ILjava/io/File;)V

    goto :goto_2

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const/4 v0, 0x0

    goto :goto_4

    .line 241
    :cond_5
    iget-object v2, p0, Lcom/kingroot/kinguser/ni$a;->xf:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    iget v2, p0, Lcom/kingroot/kinguser/ni$a;->xg:I

    if-nez v2, :cond_7

    .line 243
    iget-object v2, p0, Lcom/kingroot/kinguser/ni$a;->xf:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/nk;->c(Ljava/lang/String;Ljava/io/File;)V

    .line 247
    :cond_6
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ni$a;->xd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/iv;->aD(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    goto :goto_3

    .line 244
    :cond_7
    iget v2, p0, Lcom/kingroot/kinguser/ni$a;->xg:I

    if-ne v1, v2, :cond_6

    .line 245
    iget-object v2, p0, Lcom/kingroot/kinguser/ni$a;->xf:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/nk;->d(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_8
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/ni$a;->xc:Ljava/lang/String;

    return-object v0
.end method
