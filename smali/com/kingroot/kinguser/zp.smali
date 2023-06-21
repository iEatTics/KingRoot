.class public abstract Lcom/kingroot/kinguser/zp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/kingroot/kinguser/zp;->pB()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/kingroot/kinguser/zs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 41
    return-void
.end method

.method public dC(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/kingroot/kinguser/zp;->pB()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/zs;->J(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public dD(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/kingroot/kinguser/zp;->pB()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/zs;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method protected abstract pB()Ljava/lang/String;
.end method
