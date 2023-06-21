.class public Lcom/kingroot/kinguser/aef;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ac(J)V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/kingroot/kinguser/aks;->ac(J)V

    .line 24
    return-void
.end method

.method public static uk()J
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->uk()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ul()J
    .locals 2

    .prologue
    .line 31
    const-wide/32 v0, 0x36ee800

    return-wide v0
.end method
