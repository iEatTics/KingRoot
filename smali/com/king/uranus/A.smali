.class public final Lcom/king/uranus/A;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# static fields
.field static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/i;",
            ">;"
        }
    .end annotation
.end field

.field public bT:I

.field public bU:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/uranus/A;->a:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/king/uranus/A;->bT:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/A;->bU:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 28
    sget-object v0, Lcom/king/uranus/A;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/king/uranus/A;->b:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lcom/king/uranus/i;

    invoke-direct {v0}, Lcom/king/uranus/i;-><init>()V

    .line 31
    sget-object v1, Lcom/king/uranus/A;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    sget-object v0, Lcom/king/uranus/A;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/mq;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/king/uranus/A;->a:Ljava/util/ArrayList;

    .line 34
    iget v0, p0, Lcom/king/uranus/A;->bT:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/A;->bT:I

    .line 35
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/A;->bU:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/king/uranus/A;->a:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Ljava/util/Collection;I)V

    .line 19
    iget v0, p0, Lcom/king/uranus/A;->bT:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 20
    iget-object v0, p0, Lcom/king/uranus/A;->bU:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/king/uranus/A;->bU:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 23
    :cond_0
    return-void
.end method
