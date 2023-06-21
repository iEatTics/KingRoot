.class public Lcom/kingroot/kinguser/im;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/il;


# instance fields
.field qL:Lcom/kingroot/kinguser/ib;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ib;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/kingroot/kinguser/im;->qL:Lcom/kingroot/kinguser/ib;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/king/uranus/cS;)I
    .locals 3

    .prologue
    .line 27
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/king/uranus/s;

    if-nez v0, :cond_1

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 35
    :goto_0
    return v0

    .line 31
    :cond_1
    check-cast p1, Lcom/king/uranus/s;

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/im;->qL:Lcom/kingroot/kinguser/ib;

    iget v1, p1, Lcom/king/uranus/s;->bm:I

    iget-object v2, p1, Lcom/king/uranus/s;->bo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/ib;->e(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
