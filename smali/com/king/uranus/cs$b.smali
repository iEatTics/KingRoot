.class public Lcom/king/uranus/cs$b;
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
    name = "b"
.end annotation


# instance fields
.field ir:J

.field is:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-wide v0, p0, Lcom/king/uranus/cs$b;->ir:J

    .line 280
    iput-wide v0, p0, Lcom/king/uranus/cs$b;->is:J

    .line 281
    return-void
.end method

.method static fk()Lcom/king/uranus/cs$b;
    .locals 4

    .prologue
    .line 284
    new-instance v0, Lcom/king/uranus/cs$b;

    invoke-direct {v0}, Lcom/king/uranus/cs$b;-><init>()V

    .line 286
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/uptime"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-static {v1}, Lcom/kingroot/kinguser/nk;->n(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 289
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 290
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 291
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 293
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-long v2, v2

    iput-wide v2, v0, Lcom/king/uranus/cs$b;->ir:J

    .line 294
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-long v2, v1

    iput-wide v2, v0, Lcom/king/uranus/cs$b;->is:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/king/uranus/cs$b;)Z
    .locals 4

    .prologue
    .line 304
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/king/uranus/cs$b;->ir:J

    iget-wide v2, p1, Lcom/king/uranus/cs$b;->ir:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/king/uranus/cs$b;->is:J

    iget-wide v2, p1, Lcom/king/uranus/cs$b;->is:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
