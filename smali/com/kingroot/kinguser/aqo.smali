.class public Lcom/kingroot/kinguser/aqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kinguser/aqh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aqh;Lcom/kingroot/kinguser/aqh;)I
    .locals 2

    .prologue
    .line 14
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 15
    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 26
    :cond_1
    :goto_0
    return v0

    .line 15
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aqh;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/aqh;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    .line 20
    if-nez v0, :cond_1

    instance-of v1, p1, Lcom/kingroot/kinguser/aql;

    if-eqz v1, :cond_1

    instance-of v1, p2, Lcom/kingroot/kinguser/aql;

    if-eqz v1, :cond_1

    .line 22
    check-cast p2, Lcom/kingroot/kinguser/aql;

    invoke-virtual {p2}, Lcom/kingroot/kinguser/aql;->MN()I

    move-result v0

    check-cast p1, Lcom/kingroot/kinguser/aql;

    .line 23
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aql;->MN()I

    move-result v1

    sub-int/2addr v0, v1

    .line 22
    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/kingroot/kinguser/aqh;

    check-cast p2, Lcom/kingroot/kinguser/aqh;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/aqo;->a(Lcom/kingroot/kinguser/aqh;Lcom/kingroot/kinguser/aqh;)I

    move-result v0

    return v0
.end method
