.class Lcom/king/uranus/N$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/uranus/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field av:I

.field ax:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput v0, p0, Lcom/king/uranus/N$a;->av:I

    .line 293
    iput v0, p0, Lcom/king/uranus/N$a;->ax:I

    return-void
.end method

.method static a(Lcom/king/uranus/h;)Lcom/king/uranus/N$a;
    .locals 2

    .prologue
    .line 296
    if-nez p0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    .line 300
    :cond_0
    new-instance v0, Lcom/king/uranus/N$a;

    invoke-direct {v0}, Lcom/king/uranus/N$a;-><init>()V

    .line 301
    iget v1, p0, Lcom/king/uranus/h;->av:I

    iput v1, v0, Lcom/king/uranus/N$a;->av:I

    .line 302
    iget v1, p0, Lcom/king/uranus/h;->ax:I

    iput v1, v0, Lcom/king/uranus/N$a;->ax:I

    goto :goto_0
.end method


# virtual methods
.method bk()Lcom/king/uranus/h;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Lcom/king/uranus/h;

    invoke-direct {v0}, Lcom/king/uranus/h;-><init>()V

    .line 309
    iget v1, p0, Lcom/king/uranus/N$a;->av:I

    iput v1, v0, Lcom/king/uranus/h;->av:I

    .line 310
    iget v1, p0, Lcom/king/uranus/N$a;->ax:I

    iput v1, v0, Lcom/king/uranus/h;->ax:I

    .line 311
    return-object v0
.end method
