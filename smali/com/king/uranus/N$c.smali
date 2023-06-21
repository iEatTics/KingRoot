.class Lcom/king/uranus/N$c;
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
    name = "c"
.end annotation


# instance fields
.field cB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/N$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/uranus/N$c;->cB:Ljava/util/List;

    return-void
.end method

.method static c(Lcom/king/uranus/k;)Lcom/king/uranus/N$c;
    .locals 4

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    .line 192
    :cond_0
    new-instance v1, Lcom/king/uranus/N$c;

    invoke-direct {v1}, Lcom/king/uranus/N$c;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 194
    goto :goto_0

    .line 197
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/king/uranus/N$c;->cB:Ljava/util/List;

    .line 198
    iget-object v0, p0, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/j;

    .line 199
    invoke-static {v0}, Lcom/king/uranus/N$b;->a(Lcom/king/uranus/j;)Lcom/king/uranus/N$b;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_2

    .line 201
    iget-object v3, v1, Lcom/king/uranus/N$c;->cB:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 205
    goto :goto_0
.end method


# virtual methods
.method bm()Lcom/king/uranus/k;
    .locals 4

    .prologue
    .line 209
    new-instance v1, Lcom/king/uranus/k;

    invoke-direct {v1}, Lcom/king/uranus/k;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/king/uranus/N$c;->cB:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    .line 212
    iget-object v0, p0, Lcom/king/uranus/N$c;->cB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/N$b;

    .line 213
    iget-object v3, v1, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    .line 214
    invoke-virtual {v0}, Lcom/king/uranus/N$b;->bl()Lcom/king/uranus/j;

    move-result-object v0

    .line 213
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_0
    return-object v1
.end method
