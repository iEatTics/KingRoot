.class public abstract Lcom/kingroot/kinguser/abw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/abw$a;
    }
.end annotation


# instance fields
.field private ZY:Lcom/kingroot/kinguser/abw;

.field protected ZZ:Lcom/kingroot/kinguser/abw$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/kingroot/kinguser/abw;->ZY:Lcom/kingroot/kinguser/abw;

    .line 13
    iput-object v0, p0, Lcom/kingroot/kinguser/abw;->ZZ:Lcom/kingroot/kinguser/abw$a;

    .line 16
    new-instance v0, Lcom/kingroot/kinguser/abw$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/abw$a;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/abw;->ZZ:Lcom/kingroot/kinguser/abw$a;

    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/abw;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/abw;->rB()Lcom/kingroot/kinguser/aci$a;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/abw$a;->aab:Lcom/kingroot/kinguser/aci$a;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/abz;)Lcom/kingroot/kinguser/abm;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/abw;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/abw;->rB()Lcom/kingroot/kinguser/aci$a;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/abw$a;->aab:Lcom/kingroot/kinguser/aci$a;

    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abw;->rB()Lcom/kingroot/kinguser/aci$a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kingroot/kinguser/abz;->a(Lcom/kingroot/kinguser/aci$a;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/abw;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/abw;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/abw;->rA()Lcom/kingroot/kinguser/abm;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 49
    :cond_1
    if-eqz p1, :cond_2

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/abw;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-interface {p1, v0}, Lcom/kingroot/kinguser/abz;->a(Lcom/kingroot/kinguser/abw$a;)V

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/abw;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/abw;->ZY:Lcom/kingroot/kinguser/abw;

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/abw;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/abw;->ZY:Lcom/kingroot/kinguser/abw;

    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/abw;->a(Lcom/kingroot/kinguser/abz;)Lcom/kingroot/kinguser/abm;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/abw;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    return-object v0
.end method

.method public a(Lcom/kingroot/kinguser/abw;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/abw;->ZY:Lcom/kingroot/kinguser/abw;

    .line 29
    return-void
.end method

.method protected abstract rA()Lcom/kingroot/kinguser/abm;
.end method

.method protected abstract rB()Lcom/kingroot/kinguser/aci$a;
.end method

.method public rr()Lcom/kingroot/kinguser/abm;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abw;->a(Lcom/kingroot/kinguser/abz;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    return-object v0
.end method
