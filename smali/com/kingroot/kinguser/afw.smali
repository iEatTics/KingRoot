.class public Lcom/kingroot/kinguser/afw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(I[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 96
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p1, v1}, Lcom/kingroot/kinguser/aea;->d(ILjava/util/List;)V

    .line 99
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 78
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 82
    if-ne p3, v2, :cond_2

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/afw;->c(I[Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 85
    new-instance v1, Lcom/kingroot/kinguser/sx;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/kingroot/kinguser/sx;-><init>(IJ[Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/kingroot/kinguser/sy;->jv()Lcom/kingroot/kinguser/su;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/su;->a(Lcom/kingroot/kinguser/sx;)V

    goto :goto_0
.end method
