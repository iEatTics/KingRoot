.class Lcom/king/uranus/N$b;
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
    name = "b"
.end annotation


# instance fields
.field aH:I

.field aI:I

.field aJ:I

.field action:I

.field ax:I

.field cA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/N$a;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/N$b;->f:Ljava/lang/String;

    .line 230
    iput v1, p0, Lcom/king/uranus/N$b;->action:I

    .line 231
    iput v1, p0, Lcom/king/uranus/N$b;->ax:I

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/uranus/N$b;->cA:Ljava/util/List;

    .line 233
    iput v1, p0, Lcom/king/uranus/N$b;->aH:I

    .line 234
    iput v1, p0, Lcom/king/uranus/N$b;->aI:I

    .line 235
    iput v1, p0, Lcom/king/uranus/N$b;->aJ:I

    return-void
.end method

.method static a(Lcom/king/uranus/j;)Lcom/king/uranus/N$b;
    .locals 4

    .prologue
    .line 238
    if-nez p0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 263
    :goto_0
    return-object v0

    .line 242
    :cond_0
    new-instance v1, Lcom/king/uranus/N$b;

    invoke-direct {v1}, Lcom/king/uranus/N$b;-><init>()V

    .line 243
    iget-object v0, p0, Lcom/king/uranus/j;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/king/uranus/N$b;->f:Ljava/lang/String;

    .line 244
    iget v0, p0, Lcom/king/uranus/j;->action:I

    iput v0, v1, Lcom/king/uranus/N$b;->action:I

    .line 245
    iget v0, p0, Lcom/king/uranus/j;->ax:I

    iput v0, v1, Lcom/king/uranus/N$b;->ax:I

    .line 246
    iget v0, p0, Lcom/king/uranus/j;->aH:I

    iput v0, v1, Lcom/king/uranus/N$b;->aH:I

    .line 247
    iget v0, p0, Lcom/king/uranus/j;->aI:I

    iput v0, v1, Lcom/king/uranus/N$b;->aI:I

    .line 248
    iget v0, p0, Lcom/king/uranus/j;->aJ:I

    iput v0, v1, Lcom/king/uranus/N$b;->aJ:I

    .line 250
    iget-object v0, p0, Lcom/king/uranus/j;->aG:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 251
    goto :goto_0

    .line 254
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/king/uranus/N$b;->cA:Ljava/util/List;

    .line 255
    iget-object v0, p0, Lcom/king/uranus/j;->aG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/h;

    .line 257
    invoke-static {v0}, Lcom/king/uranus/N$a;->a(Lcom/king/uranus/h;)Lcom/king/uranus/N$a;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_2

    .line 259
    iget-object v3, v1, Lcom/king/uranus/N$b;->cA:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 263
    goto :goto_0
.end method


# virtual methods
.method bl()Lcom/king/uranus/j;
    .locals 4

    .prologue
    .line 267
    new-instance v1, Lcom/king/uranus/j;

    invoke-direct {v1}, Lcom/king/uranus/j;-><init>()V

    .line 268
    iget-object v0, p0, Lcom/king/uranus/N$b;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/king/uranus/j;->f:Ljava/lang/String;

    .line 269
    iget v0, p0, Lcom/king/uranus/N$b;->action:I

    iput v0, v1, Lcom/king/uranus/j;->action:I

    .line 270
    iget v0, p0, Lcom/king/uranus/N$b;->ax:I

    iput v0, v1, Lcom/king/uranus/j;->ax:I

    .line 271
    iget v0, p0, Lcom/king/uranus/N$b;->aH:I

    iput v0, v1, Lcom/king/uranus/j;->aH:I

    .line 272
    iget v0, p0, Lcom/king/uranus/N$b;->aI:I

    iput v0, v1, Lcom/king/uranus/j;->aI:I

    .line 273
    iget v0, p0, Lcom/king/uranus/N$b;->aJ:I

    iput v0, v1, Lcom/king/uranus/j;->aJ:I

    .line 274
    iget-object v0, p0, Lcom/king/uranus/N$b;->cA:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/king/uranus/j;->aG:Ljava/util/ArrayList;

    .line 276
    iget-object v0, p0, Lcom/king/uranus/N$b;->cA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/N$a;

    .line 277
    iget-object v3, v1, Lcom/king/uranus/j;->aG:Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v0}, Lcom/king/uranus/N$a;->bk()Lcom/king/uranus/h;

    move-result-object v0

    .line 277
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_0
    return-object v1
.end method
