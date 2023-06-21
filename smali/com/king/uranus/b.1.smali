.class public final Lcom/king/uranus/b;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# static fields
.field static tT:Lcom/king/uranus/F;


# instance fields
.field public c:Lcom/king/uranus/F;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/uranus/b;->c:Lcom/king/uranus/F;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/king/uranus/b;->d:I

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    sget-object v0, Lcom/king/uranus/b;->tT:Lcom/king/uranus/F;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/king/uranus/F;

    invoke-direct {v0}, Lcom/king/uranus/F;-><init>()V

    sput-object v0, Lcom/king/uranus/b;->tT:Lcom/king/uranus/F;

    .line 29
    :cond_0
    sget-object v0, Lcom/king/uranus/b;->tT:Lcom/king/uranus/F;

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/mq;->a(Lcom/king/uranus/cS;IZ)Lcom/king/uranus/cS;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/F;

    iput-object v0, p0, Lcom/king/uranus/b;->c:Lcom/king/uranus/F;

    .line 30
    iget v0, p0, Lcom/king/uranus/b;->d:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/b;->d:I

    .line 31
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/king/uranus/b;->c:Lcom/king/uranus/F;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/king/uranus/b;->c:Lcom/king/uranus/F;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Lcom/king/uranus/cS;I)V

    .line 20
    :cond_0
    iget v0, p0, Lcom/king/uranus/b;->d:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 21
    return-void
.end method
