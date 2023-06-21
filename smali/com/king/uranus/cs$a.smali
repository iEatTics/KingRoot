.class public Lcom/king/uranus/cs$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/uranus/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field im:J

.field in:J

.field io:J

.field ip:J

.field iq:J

.field name:Ljava/lang/String;

.field pid:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/king/uranus/cs$a;->pid:I

    .line 334
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/cs$a;->name:Ljava/lang/String;

    .line 335
    iput-wide v2, p0, Lcom/king/uranus/cs$a;->im:J

    .line 336
    iput-wide v2, p0, Lcom/king/uranus/cs$a;->in:J

    .line 337
    iput-wide v2, p0, Lcom/king/uranus/cs$a;->io:J

    .line 338
    iput-wide v2, p0, Lcom/king/uranus/cs$a;->ip:J

    .line 339
    iput-wide v2, p0, Lcom/king/uranus/cs$a;->iq:J

    .line 340
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/io/File;)Lcom/king/uranus/cs$a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 366
    :goto_0
    return-object v0

    .line 346
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/nk;->n(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 348
    goto :goto_0

    .line 350
    :cond_3
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 351
    array-length v0, v2

    const/16 v3, 0x28

    if-le v0, v3, :cond_4

    .line 353
    :try_start_0
    new-instance v0, Lcom/king/uranus/cs$a;

    invoke-direct {v0}, Lcom/king/uranus/cs$a;-><init>()V

    .line 354
    iput-object p0, v0, Lcom/king/uranus/cs$a;->name:Ljava/lang/String;

    .line 355
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/king/uranus/cs$a;->pid:I

    .line 356
    const/16 v3, 0x15

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/king/uranus/cs$a;->im:J

    .line 357
    const/16 v3, 0xd

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/king/uranus/cs$a;->in:J

    .line 358
    const/16 v3, 0xe

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/king/uranus/cs$a;->io:J

    .line 359
    const/16 v3, 0xf

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/king/uranus/cs$a;->ip:J

    .line 360
    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/king/uranus/cs$a;->iq:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    :cond_4
    move-object v0, v1

    .line 366
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/king/uranus/cs$a;)Z
    .locals 4

    .prologue
    .line 374
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/king/uranus/cs$a;->pid:I

    iget v1, p1, Lcom/king/uranus/cs$a;->pid:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/king/uranus/cs$a;->im:J

    iget-wide v2, p1, Lcom/king/uranus/cs$a;->im:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/king/uranus/cs$a;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/king/uranus/cs$a;->name:Ljava/lang/String;

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/king/uranus/cs$a;)Z
    .locals 4

    .prologue
    .line 384
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/king/uranus/cs$a;->in:J

    iget-wide v2, p1, Lcom/king/uranus/cs$a;->in:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/king/uranus/cs$a;->io:J

    iget-wide v2, p1, Lcom/king/uranus/cs$a;->io:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/king/uranus/cs$a;->ip:J

    iget-wide v2, p1, Lcom/king/uranus/cs$a;->ip:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/king/uranus/cs$a;->iq:J

    iget-wide v2, p1, Lcom/king/uranus/cs$a;->iq:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
