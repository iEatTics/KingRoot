.class public final Lcom/king/uranus/C;
.super Lcom/king/uranus/cS;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public bk:Ljava/lang/String;

.field public cc:I

.field public cd:I

.field public ce:Ljava/lang/String;

.field public cf:Ljava/lang/String;

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcom/king/uranus/C;->cc:I

    .line 16
    iput v1, p0, Lcom/king/uranus/C;->cd:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/C;->bk:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/C;->ce:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/C;->cf:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/king/uranus/C;->p:I

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    iget v0, p0, Lcom/king/uranus/C;->cc:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/C;->cc:I

    .line 57
    iget v0, p0, Lcom/king/uranus/C;->cd:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/C;->cd:I

    .line 58
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/C;->bk:Ljava/lang/String;

    .line 59
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/C;->ce:Ljava/lang/String;

    .line 60
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/C;->cf:Ljava/lang/String;

    .line 61
    iget v0, p0, Lcom/king/uranus/C;->p:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/C;->p:I

    .line 62
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/king/uranus/C;->cc:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 39
    iget v0, p0, Lcom/king/uranus/C;->cd:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 40
    iget-object v0, p0, Lcom/king/uranus/C;->bk:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/king/uranus/C;->bk:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/king/uranus/C;->ce:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/king/uranus/C;->ce:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/king/uranus/C;->cf:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/king/uranus/C;->cf:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 49
    :cond_2
    iget v0, p0, Lcom/king/uranus/C;->p:I

    if-eqz v0, :cond_3

    .line 50
    iget v0, p0, Lcom/king/uranus/C;->p:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 52
    :cond_3
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/kingroot/kinguser/mp;

    invoke-direct {v0, p1, p2}, Lcom/kingroot/kinguser/mp;-><init>(Ljava/lang/StringBuilder;I)V

    .line 28
    iget v1, p0, Lcom/king/uranus/C;->cc:I

    const-string v2, "phonetype"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/mp;->i(ILjava/lang/String;)Lcom/kingroot/kinguser/mp;

    .line 29
    iget v1, p0, Lcom/king/uranus/C;->cd:I

    const-string v2, "authType"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/mp;->i(ILjava/lang/String;)Lcom/kingroot/kinguser/mp;

    .line 30
    iget-object v1, p0, Lcom/king/uranus/C;->bk:Ljava/lang/String;

    const-string v2, "guid"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/mp;->q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/mp;

    .line 31
    iget-object v1, p0, Lcom/king/uranus/C;->ce:Ljava/lang/String;

    const-string v2, "ext1"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/mp;->q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/mp;

    .line 32
    iget-object v1, p0, Lcom/king/uranus/C;->cf:Ljava/lang/String;

    const-string v2, "sessionId"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/mp;->q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/mp;

    .line 33
    iget v1, p0, Lcom/king/uranus/C;->p:I

    const-string v2, "buildno"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/mp;->i(ILjava/lang/String;)Lcom/kingroot/kinguser/mp;

    .line 34
    return-void
.end method
