.class public Lcom/kingroot/kinguser/kj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/jr;


# instance fields
.field private tU:Ljava/lang/String;

.field private tV:I

.field private tW:I

.field private tX:Lcom/kingroot/kinguser/kq;

.field private ts:I


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/kq;Ljava/lang/String;III)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/kingroot/kinguser/kj;->tV:I

    .line 14
    iput v0, p0, Lcom/kingroot/kinguser/kj;->tW:I

    .line 21
    iput-object p1, p0, Lcom/kingroot/kinguser/kj;->tX:Lcom/kingroot/kinguser/kq;

    .line 22
    iput-object p2, p0, Lcom/kingroot/kinguser/kj;->tU:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/kingroot/kinguser/kj;->ts:I

    .line 24
    iput p4, p0, Lcom/kingroot/kinguser/kj;->tV:I

    .line 25
    iput p5, p0, Lcom/kingroot/kinguser/kj;->tW:I

    .line 26
    return-void
.end method


# virtual methods
.method public cG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/kj;->tU:Ljava/lang/String;

    return-object v0
.end method

.method public cH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/kj;->tX:Lcom/kingroot/kinguser/kq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/kq;->df()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cI()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/kingroot/kinguser/kj;->tV:I

    return v0
.end method

.method public cJ()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/kingroot/kinguser/kj;->tW:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/kj;->ts:I

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/kj;->tX:Lcom/kingroot/kinguser/kq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/kq;->de()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/kj;->tX:Lcom/kingroot/kinguser/kq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/kq;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
